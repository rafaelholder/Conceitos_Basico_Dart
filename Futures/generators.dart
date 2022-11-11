///
/// Generators são funções geradoras que produzem sequencias de valores usando:
/// - Funções síncronas: retornam Iterable
/// - Funções assíncronas: retornam Stream

// Yield: Utilizado em funções geradoras síncronas e assíncronas.
// Adiciona/'Retorna' um valor ao fluxo de saída da função assíncrona e
// retornando sem encerrar a função.

funcoesGeradoras() {
  print('Funções Geradoras');

  Iterable<int> funcaoSincrona(int repeticaoMax) sync* {
    int i = 0;
    while (i < repeticaoMax) yield ++i;
  }

  print(funcaoSincrona(5));

  Stream<int> funcaoAssincrona(int repeticaoMax) async* {
    int i = 0;
    while (i < repeticaoMax) yield ++i;
  }

  funcaoAssincrona(3).forEach((e) => print(e));
}

funcoesGeradorasRecursivas() async {
  print(' -- Funções Geradoras Recursvias --');

  Iterable<int> funcaoSincrona(int repeticaoMax) sync* {
    for (int i = 1; i <= repeticaoMax; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMax);
    }
  }

  print(funcaoSincrona(3));

  Stream<int> funcaoAssincrona(int repeticaoMax) async* {
    for (int i = 1; i <= repeticaoMax; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMax);
    }
  }

  funcaoAssincrona(3).forEach((e) => print(e));
}

tratamentoExcecoes() async {
  print('-- Funçoes geradoras Tratamento de Exceções --');

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;
    await for (var valor in stream) {
      soma += valor;
    }
    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (int i = 1; i <= termino; i++) {
      if (i == erro) {
        throw Exception('Exception intencional');
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);

  var soma = await streamSoma(stream);
  print(soma);
}

void main(List<String> args) {
  //funcoesGeradoras();
  print('-----------------');
  //funcoesGeradorasRecursivas();
  print('-----------------');
  tratamentoExcecoes();
}
