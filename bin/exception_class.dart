main() {
  try {
    //  Planlı hata
    int h = 5;
    if (h > 3) throw OzelHata("Sayı üçten büyük olamaz!");

    //  Plansız hata
    dynamic hata = 9;
    print("hata: " + hata);
  } on OzelHata catch (e, s) {
    print("HATA: " + e.msg);
    print("HATA İZİ: $s");

//    throw e.msg;  //  Programı durduruyor...
  } catch (e) {
    print("NORMAL HATA: $e"); //    Programı durdurmuyor.
    //throw e; //  Programı durduruyor...
  }

  print("SON.");
}

class OzelHata implements Exception {
  final String msg;

  OzelHata([this.msg]);
}
