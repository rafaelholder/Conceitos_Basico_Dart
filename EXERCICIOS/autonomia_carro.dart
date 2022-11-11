import 'dart:io';

num autonomia(double km_anterior, double km_atual, double litros) {
  num kms_percorridos = km_atual - km_anterior;
  double autonomia = kms_percorridos / litros;
  return autonomia;
}

void main(List<String> args) {
  print('Digite a quantidade de km antes de começar o percurso: ');
  double? km_anterior = double.tryParse(stdin.readLineSync()!);
  print('Agora digite a quilometragem atual: ');
  double? km_atual = double.tryParse(stdin.readLineSync()!);
  print('Quantidade de litros consumida:');
  double? litros = double.tryParse(stdin.readLineSync()!);

  num result = autonomia(km_anterior!, km_atual!, litros!);
  print('Autonomia de: $result KM/L');
}
