main() {
//  ForEach döngüsü

  Function fonksiyon = (eleman) {
    if (eleman.isOdd)
      print("$eleman bir TEK sayıdır.");
    else
      print("$eleman bir ÇİFT sayıdır.");
  };

  List<int> sayilar = [2, 5, 7, 10, 23, 56, 77];
  sayilar.forEach(fonksiyon);

  List<int> sayilar2 = [20, 50, 70, 100, 230, 560, 770];
  sayilar2.forEach(fonksiyon);
}
