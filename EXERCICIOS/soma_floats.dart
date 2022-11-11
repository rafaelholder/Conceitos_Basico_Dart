import 'dart:io';

somaFloat(double x, double y) {
  return (x + y);
}

void main(List<String> args) {
  print('Digite dois numeros reais para soma-los');
  double? x_float = double.tryParse(stdin.readLineSync()!);
  double? y_float = double.tryParse(stdin.readLineSync()!);

  double result = somaFloat(x_float!, y_float!);
  print('Resultado da soma: $result');
}
