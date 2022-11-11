/*
  Assert: usa logica booleana para testa afirmações
  no modo debug. Try/Catch pode ser usado para tratar exceção

  Test:
  - Execute os testes na pasta raiz usando 'pub run test'
  - podemos testar variaveis, funções e efetuar testes em grupos

  Sintaxe:
    test('descrição', (){
      expect(valorReal, valorEsperado)
    });
*/

import 'package:projeto_test/projeto_test.dart' as projeto_test;

void main(List<String> arguments) {
  print('---Testes---');

  print('Hello world: ${projeto_test.calculate()}');
  print('Converter em list: ${projeto_test.converterEmList('rafael holder')}');

  //FORA DO TRY/CATCH GERA EXCEÇÃO
  String? texto;
  assert(texto == null);

  try {
    String telefone = '123456789';
    assert(telefone.length == 9, 'Telefone deve ter 9 digitos.');
  } catch (e) {
    print('Exceções: $e');
  }
}
