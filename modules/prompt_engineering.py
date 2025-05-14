def optimized_prompt(user_query):
    """
    Menyesuaikan kueri pengguna agar sesuai format untuk TinyBERT
    """
    return f"Berikan informasi harga susu {user_query} dalam format numerik."