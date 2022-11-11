/// Singletons são padrões de projeto para que exista apenas uma
/// instância da classe.
/// o Construtor nomeado privado sem o construtor default impede que
/// sejam criadas\instanciada novos atributos ou classes.
///
/// Podemos alocar as instancias nas variaveis, mas não podemos
/// novas instancias.
///
///FACTORY
/// - É usado para retornar/manter a instancia original
/// - CApaz de retornar valores.

void main(List<String> args) {
  print(PessoaFactory.instancia.nome);

  var pFactory = PessoaFactory();
  pFactory.nome = 'Nani';
  print(pFactory.nome);
}

class PessoaFactory {
  static final PessoaFactory instancia =
      new PessoaFactory._construtorNomeado('Indefinido');
  String? nome;

  factory PessoaFactory() => instancia;
  PessoaFactory._construtorNomeado(this.nome);
}
