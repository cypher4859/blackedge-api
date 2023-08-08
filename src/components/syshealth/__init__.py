from flask import Blueprint
import requests
import json

syshealth = Blueprint("syshealth", __name__)

@syshealth.route("/syshealth")
def get_syshealth():
    return _get_syshealth()

def _get_syshealth(**kwargs):
    return "Healthy and running."