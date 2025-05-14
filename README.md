# 🧠 eFarm IR – Multimodal Information Retrieval System for Milk Price Mapping

This repository hosts a lightweight **multimodal information retrieval (IR) system** for dairy price mapping. Built with `Streamlit`, the system supports real-time price extraction from **text**, **image (OCR)**, and **audio (STT)**, combining **TF-IDF** and **TinyBERT** in a fusion architecture. It also includes automatic evaluation (Precision, Recall, F1, Accuracy) for every query.

> 🧪 Use case: Helping farmers and cooperatives in low-resource areas access transparent milk pricing using various input types.

---

## 🚀 Features

- 📥 Multimodal Input: Image (OCR), Audio (Speech-to-Text), and Text
- ⚖️ Fusion IR Models: TF-IDF, TinyBERT, or combined
- 📊 Live Query Evaluation: Real-time Precision, Recall, F1, Accuracy per search
- 🗃️ MySQL Integration: CRUD for milk price database
- 📈 Visualization: Auto-generated evaluation charts and Excel download
- 🧠 Prompt-based Query Expansion

---

## 🛠️ Installation

1. **Clone the Repository and Install Dependencies**

    ```bash
    git clone https://github.com/musupadi/ir-efarm.git
    cd ir-efarm
    pip install -r requirements.txt
    ```

    If you don’t have a `requirements.txt` file, you can manually install required packages:

    ```bash
    pip install streamlit pandas numpy matplotlib mysql-connector-python scikit-learn \
                pytesseract openpyxl transformers torch nltk sastrawi \
                SpeechRecognition pydub opencv-python python-docx
    ```

2. **Configure MySQL Database Connection**

    By default, the app connects to a remote database:

    ```python
    host="localhost"
    user="root"
    password=""
    database="efarm"
    ```

    You can modify this in `app.py`. If you’re using your own database, update the credentials accordingly.

    - ✅ Default DB name: `efarm`
    - ✅ Main data table: `milk_reference`
    - ✅ Evaluation log table: `ir_evaluations`

3. **Install Tesseract (Required for OCR from Images)**

    - **Windows:** [Download Tesseract](https://github.com/tesseract-ocr/tesseract#windows)
    - **macOS:**
      ```bash
      brew install tesseract
      ```
    - **Linux (Ubuntu/Debian):**
      ```bash
      sudo apt install tesseract-ocr
      ```

4. **(Optional) Install FFmpeg (for Audio File Support)**

    If you're using `.mp3`, `.m4a`, or other audio formats:

    - **macOS:**
      ```bash
      brew install ffmpeg
      ```
    - **Ubuntu/Debian:**
      ```bash
      sudo apt install ffmpeg
      ```
    - **Windows:** [Download FFmpeg](https://ffmpeg.org/download.html)

5. **Run the App**

    ```bash
    streamlit run app.py
    ```

    The app will launch in your default browser. You can now upload image/audio files or enter a query to search milk prices across Indonesia.

---

## 📑 Citation
If you use this project in academic work, please cite:

## 👤 Author

**Muhammad Supriyadi**  
Department of Computer Science  
Universitas Nusa Mandiri  
📫 142420020@email.com