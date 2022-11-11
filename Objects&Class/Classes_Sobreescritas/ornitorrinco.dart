import 'mamiferos.dart';

class Ornitorrinco extends Mamiferos {
  String? nome;

  Ornitorrinco(this.nome, String sexo,
      {String idade = 'indenfinida', bool docil = true})
      : super.monotremados(idade, sexo, docil: docil);

  @override // Sobreescreve um metodo da classe herdada super
  void dormir() {
    print('Dorme como um agente secreto');
  }

  //@override // Override é opcional, pois só basta ter o mesmo nome que o dart
  //identifica o metodo a ser sobreescrito.
  void alimentar() {
    super.alimentar();
    // Mesclando os metodos da classe pai(mamiferos)
    // com a classe filha(ornitorrinco), assim possibilitando o uso do metodo
    // alimentar() original + o atual
    print('Agente secreto');
  }

  @override
  void reproduzir() {
    print('Reproduz botando ovo');
  }
}
