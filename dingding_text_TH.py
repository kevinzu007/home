#!/usr/bin/python
# -*- coding: utf-8 -*-
 
import requests
import json
import sys
import os
 
headers = {'Content-Type': 'application/json;charset=utf-8'}
api_url = "https://oapi.dingtalk.com/robot/send?access_token=ac992403816c771696c75854e96481fccca1303cd58b8819e9f3f845b5adee5c"
 
def msg(text):
    json_text= {
     "msgtype": "text",
        "text": {
            "content": text
        },
        "at": {
            "atMobiles": [
                "18620021887"
            ],
            "isAtAll": False
        }
    }
    print requests.post(api_url,json.dumps(json_text),headers=headers).content
     
if __name__ == '__main__':
    text = sys.argv[1]
    msg(text)


