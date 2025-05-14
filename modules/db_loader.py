import pandas as pd
from sqlalchemy import create_engine

def load_data_from_mysql():
    engine = create_engine("mysql+mysqlconnector://root:@localhost/efarm")
    df = pd.read_sql("""
        SELECT 
            id,
            wilayah AS zone,
            harga AS price,
            'liter' AS unit,
            sumber AS source,
            CONCAT(wilayah, ' ', harga, ' ', sumber) AS description,
            NULL AS embedding_bert,
            NULL AS image_url,
            NULL AS voice_url,
            NULL AS ocr_text,
            NULL AS transcript_text
        FROM milk_reference
    """, engine)
    return df
