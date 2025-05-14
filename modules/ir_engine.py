import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
import torch
from transformers import BertTokenizer, BertModel
import os

# Optional: disable CUDA memory caching if needed
os.environ["PYTORCH_NO_CUDA_MEMORY_CACHING"] = "1"


class IREngine:
    def __init__(self, model="TF-IDF + TinyBERT"):
        self.model_type = model
        self.vectorizer = TfidfVectorizer()
        self.tokenizer = BertTokenizer.from_pretrained("prajjwal1/bert-tiny")
        self.model = BertModel.from_pretrained("prajjwal1/bert-tiny")
        self.model.eval()

    def get_bert_embedding(self, text):
        inputs = self.tokenizer(
            text, return_tensors="pt", truncation=True, padding=True, max_length=128
        )
        with torch.no_grad():
            outputs = self.model(**inputs)
        return outputs.last_hidden_state.mean(dim=1).squeeze().numpy()

    def _compute_tfidf(self, query, documents):
        tfidf_matrix = self.vectorizer.fit_transform(documents)
        query_vec_tfidf = self.vectorizer.transform([query])
        return cosine_similarity(query_vec_tfidf, tfidf_matrix).flatten()

    def _compute_bert(self, query, documents):
        query_embed = self.get_bert_embedding(query)
        doc_embeddings = np.array([self.get_bert_embedding(doc) for doc in documents])
        return cosine_similarity([query_embed], doc_embeddings).flatten()

    def compute_raw_scores(self, query, documents):
        tfidf_scores = self._compute_tfidf(query, documents)
        bert_scores = self._compute_bert(query, documents)
        return tfidf_scores, bert_scores
