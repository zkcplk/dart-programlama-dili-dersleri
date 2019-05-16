main() {
  String mesaj = 'Merhaba';

//  .length
  print('Mesaj değişkeninin karakter sayısı: ${mesaj.length}');

//  index
  print(mesaj[0]);
  print(mesaj[2]);
//  print(mesaj[7]);    //    Hatalı

  var yeni = mesaj.replaceAll('aba', 'x');
  print(yeni);
  print(mesaj);

  print(mesaj.replaceFirst('Merh', 'aaa'));

  print(mesaj.toLowerCase());
  print('deneme'.toUpperCase());

  print(mesaj.substring(5));

  print(' deneme '.trim());
  print(' deneme '.trimLeft());
  print(' deneme '.trimRight());

  num sayi = 99.1;

//  girilen sayıdan küçük olmayan en yakın tam sayı değeri
  print(sayi.ceil());
//  girilen sayıdan büyük olmayan en yakın tam sayı değeri
  print(sayi.floor());

  double ondalik = 3.99;
  print(ondalik.round()); //  yuvarlama

  print(ondalik.toInt());

  print('ondalik değişkeninin değeri: $ondalik');
  print('ondalik değişkeninin değeri: ' + ondalik.toString());

  bool cevap = true;
  print('cevap değişkeninin değeri: ' + cevap.toString());
}
