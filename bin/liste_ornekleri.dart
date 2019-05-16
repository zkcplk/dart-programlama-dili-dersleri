main() {
//  List hakkında örnekler
//  Buradaki birçok metod, Iterable olan başka yapılarda da aynen kullanılabiliyor.

  List<String> esyalar = [];

//  Listenin boş olup olmadığının sorgulanması
  print('Liste boş mu: ${esyalar.isEmpty}');
  print('Liste dolu mu: ${esyalar.isNotEmpty}');

//  Listeye eleman eklemek: .add()
/*   esyalar.add('koltuk');
  esyalar.add('tablo');
  esyalar.add('sandalye');
  print(esyalar); */

//  Cascade Notation
  esyalar..add('koltuk')..add('tablo')..add('sandalye');
  print(esyalar);

//  Listeye çoklu eleman eklemek: .addAll()
  esyalar.addAll(['masa', 'komidin', 'televizyon']);
  print(esyalar);

//  Listeden belli bir elemanı çıkarmak: .remove()
  esyalar..remove('masa')..remove('sandalye');
  print(esyalar);

//  Listedeki son elemanı çıkartmak ve bilgisini çekmek: .removeLast()
  print("Son eleman: '${esyalar.removeLast()}' listeden çıkarıldı...");
  print("Son eleman: '${esyalar.removeLast()}' listeden çıkarıldı...");
  print(esyalar);

//  Listeye belli bir index ile ekleme yapmak: .insert()
  esyalar.insert(0, 'terlik');
  print(esyalar);

// Listeye belli bir index ile çoklu ekleme yapmak: .insertAll()
  esyalar.insertAll(1, ['televizyon', 'tabak', 'telefon']);
  print(esyalar);

//  İlk eleman ve son elemanı görmek: .first ve .last
  print("ilk eleman: ${esyalar.first}");
  print("son eleman: ${esyalar.last}");

//  Belirli index numarasına göre eleman görmek: .elementAt()
  print("Index nosu 2 olan eleman: ${esyalar.elementAt(2)}");
  print("Index nosu 2 olan eleman: ${esyalar[2]}");
  print(esyalar);

//  Listede arama yapmak: .contains()
  print("Listede 'tablo' var mı: ${esyalar.contains('tablo')}");

//  String bir veriyi parçalayarak listeye dönüştürmek: .split()
  String metin = "Ali bugün saat 10'da okula gitti.";
  print(metin.split(" ")[2]);

  List<String> parcali = metin.split(" ");
  print(parcali[3].split("'")[0]);

//  Liste elemanlarını birleştirerek String veri elde etmek: .join()
  String yazi = parcali.join("++");
  print(yazi);

//  Listedeki her eleman üzerinde sırayla işlem yapmak: .foreach()
  print(esyalar);
  esyalar.forEach((eleman) {
    print("Listede $eleman da var.");
  });

//  Listedeki tüm elemanlar bir koşula bağlı mı? .every()
  print(esyalar.every((eleman) {
    return eleman[0] == 't' || eleman[0] == 'k';
  }));

  print(esyalar);

//  Listedeki elemanlardan en az biri bir koşula bağlı mı? .any()
  print(esyalar.any((eleman) {
    return eleman[0] == 'k';
  }));

//  Listedeki elemanlarla üst üste işlemler yapmak: .reduce()
//  Son çıkan değer sum, son çıkan değerin üstüne işlem yapılıyor.
  List nums = [3, 5, 7, 10];
  print(nums.reduce((sum, element) {
    return sum + element;
  }));

//  Listedeki eleman tek mi? çift mi? .isOdd & .isEven
  print("nums listesindeki ilk eleman tek mi: ${nums[2].isOdd}");
  print("nums listesindeki ilk eleman çift mi: ${nums[2].isEven}");
}
