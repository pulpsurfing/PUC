from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

if __name__ == "__main__":
    # Host 0.0.0.0 permite acesso externo ao container
    # Porta 8080, que é mapeada no Docker
    app.run(host="0.0.0.0", port=8080)