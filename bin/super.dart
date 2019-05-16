main() {
//  Super Constructors & Super Methods

//  Otomobil oto = Otomobil("Audi");
  Otomobil oto = Otomobil.isimliparametreli("Audi");
  oto.calistir("deneme");
}

class Otomobil extends Arac {
  String marka;

//  Otomobil(this.marka) : super(4, 'Git') {
//  Otomobil(this.marka) : super.isimli() {
//  Otomobil(this.marka) : super.isimliparametreli(4, 'Git') {
  Otomobil.isimliparametreli(this.marka) : super.isimliparametreli(4, 'Git') {
    print(
        "$marka markalı, $tekerlek tekerlekli, $isim isimli bir Otomobil oluşturuldu.");
  }

  @override
  void calistir(String isim) {
    super.calistir(isim);
    print("İçeriğini değiştirdim");
  }
}

class Arac {
  int tekerlek = 4;
  String isim = "Git";

/*   Arac() {
    print("$tekerlek tekerlekli, $isim isimli bir araç oluşturuldu.");
  } */

  Arac(this.tekerlek, this.isim) {
    print("$tekerlek tekerlekli, $isim isimli araç oluşturuldu.");
  }

  Arac.isimli() {
    print("isimli constructor çalıştırıldı...");
  }

  Arac.isimliparametreli(this.tekerlek, this.isim) {
    print("$tekerlek tekerlekli, $isim isimli araç oluşturuldu.");
  }

  void calistir(String isim) {
    print("$isim aracı çalıştırıldı...");
  }
}

class Name extends Object {
  Name() : super();
}
