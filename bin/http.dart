import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

main() async {
  var url = "https://www.googleapis.com/books/v1/volumes?q={http}";
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['items'][0]['id'];
    print("Number of books about http: $itemCount.");
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }
}
