require "cgi"

cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
    # 受け取ったデータcgi['input']で取り出し、ローカル変数に代入する
    # 目印の'input'から情報を取り出す
    get = cgi['input']
    #Return response in HTML
    "<html>
      <body>
        <p>受け取ったStringは下記になります</p>
        <p>String：#{get}</p>
      </body>
    </html>"
}
