# multimodal_extractor.py

import pytesseract
from PIL import Image
import io
import requests
import speech_recognition as sr

def extract_text_from_image(url):
    """
    Mengambil teks dari gambar katalog harga menggunakan OCR (Tesseract).
    :param url: URL gambar katalog
    :return: string hasil OCR
    """
    try:
        response = requests.get(url)
        img = Image.open(io.BytesIO(response.content))
        text = pytesseract.image_to_string(img)
        return text.strip()
    except Exception as e:
        print(f"OCR Error: {e}")
        return ""

def extract_text_from_audio(url):
    """
    Mengambil teks dari file audio menggunakan Google Speech Recognition.
    :param url: URL audio rekaman suara peternak
    :return: string hasil transkripsi suara
    """
    try:
        recognizer = sr.Recognizer()
        response = requests.get(url)
        audio_file = io.BytesIO(response.content)
        with sr.AudioFile(audio_file) as source:
            audio_data = recognizer.record(source)
        text = recognizer.recognize_google(audio_data, language="id-ID")
        return text.strip()
    except Exception as e:
        print(f"Speech2Text Error: {e}")
        return ""
