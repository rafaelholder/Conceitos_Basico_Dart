import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/users.dart';

jsonGet() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print('\nStatus code: ${response.statusCode}');
      //print('\nBody: ${response.body}');

      //DECODE
      List<dynamic> parsedJson = jsonDecode(response.body);
      print('\nParsed Json DECODADO: $parsedJson');

      var objeto = Users.fromJson(parsedJson);
      //USO DO OBJETO
      print('\nUso Do Objeto: '
          '${objeto.users.map((e) => e.address!.geo!.lat).toList()}\n');

      //ENCODE
      List<dynamic> map = objeto.toJson();
      String toJson = jsonEncode(map);
      print('\nToJson ENCODADO: $toJson');
    } else {
      throw Exception('Erro ao obter dados: ${response.statusCode}');
    }
  } catch (e) {
    print('Exceção: $e');
  }
}
