# ✅ Full Kode app.py dengan Evaluasi Dinamis (Query Token-Based) dan Penyatuan Kolom sumber/source/unit

import streamlit as st
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import mysql.connector
from io import BytesIO
import time
from sklearn.feature_extraction.text import ENGLISH_STOP_WORDS

from modules.db_loader import load_data_from_mysql
from modules.multimodal_extractor import extract_text_from_image, extract_text_from_audio
from modules.prompt_engineering import optimized_prompt
from modules.ir_engine import IREngine
from modules.evaluator import save_query_log

# Sidebar Form Input Data Harga Susu Manual
st.sidebar.header("🆕 Tambah Data Harga Susu Manual")
new_zone = st.sidebar.text_input("Zona")
new_price = st.sidebar.number_input("Harga (Rp)", min_value=0, step=100)
new_source = st.sidebar.text_input("Sumber Berita")
new_description = st.sidebar.text_area("Deskripsi")
new_unit = st.sidebar.selectbox("Satuan", ["liter", "kg"])

if st.sidebar.button("➕ Simpan Data Manual"):
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="efarm"
        )
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO milk_reference (wilayah, harga, sumber, description, unit)
            VALUES (%s, %s, %s, %s, %s)
        """, (new_zone, new_price, new_source, new_description, new_unit))
        conn.commit()
        cursor.close()
        conn.close()
        st.sidebar.success("✅ Data harga susu berhasil disimpan.")
    except Exception as e:
        st.sidebar.warning(f"⚠️ Gagal menyimpan data susu: {e}")

# Sidebar Upload CSV
st.sidebar.subheader("📤 Upload CSV Harga Susu")
csv_file = st.sidebar.file_uploader("Unggah file CSV", type=["csv"])
if csv_file is not None:
    try:
        df_csv = pd.read_csv(csv_file)
        required_columns = {"zona", "harga", "sumber", "deskripsi", "unit"}
        if not required_columns.issubset(df_csv.columns):
            missing = required_columns - set(df_csv.columns)
            st.sidebar.error(f"❌ Kolom hilang di CSV: {', '.join(missing)}")
        else:
            conn = mysql.connector.connect(
                host="localhost",
                user="root",
                password="",
                database="efarm"
            )
            cursor = conn.cursor()
            for _, row in df_csv.iterrows():
                cursor.execute("""
                    INSERT INTO milk_reference (wilayah, harga, sumber, description, unit)
                    VALUES (%s, %s, %s, %s, %s)
                """, (row["zona"], row["harga"], row["sumber"], row["deskripsi"], row["unit"]))
            conn.commit()
            cursor.close()
            conn.close()
            st.sidebar.success("✅ CSV berhasil diimpor.")
    except Exception as e:
        st.sidebar.error(f"❌ Gagal memproses CSV: {e}")

# Sisanya tidak diubah, lanjut ke data loading, IR, dan visualisasi seperti sebelumnya

# =======================
# 1. JUDUL APLIKASI
# =======================
st.title("🧐 IR Harga Susu eFarm")

# =======================
# 2. FITUR INPUT MANUAL: GAMBAR / SUARA
# =======================
st.subheader("📥 Input Manual: Gambar atau Suara")

upload_type = st.radio("Jenis Input:", ["Gambar", "Suara"])
uploaded_file = st.file_uploader("Unggah file", type=["jpg", "jpeg", "png", "wav", "mp3", "m4a"])

if uploaded_file:
    bytes_data = uploaded_file.read()
    
    if upload_type == "Gambar":
        st.image(bytes_data, caption="Gambar Diunggah", use_container_width=True)
        try:
            # OCR langsung dari file upload
            text_ocr = extract_text_from_image(BytesIO(bytes_data))
            st.success("🧾 Hasil OCR dari Gambar:")
            st.write(text_ocr)
        except Exception as e:
            st.error(f"Gagal ekstrak teks dari gambar: {e}")

    elif upload_type == "Suara":
        st.audio(bytes_data, format="audio/wav")
        try:
            # STT langsung dari file upload
            text_stt = extract_text_from_audio(BytesIO(bytes_data))
            st.success("🗣️ Hasil Transkrip dari Suara:")
            st.write(text_stt)
        except Exception as e:
            st.error(f"Gagal transkripsi suara: {e}")

# =======================
# 3. LOAD DATA
# =======================
df = load_data_from_mysql()
df["description"] = df["description"].fillna("")
df["ocr_text"] = df["ocr_text"].fillna("")
df["transcript_text"] = df["transcript_text"].fillna("")

for idx, row in df.iterrows():
    if pd.isna(row["ocr_text"]) and row["image_url"]:
        df.at[idx, "ocr_text"] = extract_text_from_image(row["image_url"])
    if pd.isna(row["transcript_text"]) and row["voice_url"]:
        df.at[idx, "transcript_text"] = extract_text_from_audio(row["voice_url"])

df["combined"] = df["description"] + " " + df["ocr_text"] + " " + df["transcript_text"]

if df["combined"].str.strip().eq("").all():
    st.error("❌ Semua kolom deskripsi kosong. Harap masukkan data terlebih dahulu.")
    st.stop()

# =======================
# 4. PILIH MODEL IR
# =======================
model_choice = st.selectbox("📌 Pilih Model IR:", ["TF-IDF + TinyBERT", "TF-IDF Only", "TinyBERT Only"])
ir = IREngine(model=model_choice)

# =======================
# 5. FORM INPUT QUERY
# =======================
raw_query = st.text_input("Tanya harga susu atau zona:", "Harga susu di Jawa Tengah?")
query = optimized_prompt(raw_query)


if raw_query:
# Update dulu sebelum scoring!
    df["combined"] = df["description"] + " " + df["ocr_text"] + " " + df["transcript_text"] + " zona: " + df["zone"]

    start_time = time.time()


    tfidf_sim, bert_sim = ir.compute_raw_scores(query, df["combined"])
    alpha = st.sidebar.slider("⚖️ Bobot TF-IDF", 0.0, 1.0, 0.1)
    threshold = st.sidebar.slider("Ambang Batas Relevansi", 0.0, 1.0, 0.8)

    fusion_score = (
        alpha * tfidf_sim + (1 - alpha) * bert_sim if model_choice == "TF-IDF + TinyBERT"
        else tfidf_sim if model_choice == "TF-IDF Only"
        else bert_sim
    )

    elapsed_time = time.time() - start_time

    df["score"] = fusion_score
    df_top = df.sort_values(by="score", ascending=False).head(5)

    # ✅ Simpan query asli ke log
    save_query_log(
        query=raw_query,
        results=df_top["id"].tolist(),
        tfidf_scores=tfidf_sim[df_top.index].tolist(),
        bert_scores=bert_sim[df_top.index].tolist(),
        fusion_scores=fusion_score[df_top.index].tolist()
    )

    # Evaluasi otomatis
    try:
        df["predicted"] = 0
        df.loc[df_top.index, "predicted"] = 1

        tokens = [word for word in raw_query.lower().split() if word not in ENGLISH_STOP_WORDS]

        if model_choice == "TF-IDF Only":
            relevant_flags = pd.Series(tfidf_sim >= 0.3, index=df.index)
        elif model_choice == "TinyBERT Only":
            relevant_flags = pd.Series(bert_sim >= 0.5, index=df.index)
        else:  # Fusion
            relevant_flags = pd.Series(fusion_score >= 0.8, index=df.index)

        tp = ((df["predicted"] == 1) & (relevant_flags == True)).sum()
        fp = ((df["predicted"] == 1) & (relevant_flags == False)).sum()
        fn = ((df["predicted"] == 0) & (relevant_flags == True)).sum()
        tn = ((df["predicted"] == 0) & (relevant_flags == False)).sum()

        precision = tp / (tp + fp) if (tp + fp) > 0 else 0.0
        recall = tp / (tp + fn) if (tp + fn) > 0 else 0.0
        f1 = 2 * precision * recall / (precision + recall) if (precision + recall) > 0 else 0.0
        accuracy = (tp + tn) / len(df) if len(df) > 0 else 0.0

        conn = mysql.connector.connect(
                host="localhost",
                user="root",
                password="",
                database="efarm"
        )
        cursor = conn.cursor()
        # ✅ Simpan juga pakai raw_query agar model dibandingkan konsisten
        cursor.execute("""
            INSERT INTO ir_evaluations (model, query, prec, recall, f1_score, accuracy, waktu)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """, (model_choice, raw_query, precision, recall, f1, accuracy, elapsed_time))
        conn.commit()
        cursor.close()
        conn.close()
    except Exception as e:
        st.warning(f"⚠️ Gagal simpan evaluasi otomatis: {e}")

    st.subheader("🔍 Hasil IR:")
    for _, row in df_top.iterrows():
        st.markdown(f"""
        **Zona:** {row['zone']}  
        **Harga:** Rp{row['price']:,} {row['unit']}  
        **Sumber:** {row['source']}  
        **Skor IR:** {row['score']:.3f}  
        **Konten:** {row['combined'][:200]}...
        """)

# =======================
# 6. GRAFIK EVALUASI
# =======================
try:
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="efarm"
    )
    cursor = conn.cursor()
    cursor.execute("""
        SELECT model, prec, recall, f1_score, accuracy, waktu, timestamp
        FROM ir_evaluations
        ORDER BY timestamp
    """)
    data = cursor.fetchall()
    df_eval = pd.DataFrame(data, columns=["Model", "Precision", "Recall", "F1", "Accuracy", "Waktu", "Timestamp"])
    df_eval["Timestamp"] = pd.to_datetime(df_eval["Timestamp"])
    cursor.close()
    conn.close()

    st.subheader("📊 Grafik Evaluasi IR")
    for model_name in df_eval["Model"].unique():
        subset = df_eval[df_eval["Model"] == model_name]
        st.markdown(f"### 🔎 Model: {model_name}")
        fig, ax = plt.subplots(figsize=(10, 4))
        x = range(len(subset))
        width = 0.2

        ax.bar([i - 1.5*width for i in x], subset["Precision"], width=width, label="Precision")
        ax.bar([i - 0.5*width for i in x], subset["Recall"], width=width, label="Recall")
        ax.bar([i + 0.5*width for i in x], subset["F1"], width=width, label="F1")
        ax.bar([i + 1.5*width for i in x], subset["Accuracy"], width=width, label="Accuracy")

        ax.set_xticks(x)
        ax.set_xticklabels(subset["Timestamp"].dt.strftime("%m-%d %H:%M"), rotation=45)
        ax.set_ylabel("Skor")
        ax.set_title(f"Evaluasi Model {model_name}")
        ax.legend()
        st.pyplot(fig)

    buffer = BytesIO()
    df_eval.to_excel(buffer, index=False, engine="openpyxl")
    st.download_button(
        label="📅 Unduh Semua Hasil Evaluasi (Excel)",
        data=buffer.getvalue(),
        file_name="benchmark_evaluasi_ir.xlsx",
        mime="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    )
except Exception as e:
    st.warning(f"⚠️ Gagal memuat grafik evaluasi: {e}")

# =======================
# 7. RINGKASAN RATA-RATA
# =======================
st.subheader("📊 Rangkuman Evaluasi Rata-rata per Model (Query Lengkap)")
try:
    conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="efarm"
    )
    cursor = conn.cursor()
    cursor.execute("""
        SELECT model,
               ROUND(AVG(prec), 3),
               ROUND(AVG(recall), 3),
               ROUND(AVG(f1_score), 3),
               ROUND(AVG(accuracy), 3),
               ROUND(AVG(waktu), 4)
        FROM ir_evaluations
        WHERE query IN (
            SELECT query
            FROM ir_evaluations
            GROUP BY query
            HAVING COUNT(DISTINCT model) = 3
        )
        GROUP BY model
    """)
    rows = cursor.fetchall()
    df_summary = pd.DataFrame(rows, columns=["Model", "Avg Precision", "Avg Recall", "Avg F1", "Avg Accuracy", "Avg Time (s)"])
    cursor.close()
    conn.close()

    st.dataframe(df_summary)
except Exception as e:
    st.warning(f"⚠️ Gagal mengambil data ringkasan: {e}")
