from flask import Flask, Blueprint
import requests
import json

quote_api = Blueprint("quote_api", __name__)
quote_api_url = "https://api.quotable.io"

@quote_api.route("/quote")
def get_quote():
    raw_quote = _get_quote()
    return f"\n{raw_quote['content']}\n\t- {raw_quote['author']}\n\n"

def _get_quote(**kwargs):
    return json.loads(requests.get(f"{quote_api_url}/random", timeout=3000).content)