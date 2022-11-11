/// Singletons são padrões de projeto para que exista apenas uma
/// instância da classe.
/// o Construtor nomeado privado sem o construtor default impede que
/// sejam criadas\instanciada novos atributos ou classes.
///
/// Podemos alocar as instancias nas variaveis, mas não podemos
/// novas instancias.
///
/// Static
///   - A instância pode ser acessada diretamente.
///

void main(List<String> args) {
  PessoaStatic.instancia.nome = 'rafael';
  print(PessoaStatic.instancia.nome);

  var pessoaTesteInstancia = PessoaStatic.instancia;
  pessoaTesteInstancia.nome = 'carluxo';
  print('NOme da pessoaInstancia = ${pessoaTesteInstancia}');
}

class PessoaStatic {
  static final PessoaStatic instancia = new PessoaStatic._construtorNomeado();
  String? nome;
  PessoaStatic._construtorNomeado();
}
