import mysql.connector
import pandas as pd

# Koneksi ke MySQL
conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="efarm"
)

# Query data evaluasi (dengan backtick!)
query = """
SELECT `precision`, `recall`, `f1_score`, `waktu`, `timestamp`
FROM ir_evaluations
ORDER BY `timestamp`
"""

df_eval = pd.read_sql(query, conn)

# Tampilkan
print(df_eval)

# Simpan ke Excel
df_eval.to_excel("hasil_evaluasi_ir.xlsx", index=False)

conn.close()
