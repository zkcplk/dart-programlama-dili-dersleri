main() {
//  Exceptions

/*   dynamic hata = 9;
  try {
    print("hata: " + hata);
  } catch (e) {
    //print("HATA OLDU: " + e.toString()); //  Programı durdurmuyor.
    throw "HATA OLDU: " + e.toString(); //  Programı durduruyor.
  } finally {
    print("SON.");
  } */

  dynamic hata = 9;
  try {
    print("hata: " + hata);
  } catch (e, s) {
    print("HATA: $e");
    print("HATA İzi: $s");
  }

  print("SON.");
}
