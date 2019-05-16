main() {
//  Anonim Fonksiyonlar
//  () { /* ...Kodlar... */ }

  Function bolme = (int bolunen, int bolen) {
    return bolunen ~/ bolen;
  };
  print(bolme(12, 3));

  Function bolmek = (int bolunen, int bolen) => bolunen ~/ bolen;
  print(bolmek(12, 3));
}
