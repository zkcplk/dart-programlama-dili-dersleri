import 'dart:io';

main() {
//  HttpServer

  HttpServer.bind('192.168.2.247', 80).then((HttpServer server) {
    print("Server hazır!");
    server.listen((HttpRequest request) {
      //  Client'in istekleri için HttpRequest,
      //  Server'ın cevapları için HttpResponse üretilir.
      HttpResponse cevap = request.response;

      Uri uri = request.uri;
      print("Client Uri:" + uri.toString());

      if (uri.toString() == "/") {
        cevap.write("Merhaba ANA SAYFAYA hoş geldiniz...");
        cevap.close();
      } else if (uri.toString() == "/haber") {
        cevap.headers.contentType = ContentType.html;
        cevap.write("<h1>Merhaba HABER sayfasına hoş geldiniz...</h1>");
        cevap.close();
      } else {
        cevap.write("Merhaba bilinmeyen bir sayfaya hoş geldiniz...");
        cevap.close();
      }
    });
  });

/*   
    HttpServer server = await HttpServer.bind('192.168.2.247', 80);
    await for (HttpRequest request in server) {
      //...
    } 
*/
}
