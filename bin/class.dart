main() {
//  Class

  //  Örneklendirme (Instantiate),
  //  Oluşan "ornek" objesi "Class Örneği" olarak adlandırılır. (Instance Of Class)
  Komutlar ornek = Komutlar();
  print(ornek.sayim);

  ornek.sayim = 10;
  print(ornek.sayim);

  var ornek2 = Komutlar();
  print(ornek2.sayim);

  ornek2.ekrana_yaz("Merhaba");
}

class Komutlar {
  //  Örnek değişken (Instance Variable)
  int sayim = 9;

  //  Method
  void ekrana_yaz(String yazi) {
    print(yazi);
  }
}
