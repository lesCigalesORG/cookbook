#! /usr/bin/ruby

filename = "motivation.txt"

data = IO.readlines(filename)

puts "Content-Type: text/html\r\n\r\n"

#puts data.length
header =<<EOS
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
EOS
footer =<<EOS
</body></html>
EOS


string = header + data[rand(data.length)] + footer
string = string.to_s.gsub("\n", '')
string = string.to_s.gsub(/[ ]+/, ' ')

puts string

#puts header
#puts data[rand(data.length)]
#puts footer

