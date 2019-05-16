main() {
  //  Single Thread - Tek Şerit

  singleThread();
}

void singleThread() {
  int say;
  final ilkZaman = DateTime.now();

  say = 0;
  for (var i = 0; i < 2000000000; i++) {
    say++;
  }

  say = 0;
  for (var j = 0; j < 2000000000; j++) {
    say++;
  }

  say = 0;
  for (var k = 0; k < 2000000000; k++) {
    say++;
  }

  final sonZaman = DateTime.now();
  print("Single Thread: " + sonZaman.difference(ilkZaman).toString());
}
