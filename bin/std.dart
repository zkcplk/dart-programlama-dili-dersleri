import 'dart:io';

main() {
//  Standart Input/Output Streams

/*   stdout.writeln('Bir şeyler yazın...');
  String input = stdin.readLineSync();
  stdout.writeln('Yazdığınız şey: $input'); */

  stdout.writeln('* Lütfen komut yazınız...');
  List<String> input = stdin.readLineSync().split(" ");

  //  oku log.txt
  if (input[0] == "oku") {
    stdout.writeln('* Dosya Okunuyor...');
    File(input[1])
        .readAsLinesSync()
        .forEach((satir) => stdout.writeln('- $satir'));
  } else
    stderr.writeln("HATA: Yanlış bir komut girdiniz!");
}
