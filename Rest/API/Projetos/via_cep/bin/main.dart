// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:via_cep/classe_cep.dart';

Future<void> main(List<String> arguments) async {
  final url_json = Uri.parse('http://viacep.com.br/ws/01001000/json/');

  /* 
  {
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "bairro": "Sé",
  "localidade": "São Paulo",
  "uf": "SP",
  "ibge": "3550308",
  "gia": "1004",
  "ddd": "11",
  "siafi": "7107"
  }
  */

  try {
    var response = await http.get(url_json);
    print('Status: ${response.statusCode}');
    print('Status: ${response.body}');

    //DECODE
    if (response.statusCode == 200) {
      Map<String, dynamic> parsedJson = jsonDecode(response.body);
      Cep cep = Cep.fromJson(parsedJson);

      print('\nParsed Json Map: $parsedJson');
      print('\nObjeto logradouro: ${cep.logradouro}');

      //ENCODE
      Map<String, dynamic> map = cep.toJson();
      String toJson = jsonEncode(map);
      print('\nToJson Encode: $toJson');
    } else {
      throw Exception('\nErro ao obter CEP. \nStatus: {response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}
