///
///Mixin permite implementar metodos e atributos de outras classes
///
///-deve ser implementada antes das interfaces
///-Não pode implementar uma classe que extenda e extender de uma classe mixin
///-Pode ser implementada a partir de uma classe concreta ou abstrata
///-pode implementar um ou mais mixin e não é obrigatorio usar todos os metodos e atributos
///-as classe que possuem metodos iguais serão sobreescritas em ordem até a classe herdeira
///
///mixin ON
/// -É obrigatorio declarar sua classe com mixin
/// -Restrige o uso do mixin a clases que estendem ou implementam a classe declarada

abstract class Artista {
  void acao() {
    print('Performa');
  }
}

// mixins
mixin Cantor on Artista {
  void acao() {
    print('Canta');
  }
}

class Dancarino {
  void acao() {
    print('Dança nenem');
  }
}

//Interface
abstract class Acao {
  void executar();
}

// Classes concretas

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compoe funk');

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main(List<String> args) {
  Musico musicista = Musico();
  musicista.executar();
}
