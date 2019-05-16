main() {
//  For döngüsü

  for (int i = 0; i < 5; i++) {
    print("i değeri: $i");
  }

  List<int> sayilar = [2, 5, 7, 10, 23, 56, 77];
  int toplam = sayilar.length;

  for (var i = 0; i < toplam; i++) {
    var eleman = sayilar[i];

    if (eleman.isOdd)
      print("$eleman bir TEK sayıdır.");
    else
      print("$eleman bir ÇİFT sayıdır.");

//  if (i == 5) sayilar.add(33);
  }
}
