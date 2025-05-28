# Python rasmi rasmidan boshlaymiz
FROM python:3.10-slim

# Tesseract OCR va kerakli paketlarni o'rnatamiz
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libtesseract-dev \
    && rm -rf /var/lib/apt/lists/*

# Ishchi papkani yaratamiz
WORKDIR /app

# Kerakli fayllarni konteynerga nusxalaymiz
COPY requirements.txt requirements.txt

# Python paketlarini o'rnatamiz
RUN pip install --no-cache-dir -r requirements.txt

# Loyihaning qolgan fayllarini konteynerga nusxalaymiz
COPY . .

# Streamlit server portini ochamiz
EXPOSE 8501

# Streamlit ilovasini ishga tushiramiz
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
