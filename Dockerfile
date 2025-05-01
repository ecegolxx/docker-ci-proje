# Python 3.9 tabanlı resmi imajı kullan
FROM python:3.9-slim

# Çalışma dizinini oluştur
WORKDIR /app

# Proje dosyalarını container'a kopyala
COPY . .

# Gereken paketleri yükle
RUN pip install -r requirements.txt

# Container çalıştığında pytest başlat
CMD ["pytest"]
