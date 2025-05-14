# modules/evaluator.py

import mysql.connector
from datetime import datetime

def save_query_log(query, results, tfidf_scores, bert_scores, fusion_scores):
    try:
        conn = mysql.connector.connect(
                host="localhost",
                user="root",
                password="",
                database="efarm"
        )
        cursor = conn.cursor()

        # Gabungkan result_ids sebagai string: "2,3,5"
        result_ids_str = ",".join(map(str, results))

        # Simpan ke query_logs
        cursor.execute(
            """
            INSERT INTO query_logs (
                query,
                result_ids,
                tfidf_score,
                bert_score,
                fusion_score
            ) VALUES (%s, %s, %s, %s, %s)
            """,
            (
                query,
                result_ids_str,
                str(tfidf_scores),
                str(bert_scores),
                str(fusion_scores)
            )
        )

        conn.commit()
        cursor.close()
        conn.close()
    except Exception as e:
        print(f"[Error] Gagal menyimpan hasil evaluasi: {e}")
