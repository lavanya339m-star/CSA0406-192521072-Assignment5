from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def home():
    return "University Result Portal demo"

@app.get("/health")
def health():
    return jsonify(status="ok", service="university-portal")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
