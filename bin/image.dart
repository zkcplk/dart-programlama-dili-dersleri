import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image/image.dart';

main() async {
  var response = await http.get(
      'https://pngimage.net/wp-content/uploads/2018/05/eski-araba-png.png');

  var path = 'images/araba.png';
  File(path).writeAsBytesSync(response.bodyBytes);
  print("Resim yüklendi...");

  Image image = decodeImage(File(path).readAsBytesSync());
  Image efekt = vignette(emboss(image));
  print("Efektler uygulandı...");

  Image thumbnail = copyResize(efekt, 600);
  print("Resmin boyutu değiştirildi...");

  var new_path = 'images/araba.jpg';
  File(new_path).writeAsBytesSync(encodeJpg(thumbnail));
  print("Yeni resim oluşturuldu.");
}
