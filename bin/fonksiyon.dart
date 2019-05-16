void main() {
//  Fonksiyonlar

  paket();

  var sonuc = islem();
  print(sonuc);
}

void paket() {
  print('Merhaba..');
  print('Nasılsınız...');
}

int islem() {
  var sayi1 = 3;
  var sayi2 = 5;

  var carpma = sayi1 * sayi2;
  return carpma;
}
