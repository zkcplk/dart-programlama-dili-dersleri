import 'dart:io';

main() async {
  //  DOSYAYA YAZMAK

  var file = File('log.txt');

  //  .writeAsString()
  await file.writeAsString("String olarak dosyayı sıfırdan oluşturuyor...",
      mode: FileMode.write);

  await file.writeAsString("String olarak dosya sonuna ekliyor...",
      mode: FileMode.append);

  //  .writeAsBytes()
  await file.writeAsBytes([66, 117, 32, 98, 105, 114, 32, 116, 120, 116],
      mode: FileMode.write); //  Bu bir txt

  await file.writeAsBytes([66, 117, 32, 98, 105, 114, 32, 116, 120, 116],
      mode: FileMode.append); //  Bu bir txt

  //  Stream ile yazmak
  var sink = file.openWrite();
  sink.write("Deneme diyelim...");
  await sink.flush();
  await sink.close();
}
