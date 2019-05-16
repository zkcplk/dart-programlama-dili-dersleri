import 'dart:collection';

main() {
//  HashSet: eşsiz elemanlı, eklenme sırası korunmayan iterable

  var hset = HashSet.from([1, 2, 1, 2, "string", null, null, []]);
  print(hset);
}
