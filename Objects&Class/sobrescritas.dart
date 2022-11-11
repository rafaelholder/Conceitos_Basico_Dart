import 'Classes_Sobreescritas/ornitorrinco.dart';

///
///Override/Sobreescrita
///
///Classes abstratas são classes modelos
/// onde as funções não precisam ter escopo
///
///

void main(List<String> args) {
  var perry =
      Ornitorrinco('perry, o ornitorrinco', 'M', docil: true, idade: '21');
  print('Nome: ${perry.nome}, Idade: ${perry.idade}\n'
      'Tem coluna: ${perry.coluna ? 'Vertebrado' : 'Invertebrado'}\n'
      'Desenvolvimento: ${perry.desenvolvimento}');

  perry
    ..dormir()
    ..alimentar()
    ..reproduzir();
}
