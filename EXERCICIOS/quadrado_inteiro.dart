import 'dart:io';
import 'dart:math';

num quadrado_de_int(int number) {
  return sqrt(number);
  //return pow(number, 2);
  //return number * number;
}

void main(List<String> args) {
  print('Digite um número para calcular seu quadrado');
  int? number = int.tryParse(stdin.readLineSync()!);
  num result = quadrado_de_int(number!);
  print('resultado: $result');
}
