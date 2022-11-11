abstract class Animal {
  String? idade;
  bool docil;
  bool coluna = true;

  Animal.vertebrados(this.idade, {required this.docil}) {
    this.coluna = true;
  }
  Animal.inveretebrados(this.idade, {required this.docil}) {
    this.coluna = false;
  }
  void dormir() {
    print('zzzzzz dormindo');
  }

  void reproduzir() {
    print('Reproduz feito');
  }
}
