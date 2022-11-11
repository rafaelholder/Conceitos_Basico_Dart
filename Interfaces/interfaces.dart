///
///Implementação de interfaces
/// interfaces podem ser implementadas em classes.
/// Classe só poder tem uma herança, mas podem ter varias
/// interfaces implementadas.
///

import 'candidato.dart';

void main(List<String> args) {
  var bolsonaro = Cadidato('Bolsonaro', ideologia: 'Direita', partido: 'PL');
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'O que é golden shower?'
    ..escreverPost()
    ..ideologiaPolitica();
}
