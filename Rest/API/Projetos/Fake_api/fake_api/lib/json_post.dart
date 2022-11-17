import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fake_api/models/posts.dart';

///
/// - POST CRIA UM NOVO OBJETO, ONDE SE PASSA A URL, O CORPO(BODY),
///   E OS HEADERS(SEGUIR A CONFIGURAÇÃO DO SITE).
///

jsonPost() async {
  print('\nPosts com json\n');

  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  //DECODE
  Map<String, dynamic> parsedJson = {
    'title': 'Post novo teste',
    'body': 'funcionou de uma forma diferenciadamente diferenciada',
    'userId': 1,
  };

  var objeto = Posts.fromJson(parsedJson);

  //USO DO OBJETO
  print('USO DO OBJETO: ${objeto.title}');

  //ENCODE
  String toJson = jsonEncode(objeto);

  try {
    var response = await http.post(
      url,
      body: toJson,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    if (response.statusCode == 201) {
      print('\nSTATUSCODE: ${response.statusCode}');
      print('\nBODY: ${response.body}');
    } else {
      throw Exception(
          'Erro ao efetuar post: StatusCode: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
