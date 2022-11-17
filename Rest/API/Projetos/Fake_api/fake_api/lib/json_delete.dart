import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/posts.dart';

///
/// - DELETE VAI APAGAR O OBJETO ESPECIFICADO
///

jsonDelete() async {
  print('\nDELETES com json\n');

  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  try {
    var response = await http.delete(
      url,
    );
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode}');
      print('\nBODY: ${response.body}');
    } else {
      throw Exception(
          'Erro ao efetuar DELETE: StatusCode: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
