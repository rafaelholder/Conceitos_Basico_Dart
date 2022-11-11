import '../Interfaces/cidadao.dart';
import '../Interfaces/postagem.dart';
import '../Interfaces/presidencialvel.dart';

///
///Mixin permite implementar metodos e atributos de outras classes
///
///-deve ser implementada antes das interfaces
///-Não pode implementar uma classe que extenda e extender de uma classe mixin
///-Pode ser implementada a partir de uma classe concreta ou abstrata
///-pode implementar um ou mais mixin e não é obrigatorio usar todos os metodos e atributos
///-as classe que possuem metodos iguais serão sobreescritas em ordem até a classe herdeira
///
///mixON
/// -É obrigatorio declarar sua classe com mixin
/// -Restrige o uso do mixin a clases que estendem ou implementam a classe declarada

void main(List<String> args) {
  var bolsonaro = Cadidato('Bolsonaro', ideologia: 'Direita', partido: 'PL');
  bolsonaro
    ..objetivo = 'Ganhar do lula taokei'
    ..objetivosPessoais()
    ..postagem = 'Midia lixo'
    ..escreverPost()
    ..ideologiaPolitica()
    ..depositar = 36000
    ..prestacaoDeContas();
}

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoDeContas();
}

abstract class conta {
  double? _saldo, salario = 33000;
  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoDeRenda() => _saldo! / 12 < salario!;
}

class Cadidato extends Cidadao
    with Elegivel, conta
    implements Postagem, Presidenciavel {
  String? objetivo;

  Cadidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  String? ideologia;
  String? partido;
  String? postagem;

  @override
  void escreverPost() {
    print('Postagem de $Nome no twitter: $postagem');
  }

  @override
  void ideologiaPolitica() {
    print('O candidato $Nome tem a ideologia de $ideologia'
        ' e esta concorrendo pelo partido $partido');
  }

  @override
  void objetivosPessoais() {
    print('$Nome tem o objetivo de $objetivo');
  }

  @override
  void prestacaoDeContas() {
    elegivel = super.declaracaoDeRenda();
    if (elegivel) {
      print('Candidato elegivel');
    } else {
      print(
          'Candidato não elegivel, pois não prestou suas contas corretamente');
    }
  }
}
