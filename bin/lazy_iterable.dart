main() {
//  Lazy Iterable Metodları
//  Iterable veri kullanır yine iterable veri üretir.

//  .where(): Iterable'daki her eleman için true veya false bir sonuç döndürülüyor.
//  true sonuçlarla yeni bir Iterable oluşturuluyor.

  List<int> nums = [5, 17, 23, 51];
  print(nums.where((sayi) {
    if (sayi > 20)
      return true;
    else
      return false;
  }));

  Iterable iterable = nums.where((numsElemani) {
    print('Kontrol ediliyor: $numsElemani');
    return numsElemani > 20 ? true : false;
  }); //  (23, 51)

  print(iterable);

//  .expand()
  List renkler = ['siyah', 'beyaz', 'mavi'];
  var expand = renkler.expand((renk) {
    return renk == 'beyaz' ? ['kırmızı', 'beyaz', 'sarı'] : [renk];
  });
  print(expand.toList());

//  .map(): iterable üzerinde değişiklik yapıyor.
  List renklerim = ['siyah', 'beyaz', 'mavi'];
  var map = renklerim.map((renk) {
    if (renk == 'siyah') return 'kırmızı';
    if (renk == 'mavi')
      return 'yeşil';
    else
      return 'gri';
  });
  print(map);

//  .take()
  List sayilar = [12, 24, 77, 45, 64, 85, 93, 100];
  print(sayilar.take(5));

//  .takeWhile()
  print(sayilar.takeWhile((n) {
    if (n < 70)
      return true;
    else
      return false;
  }));

//  .skip()
  print(sayilar.skip(5));

//  .skipWhile()
  print(sayilar.skipWhile((n) {
    if (n < 70)
      return true;
    else
      return false;
  }));
}
