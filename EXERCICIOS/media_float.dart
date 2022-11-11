import 'dart:io';

num mediaDeFloat(double x, double y, double z) {
  num media_aritimetica = (x + y + z) / 3;
  return media_aritimetica;
}

void main(List<String> args) {
  print('Digite 3 números para calcular a média entre eles');
  double? x_float = double.tryParse(stdin.readLineSync()!);
  double? y_float = double.tryParse(stdin.readLineSync()!);
  double? z_float = double.tryParse(stdin.readLineSync()!);
  num result = mediaDeFloat(x_float!, y_float!, z_float!);
  print('Resultado da média é: $result');
}
