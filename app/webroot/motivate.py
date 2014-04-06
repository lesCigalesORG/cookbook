#! /usr/bin/python

import random

filename = "motivation.txt"
l = []
fp = open(filename, 'r')
data = True
while data:
    data = fp.readline()
    if len(data.strip()) > 0:
        l.append(data.strip())
print l

print "Content-Type: text/html\r\n\r\n"

header = """
<html><head><title>Motivate yourself!</title><style type="text/css">
body {
  font-size: 36px;  
  padding: 2.6em 2em;
  text-align: justify;  
  font-style: italic;  
  font-family:"Times New Roman",Georgia,Serif;
  color: #333;  
  background-color: #F3F1E9;
  line-height: 1.4em; 
  font-weight: bold;
  }
</style></head><body>
"""
footer = '</body></html>'

print header, l[random.randint(0, len(l) - 1)], footer
