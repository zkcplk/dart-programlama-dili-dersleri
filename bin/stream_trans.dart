import 'dart:async';

main() {
//  Stream Transform - Akış Dönüştürme

  var data = [10, 23, 45, 78, 91];
  var stream = Stream.fromIterable(data);

  var transformer = StreamTransformer.fromHandlers(
      handleData: (int value, EventSink<String> sink) {
    sink.add("$value + 3");
    sink.add("Yeni akış: $value");
  });

  stream.transform(transformer).listen((d) => print(d));

  //  Broadcast Transform Örneği

/*   var data = [10, 23, 45, 78, 91];
  var stream = Stream.fromIterable(data);
  var brStream = stream.asBroadcastStream();

  brStream.listen(
    (d) => print("Eski akış: $d"),
  );

  var transformer = StreamTransformer.fromHandlers(
      handleData: (int value, EventSink<dynamic> sink) {
    value += 3;
    sink.add("Transforming...");
    sink.add("Yeni akış: $value");
  });

  brStream.transform(transformer).listen((d) => print(d)); */
}
