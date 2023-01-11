import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map> getCadewars() async {
  Uri url = Uri.parse(
      'https://codeschoolhomeworkapi.pythonanywhere.com/codewars/group-all/CodeWars-2023A/');

  http.Response response = await http.get(
    url,
  );
  Map lesson = jsonDecode(response.body);
  return lesson["problems"];
}
