import 'dart:io';
import 'dart:convert';

main() async {
//  DOSYA OKUMAK

  File file = File('notlar.txt');
  var contents;

//  .readAsString()
//  String olarak okuyor, Future<String> üretiyor.
  contents = await file.readAsString();
  print("String dosya boyutu: ${contents.length}");

//  .readAsLines()
//  Satır Satır ve String olarak okuyor ve Future<List<String>> üretiyor.
  contents = await file.readAsLines();
  print("Toplam satır sayısı: ${contents.length}");
  print("Okunan 1. satır: '${contents[0]}'");

//  .readAsBytes()
//  Binary olarak okuyor, Future<List<int>> üretiyor.
//  Her bir karakterin numarasını içeren bir liste üretiyor.
  contents = await file.readAsBytes();
  print("Binary dosya boyutu: ${contents.length}");
  print("Dosya içeriği: $contents");

//  STREAMING...
//  Parça parça okunabiliyor.
//  İstenilen yerden başlanıp, belli bir bölüme kadar okunabiliyor.

/* 
//  1) Stream.listen()

  //  1.1) Hepsimi okumak
  Stream stream = file.openRead();

  //  1.2) Belli bir parçayı okumak
  Stream stream = file.openRead(3, 35);

  stream.transform(utf8.decoder).listen(
        (data) => print(data),
        onDone: () => print(">>> Dosya okuması bitti <<<"),
      );
 */

/* //  2) Await for
  Stream stream = file.openRead();

//  Satır satır okumak
  var lines = stream.transform(utf8.decoder).transform(LineSplitter());

  await for (var i in lines) print("Satır: $i");

  print(">>> Dosya okuması bitti <<<"); */
}
