# Usando imagem oficial do Python
FROM python:3.11-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo Python para dentro do container
COPY app.py .

# Comando para rodar a aplicação
CMD ["python", "app.py"]
