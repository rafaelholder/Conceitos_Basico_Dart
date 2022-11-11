import 'dart:io';

///
/// Cont é inicializada em tempo de compilção, deve ser
/// declarada com valor constante
/// Em coleções const, todo o conteudo deve ser constante
///
/// Objeto Imutavel:
///   - contrutor deve ser constante
///   - Variaveis devem ser final ou static const
///

void main(List<String> args) {
  const pi = 3.14;
  print('Digite o raio');
  double? raio = double.tryParse(stdin.readLineSync()!);
  double area = pi * (raio! * raio);
  print('Area = $area');
}
