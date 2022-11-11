import 'cidadao.dart';
import 'postagem.dart';
import 'presidencialvel.dart';

class Cadidato extends Cidadao implements Postagem, Presidenciavel {
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
}
