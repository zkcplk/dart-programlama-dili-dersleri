main() {
//  Dart 2.2 Update - Set Literals

//  Eski Kullanım
  var bos_set = Set<int>();

  var listeden = <int>[3, 5, 7, 11, 3, 7];
  var setim = listeden.toSet();

  var fromile = Set<int>.from([3, 3, 3, 4, 5]);

//  Yeni Kullanım
  var set1 = <String>{};

  Set<String> set2 = {};

  var set3 = {'a', 'b', 'c'};
}
