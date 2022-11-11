///
///Future: retorna um valor ou erro. Resultado de uma execução
/// assincrona/Futura. Usado para operações como: chamadas http

///Função retorna string
String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future status(int tempo) {
  return Future.delayed(
      Duration(seconds: tempo), () => print('Primeira task concluida'));
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(
      Duration(seconds: tempo), () => print('Segunda task concluida'));
}

void execao({int tempo = 1}) => Future.delayed(
    Duration(seconds: tempo), () => throw Exception('erro intencional'));

void contagem({int segundo = 10}) {
  print('Carregando');
  for (var i = 1; i <= segundo; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 10}%');
      if (i == segundo) print('\nCarregamento concluido');
    });
  }
}

void main(List<String> args) {
  print(tarefa(tempo: 4));
  //Print é executado antes do termino do future, Pois a mesma não estava tipada.
  //Apos a tipagem Future, ela é executada apos a conclusão do future.
  novaTarefa(tempo: 4);
  execao(tempo: 6);
  contagem(segundo: 3);
}
