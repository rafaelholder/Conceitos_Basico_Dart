import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/posts.dart';

///
/// - PUT ATUALIZA OS OBJETOS CRIADOS PELO POST
///

jsonPut() async {
  print('\nPUTS com json\n');

  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  //DECODE
  Map<String, dynamic> parsedJson = {
    'id': 1,
    'title': 'Post novo teste',
    'body': 'funcionou de uma forma diferenciadamente diferenciada',
    'userId': 100,
  };

  var objeto = Posts.fromJson(parsedJson);

  //USO DO OBJETO
  print('USO DO OBJETO: ${objeto.title}');

  //ENCODE
  String toJson = jsonEncode(objeto);

  try {
    var response = await http.put(
      url,
      body: toJson,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
    );
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}');
      print('\nBODY: ${response.body}');
    } else {
      throw Exception(
          'Erro ao efetuar PUT: StatusCode: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
