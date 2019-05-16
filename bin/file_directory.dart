import 'dart:io';

main() async {
  var dir = Directory('deneme');
  var file = File("deneme.txt");

  //  Girilen Klasör / Dosya yolu
  print(dir.path);
  print(file.path);

  //  Klasör / Dosya bilgisayardaki dizini
  print(dir.absolute);
  print(file.absolute);

  //  Klasör / Dosya yoksa oluşturur.
  dir.createSync();
  file.createSync();

  //  Klasörü / Dosyayı siler.
/*   dir.deleteSync();
  file.deleteSync(); */

  //  Klasör / Dosya var mı?
  print("${dir.path} klasörü var mı? : ${dir.existsSync()}");
  print("${file.path} dosyayı var mı? : ${file.existsSync()}");

  //  Klasör / Dosya ismini değiştirir.
/*   dir.renameSync('dene');
  file.renameSync('dene.txt'); */

  //  Geçici anlık klasör oluşturur.
  //dir.createTemp();

  //  Dosyaya son erişim hakkında bilgi verir.
  print(await file.lastAccessed());

  //  Dosyayı kopyalar.
  //  Dosyayı kopyalarken ismini de newPath'e eklemek gerekiyor.
  file.copy('bin/deneme.doc');

  //  Dosyanın byte değerini verir.
  print(await file.length());
}
