import 'dart:io';

///
/// Static faz com que não precise ser estanciado quando for chamado
/// ou seja, não é preciso criar uma variavel para chamar algum metodo
/// estatico dentro de uma classe/objeto
///
void main(List<String> args) {
  print('Static');

  Calculos selecionadorCalculos = Calculos();
  double? raio = double.tryParse(stdin.readLineSync()!);

  print(selecionadorCalculos.pi);
  print(selecionadorCalculos.areaCiruclo(raio!));

  print('PiEstatico: ${Calculos.piEstatico}');
}

class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCiruclo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) {
    return (piEstatico * (raio * raio));
  }
}
