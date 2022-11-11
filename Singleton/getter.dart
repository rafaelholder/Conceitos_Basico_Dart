/// Singletons são padrões de projeto para que exista apenas uma
/// instância da classe.
/// o Construtor nomeado privado sem o construtor default impede que
/// sejam criadas\instanciada novos atributos ou classes.
///
/// Podemos alocar as instancias nas variaveis, mas não podemos
/// novas instancias.
///
/// Getter
///   -a instancia é privada e acessada atraves do get.

void main(List<String> args) {
  print(PessoaGetter.instancia.nome);
  //Printa nulo primeiro, pois nada foi definido a variavel nome.
  var getNome = PessoaGetter.instancia.nome = 'Duda';
  // Declaração de conteudo da instancia.
  print(PessoaGetter.instancia.nome);
  //Pegando direto da instancia
  print(getNome);
  //Pegando o nome direto do singleton getNome
}

class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorNomeado();
  String? nome;

  PessoaGetter._construtorNomeado();

  static PessoaGetter get instancia {
    return _instancia;
  }
}
