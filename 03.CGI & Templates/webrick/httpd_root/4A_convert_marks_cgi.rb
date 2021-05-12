# CGI 방식으로 구현
puts "Content-Type: text/html;charset=UTF-8\r\n\r\n"
puts "<!DOCTYPE html>"

def convert_mark(mark, exponent)
  (mark**exponent * (100.0/100**exponent)).round
end

# here document for the start of the Web page
html_start = <<HTMLSTART
<html lang='en-US'>
  <head>
    <meta charset="utf-8">
    <title>A Program to Convert Marks</title>
    <style>
      table, table th, table td { border-collapse: collapse; border: 1px solid black; }
      table td { text-align: right; padding-right: 10pt; }
    </style>
  </head>
  <body>cko
    <h1>A Program to Convert Marks</h1>
HTMLSTART

puts html_startkann

puts "    <p>This system beautifies marks, currently with an exponent of 0.5.</p>"

puts "    <table><tbody>"
puts "      <tr><th>Before</th><th>After</th></tr>"
(0..100).each do |before|
  after = convert_mark(before, 0.5)
  puts "      <tr><td>#{before}</td><td>#{after}</td>"
end
puts "    </tbody></table>"

# here document for the end of the Web page
html_end = <<HTMLEND
  </body>
</html>
HTMLEND

puts html_end