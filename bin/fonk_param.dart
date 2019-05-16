main() {
//  Fonksiyon Parametreleri (Argumentler)

  mesaj1('ali', 'yılmaz', 29);

  mesaj2('ahmet', null, 26);

  mesaj3(yas: 19, soyisim: 'öztürk', isim: 'mehmet');
}

//  Tüm parametrelerin girilmesi zorunlu
//  Parametre giriş sırasına uyulmalı
mesaj1(String isim, String soyisim, int yas) {
  print("Sevgili $isim $soyisim, $yas. doğum gününüz kutlu olsun.");
}

//  Parametrelerden soyisim ile yas girilmek zorunda değil
//  Parametre giriş sırasına uyulmalı
mesaj2(String isim, [String soyisim, int yas = 21]) {
  if (soyisim == null)
    print("Sevgili $isim, $yas. doğum gününüz kutlu olsun.");
  else
    print("Sevgili $isim $soyisim, $yas. doğum gününüz kutlu olsun.");
}

//  Parametrelerden soyisim ile yas girilmek zorunda değil
//  Parametre giriş sırasına uymak zorunda da değiliz!
//  Parametreler girilirken isimleri de belirtilmeli
mesaj3({String isim, String soyisim, int yas = 21}) {
  if (soyisim == null)
    print("Sevgili $isim, $yas. doğum gününüz kutlu olsun.");
  else
    print("Sevgili $isim $soyisim, $yas. doğum gününüz kutlu olsun.");
}
