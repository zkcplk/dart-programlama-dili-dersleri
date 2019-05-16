//  import 'dart:core';   //  Buna gerek yok.

main() {
///////////////   DateTime

  print("Yıl: " + DateTime(2000).toString());
  print("Şimdiki zaman: " + DateTime.now().toString());
  print("Zaman: " + DateTime(1989, 7, 20, 20, 18, 04).toString());

/*   var zaman = DateTime.parse("1969-07-20");
  print("Gün: ${zaman.day}");
  print("Ay: ${zaman.month}");
  print("Yıl: ${zaman.year}");
  print("Saat: ${zaman.hour}");
  print("Dakika: ${zaman.minute}");
  print("Saniye: ${zaman.second}"); */

/*   int unixTime = DateTime.now().millisecondsSinceEpoch;

  print("Şuan Unixtime: " + unixTime.toString());

  print("Unixtime çevirisi: " +
      DateTime.fromMillisecondsSinceEpoch(unixTime).toString()); */

///////////////   StringBuffer
  StringBuffer sb = StringBuffer();
  sb.write("Hello");
  sb.writeln(""); //  Enter'a basmak gibi...
  sb.writeln(""); //  Enter'a basmak gibi...
  sb.writeAll(['space', ' and', ' more']);

  print(sb);
  print("StringBuffer: " + sb.toString());

  sb.clear();
  print("StringBuffer: " + sb.toString());

/*   String str = "";
  str += "Hello";
  str += "\n\r";
  str += "space";
  str += " and";
  str += " more";

  print("String: $str"); */

///////////////   Uri
/*   var uri = 'http://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  print(encoded);

  var decoded = Uri.decodeFull(encoded);
  print(decoded);

  encoded = Uri.encodeComponent(uri);
  print(encoded);

  decoded = Uri.decodeComponent(encoded);
  print(decoded); */

  /*  var uri =
      Uri.parse('http://sub.example.org/foo/bar?user=ali&pass=12345#frag');

  print("uri.scheme : " + uri.scheme);
  print("uri.host : " + uri.host);

  if (uri.hasPort) print("uri.port : " + uri.port.toString());

  print("uri.path : " + uri.path);
  print("uri.fragment : " + uri.fragment);
  print("uri.origin : " + uri.origin);
  print("uri.query : " + uri.query);
  print("uri.queryParameters : " + uri.queryParameters.toString());
  print("uri.queryParameters[user] : " + uri.queryParameters['user']); */

  var uri = Uri(
    scheme: 'http',
    host: 'example.org',
    port: 880,
    path: '/foo/bar',
    fragment: 'frag',
    query: 'user=ali&pass=999',
  );

  print("Uri: $uri");
}
