require "webrick"

server = WEBrick::HTTPServer.new({
    :DocumentRoot => ".",
    :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
    :Port => '3000'
})

['INT', 'TERM'].each {|signal|
    Signal.trap(signal){server.shutdown}
}
server.mount("/", WEBrick::HTTPServlet::ERBHandler, 'index.html.erb')
server.mount("/true_data.cgi", WEBrick::HTTPServlet::CGIHandler, 'true_data.rb')
server.mount("/false_data.cgi", WEBrick::HTTPServlet::CGIHandler, 'false_data.rb')
server.start