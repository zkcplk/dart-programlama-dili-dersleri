import 'dart:io';

main() {
//  WebSocket

  HttpServer.bind('192.168.2.247', 80).then((HttpServer server) {
    print("WebSocket Server hazır!");
    server.listen((HttpRequest request) {
      HttpResponse cevap = request.response;
      Uri uri = request.uri;

      if (uri.toString() == "/ws") {
        WebSocketTransformer.upgrade(request).then((WebSocket socket) {
          socket.listen((data) {
            //  Kullanıcıdan server'a gelen data
            print("Gelen data: $data");

            var gelen = data.split(" ");
            if (gelen[0] == "MESAJ" && gelen[1] == "Merhaba") {
              socket.add("Size de Merhaba...");
            } else {
              socket.add("Gelen data: $data");
            }
          });
        });
      } else {
        cevap.write("WebSocket servera bu sayfadan giremezsiniz!");
        cevap.close();
      }
    });
  });
}
