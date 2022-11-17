import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/posts.dart';

///
/// - PATCH ATUALIZA AS CHAVES DENTRO DO OBJETO POST
///

jsonPatch() async {
  print('\nPATCHS com json\n');

  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  //DECODE
  Map<String, dynamic> parsedJson = {
    'id': 1,
    'title': 'Post novo teste',
    'userId': 100,
  };

  var objeto = Posts.fromJson(parsedJson);

  //USO DO OBJETO
  print('USO DO OBJETO: ${objeto.title}');

  //ENCODE
  String toJson = jsonEncode(objeto);

  try {
    var response = await http.patch(
      url,
      body: toJson,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}');
      print('\nBODY: ${response.body}');
    } else {
      throw Exception(
          'Erro ao efetuar PATCH: StatusCode: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
