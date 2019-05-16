main() {
//  Break ve Continue

  int s = 0;

  while (s < 10) {
    print('s değeri: $s');
    s++;

//    if (s == 7) break;

    if (s > 4) continue;

    print('Burada continue çalışmadı...');
  }
}
