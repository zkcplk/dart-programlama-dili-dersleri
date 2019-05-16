import 'dart:collection';

main() {
//  HashMap: eleman eklenme sırası korunmuyor,
//  Map'lere göre daha hızlı çalışıyor!

  var map = Map.fromIterables(['üçüncü', 'ikinci', 'birinci'], [3, 2, 1]);
  print(map);

  map['dördüncü'] = 4;
  print(map);

  map['beşinci'] = 5;
  print(map);

  var hashmap =
      HashMap.fromIterables(['üçüncü', 'ikinci', 'birinci'], [3, 2, 1]);
  print(hashmap);

  hashmap['dördüncü'] = 4;
  print(hashmap);

  hashmap['beşinci'] = 5;
  print(hashmap);
}
