import "package:http/http.dart" as http;
import 'dart:convert';

printRmCharacters() async {
  try {
    final res =  await http.get(Uri.parse('https://rickandmortyapi.com/api/character'),
    );
    var json = jsonDecode(res.body);

    for (var idx = 0; idx < json.length; idx++) {
      print("${json[idx]['name']}");
    }
  } catch (error) {
    return -1;
  }
}