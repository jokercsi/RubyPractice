
# create Html file by using Ruby
fileHtml = File.new("convert_marks_page.html", "w+")

#puts content of Html
fileHtml.puts "<!DOCTYPE html>"
fileHtml.puts "<html lang='en-US'>"

#styling
fileHtml.puts "<head>"
fileHtml.puts "<style>"
fileHtml.puts "table {
  border-collapse:separate;
  border:solid black 1px;
  border-radius:10px;
  padding:3px
}

td, th {
  border-left:solid black 1px;
  border-top:solid black 1px;
}

th {
  background-color: #008d62;
  border-top: none;
}

td:first-child, th:first-child {
   border-left: none;
}"
fileHtml.puts "</style>"
fileHtml.puts "</head>"


#HTML content
fileHtml.puts "<body>"
fileHtml.puts "<div class='content'>"


#showing table
fileHtml.puts "<h1>HTML tags</h1>"
fileHtml.puts "<table>
<tbody>
  <tr>
    <th></th>
    <th>Before</th>
    <th>After</th>
  </tr>
  <tr>
    <th><code>Paragraphs</code></td>
    <td><code>&lt;p&gt;</code></td>
    <td><code>&lt;/p&gt;</code></td>
  </tr>
  <tr>
    <th><code>Address</code></td>
    <td><code>&lt;address&gt;</code></td>
    <td><code>&lt;/address&gt;</code></td>
  </tr>
  <tr>
    <th><code>Aside</code></td>
    <td><code>&lt;aside&gt;</code></td>
    <td><code>&lt;/aside&gt;</code></td>
  </tr>
  <tr>
    <th><code>Blockquote</code></td>
    <td><code>&lt;blockquote&gt;</code></td>
    <td><code>&lt;/blockquote&gt;</code></td>
  </tr>
</tbody>
</table>"

fileHtml.puts "</div>"
fileHtml.puts "</body></html>"

fileHtml.close()