main() {
//  Inheritance Class (Extends)

  Otomobil oto = Otomobil("Audi");
  oto.isim = "Oto";
  oto.calistir(oto.isim);
}

class Otomobil extends Arac {
  String marka;

  Otomobil(this.marka) {
    print(
        "$marka markalı, $tekerlek tekerlekli, $isim isimli bir Otomobil oluşturuldu.");
  }

  @override
  void calistir(String isim) {
    print("İçeriğini değiştirdim");
  }
}

class Arac {
  int tekerlek = 4;
  String isim = "Git";

  Arac() {
    print("$tekerlek tekerlekli, $isim isimli bir araç oluşturuldu.");
  }

  void calistir(String isim) {
    print("$isim aracı çalıştırıldı...");
  }
}

//  Dart'ta her şey objedir!
//  class Normal extends Object {
class Normal {
  //  Kodlar...
}
