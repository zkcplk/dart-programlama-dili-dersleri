main() {
//  For in döngüsü

  List<int> sayilar = [2, 5, 7, 10, 23, 56, 77];

  for (var eleman in sayilar) {
    if (eleman.isOdd)
      print("$eleman bir TEK sayıdır.");
    else
      print("$eleman bir ÇİFT sayıdır.");

    //  sayilar.add(33);  //  Error
  }
}
