main() {
//  Arttırma ve Azaltma Operatörleri: ++var, --var, var++, var--

  var n = 0;
//  n += 10;
  n++; //  n = n + 1;
  ++n;
  print(n);

  var a = 2;
  var b = a++; //  önce atama, sonra arttırma işlemi
  print('b değeri: $b');
  print('a değeri: $a');

  var c = 2;
  var d = ++c; //  önce arttırma, sonra atama işlemi
  print('d değeri: $d');
  print('c değeri: $c');
}
