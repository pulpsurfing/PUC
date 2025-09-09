# Use a imagem base Python
FROM python:3.11-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY requirements.txt .
COPY app.py .

# Instala as dependências do requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 8080
EXPOSE 8080

# Comando para rodar o app
CMD ["python", "app.py"]
