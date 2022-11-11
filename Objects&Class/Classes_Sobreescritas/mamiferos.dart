import 'animal.dart';

abstract class Mamiferos extends Animal {
  String? sexo, desenvolvimento;
  Mamiferos.placentarios(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentario';
  }
  Mamiferos.marsupiais(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Placentario + bolsa externa';
  }
  Mamiferos.monotremados(this.sexo, idade, {docil})
      : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }
  void alimentar() {
    print('Come feito um ');
  }
}
