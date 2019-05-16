main() {
//  Future

//  Senkronize işlemler
/*   print("İşlem bir...");
  print("İşlem iki...");
  print("İşlem üç..."); */

//  Geciken ikinci işlem
/*   print("İşlem bir...");

  var toplam = 0;
  for (var i = 0; i < 4000000000; i++) {
    toplam = toplam + 1;
  }

  print("İşlem üç..."); */

//  Geciken işlemin tanımlanması
  print("İşlem bir...");

  Future.microtask(() {
    var toplam = 0;
    for (var i = 0; i < 4000000000; i++) {
      toplam = toplam + 1;
    }

    print("Geciken işlem bitti...");
  });

  print("İşlem üç...");
}
