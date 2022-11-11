import 'dart:io';

double calcDobro() {
  print('Digite um number para calcular o seu dobro:');
  double? number = double.tryParse(stdin.readLineSync()!);
  double? result = number! * 2;
  return result;
}

void main(List<String> args) {
  double result = calcDobro();
  print('Resultado da multiplicação igual a $result');
}
