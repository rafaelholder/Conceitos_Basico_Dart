/* 
  Sincronas: 
  - Operações síncronas: Bloqueia a execução até que seja concluida
  - Funções síncronas: Executa somente operações síncronas.

  Assíncronas:
  - Operações assíncronas: Permite executar outras operações enquanto são processadas
  - Funções assíncronas: Executam ao menos uma operação e operações síncronas.

  Await;
  - Indica a espera de uma operação assíncrona; conclusão de future.

  Async:
  - Deve ser usada em toda função que tenha operações assíncronas, Await.
*/

/// FUNÇÔES ASSÍNCRONAS
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String>? status(int tempo) {
  try {
    if (tempo < 4) throw Exception('Tempo insuficiente para carregadar');
    return Future.delayed(
        Duration(seconds: tempo), () => 'Primeira task concluida');
  } catch (e) {
    print('Catch: $e');
    return null;
  }
}

///
///FUNÇÂO SÍNCRONA
///
void contagem({int segundo = 10}) {
  print('Carregando');
  for (var i = 1; i <= segundo; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 10}%');
      if (i == segundo) print('\nCarregamento concluido');
    });
  }
}

void main() async {
  print('Async Await');

  contagem(segundo: 3);

  print(await tarefa(tempo: 6));
}
