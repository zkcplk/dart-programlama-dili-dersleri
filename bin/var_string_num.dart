main() {
// String, tırnak içerisinde ifade edilebilen tüm yazılar...
// Num, tüm sayılar... 1,2,3,4.5,0.9...

  var degisken = 'Merhaba...';
  print(degisken);

  degisken = "Nasılsın?";
  print(degisken);

  String isim = 'Ahmet';
  print(isim);

  String mesaj = ''' Merhaba, 

  Nasılsın?

  İyi misin?''';

  print(mesaj);

  String soru = 'Zeynep\'e sordun mu?';
//  String soru = "Zeynep'e sordun mu?";
  print(soru);

  num sayi = 3;
  print(sayi);

//  soru = 9;         //  String olan bir değişkene farklı türden bir atama yapamayız.
//  sayi = 'Merhaba';   //  Num olan bir değişkene farklı türden bir atama yapılamaz.

  print('Soru değişkenimizin değeri: ' + soru);
  print('Sayı değişkenimizin değeri: $sayi');
  print('Sayı değişkenimizin değeri: ${sayi}');
}
