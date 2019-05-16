main() {
//  Aritmetik Operatörler: +,-,*,/,~/,%

  var toplam = 4 + 5;
  print(toplam);

  var str = 'merhaba ';
  var str2 = 'nasılsın?';

  print(str + str2);

  var eksi = 9 - -1;
  print(eksi);

  var carpma = 4 * 3;
  print(carpma);

  var bolme = 10 / 3;
  print(bolme);

  print(10 ~/ 3); //  bölümün tam çıkması için

  print(10 % 3);

  print('Kalan: ${10 % 3}');

  print("Kalan: " + ((10 + 3) * (20 ~/ 4)).toString());
}
