main() {
//  Constructors

//  Class örneği oluşturulurken ilk çalışan yapıdır.
//  Class'ın ismiyle oluşturulur.
//  Default, Parametreli (Parameterised), İsimli (Named)

/*   Araba araba1 = Araba();
  araba1.calistir();
  araba1.gaza_bas(); */

/*   Araba araba2 = Araba(2019, "kırmızı");
  print(
      """Modeli: ${araba2.model} olan, ${araba2.renk} renkli, yeni bir araba üretildi..."""); */

  Araba araba3 = Araba.isimli(2019, "kırmızı");
  print(
      """Modeli: ${araba3.model} olan, ${araba3.renk} renkli, yeni bir araba üretildi...""");
}

class Araba {
  //  Default
/*   Araba() {
    print("Yeni bir araba oluşturuldu.");
  } */

  int model = 2018;
  String renk = "siyah";

//  Parametreli
/*   Araba(int model, String renk) {
    this.model = model;
    this.renk = renk;
    print("Yeni bir araba üretildi...");
  }
 */

//  Araba(this.model, this.renk);

//  İsimli
  Araba.isimli(this.model, this.renk) {
    print("yeni bir araba üretildi. $model");
  }

  void gaza_bas() {
    print("Gaza basıldı...");
  }

  void calistir() {
    print("Araba çalıştırıldı...");
  }
}
