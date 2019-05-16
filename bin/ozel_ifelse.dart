main() {
// Özel Koşullu İfadeler: (... ? '':'') , (... ?? ...)

  var sayi = 3;

//  Klasik If-Else

  if (sayi > 1)
    print("sayi değeri 1'den büyük...");
  else
    print("sayi değeri 1'den küçük...");

//  (... ? '':'')

  (sayi > 1
      ? print("sayi değeri 1'den büyük...")
      : print("sayi değeri 1'den küçük..."));

  var sonuc =
      (sayi > 1 ? "sayi değeri 1'den büyük..." : "sayi değeri 1'den küçük...");
  print(sonuc);

//  (... ?? ...)

  var degisken = null;
  var soru = (degisken ?? 'Nasılsın?');
  print(soru);
}
