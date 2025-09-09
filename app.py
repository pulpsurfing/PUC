# app.py
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello World! Jenkins + Docker funcionando!"

if __name__ == "__main__":
    # Host 0.0.0.0 permite acesso externo ao container
    # Porta 8080, que é mapeada no Docker
    app.run(host="0.0.0.0", port=8080)
