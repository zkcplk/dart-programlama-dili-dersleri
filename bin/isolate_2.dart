import 'dart:isolate';

//  Multi Thread - Çok Şerit
main() => izolatOlustur();

void izolatOlustur() {
  int bitenIzolat = 0;
  final ilkZaman = DateTime.now();

  //  İzolatlar arasında mesajlaşma için
  ReceivePort mesajPortu = ReceivePort();

  //  3 ayrı izolat
  Isolate.spawn(uzun_islem, mesajPortu.sendPort);
  Isolate.spawn(uzun_islem, mesajPortu.sendPort);
  Isolate.spawn(uzun_islem, mesajPortu.sendPort);

  //  İzolatlardan gelen mesajlar dinleniyor...
  mesajPortu.listen((data) {
    bitenIzolat++;

    if (bitenIzolat == 3) {
      final sonZaman = DateTime.now();
      print("Multi Thread: " + sonZaman.difference(ilkZaman).toString());

      //mesajPortu.close();
    }
  });
}

void uzun_islem(SendPort sendPort) {
  int say = 0;
  for (var i = 0; i < 2000000000; i++) {
    say++;
  }

  sendPort.send(say);
}
