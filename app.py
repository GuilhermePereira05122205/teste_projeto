from flask import Flask

app = Flask(__name__)


@app.get("/home")
def home():
    return "ola"


app.run(port=5000)