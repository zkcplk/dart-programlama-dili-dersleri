main() {
//  Future Then

  birinci()
      .then((s) => print("Birinci: $s"))
      .then((_) => print("İkinci işleme geçiliyor..."))
      .then((_) => geciken_islem())
      .catchError((e) => print("HATA: $e"))
      .then((t) => print("İkinci: $t"))
      .then((_) => print("Tüm işlemler bitti..."));
}

//  Değer döndüren Future.
Future<String> birinci() =>
    Future.delayed(Duration(seconds: 1), () => "s1 bitti");

Future<String> geciken_islem() {
  return Future.microtask(() {
    var toplam = 0;
    for (var i = 0; i < 4000000000; i++) {
      toplam = toplam + 1;
    }

    return "Geciken işlem bitti";
  });
}
