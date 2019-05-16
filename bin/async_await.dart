main() async {
//  Async - Await

  print("İşlem bir...");

  await Future.microtask(() {
    var toplam = 0;
    for (var i = 0; i < 4000000000; i++) {
      toplam = toplam + 1;
    }

    print("Geciken işlem bitti...");
  });

  print("İşlem üç...");
}
