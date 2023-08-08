from flask import Flask

from src.components.quote_api import quote_api
from src.components.syshealth import syshealth

app = Flask(__name__)
app.register_blueprint(quote_api)
app.register_blueprint(syshealth)

@app.route("/")
def hello_world():
    return "<b>Welcome to Black Edge</b>"

