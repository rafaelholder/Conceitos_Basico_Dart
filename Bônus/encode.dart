/*
  UTF8:
    - Binario que representa qualquer caracter universal.
  
  base64:
    - Codificação de dados para tranfêrencia na internet.
    -  https://www.base64encode.org/
*/

import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print('BASE64 e UTF8');

  print('\nDigite o seu email para codificar ele...');
  String email = stdin.readLineSync()!;

  //ENCODE
  final e_bytes = utf8.encode(email);
  String codificado = base64.encode(e_bytes);
  print('Email codificado em base64: $codificado\n');
  print('\nEmail codificado em UTF8: $e_bytes\n');

  print('-----------------------------');

  //DECODE
  final decode_bytes = base64Decode(codificado);
  String decodificado = utf8.decode(decode_bytes);
  print('Email DECODIFICADO em base64 -> utf8: $decode_bytes\n');
  print('Email DECODIFICADO em base64-> utf8->linguagem natural:$decodificado');
}
