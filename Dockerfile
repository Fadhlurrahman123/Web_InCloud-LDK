# Gunakan image dasar Python
FROM python:3.9-slim

# Set environment variabel
ENV PORT=8080

# Salin requirements.txt dan install dependensi
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Salin kode aplikasi ke dalam container
COPY . /app

# Set working directory
WORKDIR /app

# Expose port aplikasi
EXPOSE 8080

# Jalankan aplikasi Streamlit
CMD ["streamlit", "run", "streamlit_app.py", "--server.port", "8080", "--server.enableCORS", "false"]