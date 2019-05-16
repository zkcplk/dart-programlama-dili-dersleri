main() {
//  Setter ve Getter

//  Setter: Kaydedici
//  Getter: Okuyucu

  Ogrenci ogrenci1 = Ogrenci(); //  Örneklendirme (Instantiate)
  ogrenci1.isim = "Ali"; //  Setter
  print("Öğrencimizin ismi: ${ogrenci1.isim}"); //  Getter

  ogrenci1.yuzde = 5;
  print("Öğrenci yüzdesi: ${ogrenci1.yuzde}"); //  Getter
}

class Ogrenci {
  String isim;
  int _yuzde;

  set yuzde(int puan) {
    if (puan > 10)
      puan = 10;
    else if (puan < 0) puan = 0;

    _yuzde = puan * 10;
  }

  int get yuzde {
    return _yuzde;
  }
}
