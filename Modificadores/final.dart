import 'dart:io';

///
/// Final é inicializada apenas em tempo de execução e deve ser declarada.
/// Final não pode ser alterada depois de declarada.
///

void main(List<String> args) {
  final double gravidade = 9.8;
  int? tempo = int.tryParse(stdin.readLineSync()!);
  double velocidade = tempo! * gravidade;

  print('Velocidade maxima = $velocidade');
}
