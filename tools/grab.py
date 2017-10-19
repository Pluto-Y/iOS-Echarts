# !/usr/bin/env python3
# -*- coding: utf-8 -*-
import json

if __name__ == '__main__':
    with open ('./resources/option.json') as json_data:
        json_obj = json.load(json_data)
        for key in json_obj:
            value = json_obj[key]
            print("The key and value %s = %s\n" % (key, value))

