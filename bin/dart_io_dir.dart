import 'dart:io';

main() async {
  //  Directory

  var dir = Directory('bin');

  var dirList = dir.list();
  await for (var f in dirList) {
    if (f is File) {
      print('Dosya: ${f.path}');
    } else if (f is Directory) {
      print('Klasör: ${f.path}');
    }
  }
}
