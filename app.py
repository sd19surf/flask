from flask import Flask
import gunicorn

app = Flask(__name__)

@app.route("/")
def entrypoints():
    entrypoint_dict = {}
    entrypoint_dict["entrypoint_url"] = "/"
    return entrypoint_dict