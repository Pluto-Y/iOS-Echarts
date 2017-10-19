# !/usr/bin/env python3
# -*- coding: utf-8 -*-
import json

resultObjNames = set()
exceptedObjNams = ['normal', 'emphasis']
resultObjs = []

def isEchartsObj(dic, name):
    if not isinstance(dic, dict): return False
    if dic.has_key('type'):
        if dic['type'] == 'Object':
            return not name in exceptedObjNams
        elif isinstance(dic['type'], list):
            arr = dic['type']
            if len(arr) == 1 and arr[0] == 'Object':
                return not name in exceptedObjNams
    return False


def iterateArray(arr):
    for obj in arr:
        if isinstance(obj, list):
            iterateArray(obj)
        elif isinstance(obj, dict):
            iterateDic(obj)

def iterateDicForName(dic, name):
    if not isinstance(dic, dict): return
    if isEchartsObj(dic, name):
        resultObjNames.add(name)
    iterateDic(dic)

def iterateDic(dic):
    if not isinstance(dic, dict): return
    for key in dic:
        value = dic[key]
        if isinstance(value, list):
            iterateArray(value)
        elif isinstance(value, dict):
            iterateDicForName(value, key)
        else:
            print("The key and value %s = %s\n" % (key, value))

if __name__ == '__main__':
    with open ('./resources/option.json') as json_data:
        json_dic = json.load(json_data)
        if json_dic.has_key('option'):
            option_dic = json_dic['option']
            iterateDicForName(option_dic, 'option')
    print('all object names: %s', resultObjNames)
            

