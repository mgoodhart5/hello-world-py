from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "** Hello World **"

@app.route("/mary")
def hello_mary():
    return "** Hello Mary **"

if __name__ == "__main__":
    app.run(host="0.0.0.0")