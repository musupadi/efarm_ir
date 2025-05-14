#  eFarm IR – Multimodal Information Retrieval System for Milk Price Mapping

This repository hosts a lightweight **multimodal information retrieval (IR) system** for dairy price mapping. Built with `Streamlit`, the system supports real-time price extraction from **text**, **image (OCR)**, and **audio (STT)**, combining **TF-IDF** and **TinyBERT** in a fusion architecture. It also includes automatic evaluation (Precision, Recall, F1, Accuracy) for every query.

>  **Use case**: Helping farmers and cooperatives in low-resource areas access transparent milk pricing using various input types.

---

## Features

- **Multimodal Input**: Image (OCR), Audio (Speech-to-Text), and Text
- **Fusion IR Models**: TF-IDF, TinyBERT, or combined
- **Live Query Evaluation**: Real-time Precision, Recall, F1, Accuracy per search
- 🗃**MySQL Integration**: CRUD for milk price database
- **Visualization**: Auto-generated evaluation charts and Excel download
- **Prompt-based Query Expansion**

---

##  Installation

### 1. Clone Repository
```bash
git clone https://github.com/musupadi/ir-efarm.git
cd efarm-ir
pip install -r requirements.txt
