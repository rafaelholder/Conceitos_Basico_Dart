/*
  Conceito
  - Representational State Transfer (Transfêrencia Representacional de Estado)
  - É uma arquitetura que define um conjunto de restrições na criação de web services
  - É uma padronização para que multiplas aplicações possam se comunicar usando 
    o protocolo HTTP.
*/

import 'dart:convert';

import 'class_lista_users.dart';
import 'class_users.dart';

// SERIALIZAÇÃO MANUAL: Biblioteca Json integrada ao dart 'dart:convert'
// SERIALIZAÇÃO Json DIRETA:
// - Sempre usar a serialização em uma variavel para evitar erros
// - IDE não ira avisar os erros na serialização direta. Cabe ao programador verificar
// - Perde recursos estaticos de linguagens
// - Segurança do tipo, autocompletar e execuções fora do tempo de compilação

conversaoDireta() {
  print('JSON conversao direta');

  String jsonData = '''
  {
    "nome" : "rafael",  
    "idade" : "19"
    }
  ''';

  //DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('ParsedJson: $parsedJson');
  String nome = parsedJson['nome'];
  String idade = parsedJson['idade'];
  print('USO/SERIALIZAÇÃO DIRETO: nome: ${parsedJson['nome']} idade: $idade');

  //ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson');
}

/// SERIALIZAÇÃO EM OBJETO: utiliza recursos estaticos da linguagem, tem segurança
/// de tipos, autocompletar e exceções de tempo de compilação

conversaoObjeto() {
  print('JSON CONVERSÃO EM OBJETO');

  String jsonData = '''
  [
    {
    "nome" : "rafael",  
    "idade" : "19"
    },
    {
    "nome" : "duda",
    "idade" : "20"
    }
  ]
  ''';

  ///DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('Parsed json em objetos: $parsedJson');

  ListaUsers listaUsers = ListaUsers.fromJson(parsedJson);
  Usuario usuario =
      listaUsers.usuarios.singleWhere(((e) => e.nome == 'rafael'));
  print('USO/SERIALIZAÇÃO OBJETO: '
      'nome:${usuario.nome} idade: ${listaUsers.usuarios[0].idade}');

  var usuarioNovo = Usuario.fromJson({'nome': 'duda', 'idade': '20'});
  listaUsers.usuarios.add(usuarioNovo);

  //ENCONDE
  List<dynamic> lista = listaUsers.toJson();
  String toJson = json.encode(lista);
  print('ToJSon: $toJson');
}

void main(List<String> args) {
  //conversaoDireta();
  conversaoObjeto();
}
