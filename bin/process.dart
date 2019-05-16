import 'dart:io';
//import 'dart:convert';

main() {
  //  Firefox'u çalıştır
  Process.run('start firefox', [], runInShell: true);

  //  Chrome'u URL ile çalıştır
  //  Process.run('start chrome google.com.tr', [], runInShell: true);

  //  Chrome'u URL ile gizli modda çalıştır
  //  Process.run('start chrome google.com.tr ', ['-incognito'], runInShell: true);
  //  Process.run('start chrome google.com.tr -incognito', [], runInShell: true);

  //  Çalışan programlar listesi
/* Process.run('tasklist', [], runInShell: true)
      .then((list) => stdout.writeln(list.stdout)); */

/*   Process.start('tasklist', [], runInShell: true).then((list) => stdout.writeln(
      list.stdout
          .transform(utf8.decoder)
          .transform(LineSplitter())
          .listen((data) => stdout.writeln(data)))); */

  //  Çalışan belli bir isme ait tüm programları kapat
/*   Process.run('taskkill /im firefox.exe', [], runInShell: true)
      .then((list) => stdout.writeln(list.stdout)); */
}
