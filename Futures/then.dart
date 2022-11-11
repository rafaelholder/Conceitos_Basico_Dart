///
///THEN: Registra callbacks que serão chamadas quando o future for concluido.
/// *onValue: Valor passado ao termino do future.
/// *catchError: se omitido, vira uma exeção
///   *test: se qualquer logica retornar true é lançada a exception
/// *whenComplete: chama a função anonima ao termino do future

///
///FUNÇÔES ASSINCRONAS
///
Future<String> tarefa({int tempo = 1}) async {
  return status(tempo).then((msg) {
    return '\nStatus: $msg';
  }).catchError((onError) {
    print('catchError: $onError');
  },
      test: (onError) =>
          onError is Future && onError.runtimeType == Future).whenComplete(() {
    print('Future completa');
  });

  //var msg = status(tempo);
  //return 'Status: $msg';
}

Future<String> status(int tempo) async {
  return Future.delayed(
      Duration(seconds: tempo), () => Future.error('Erro intencional'));
  //return Future.delayed(Duration(seconds: tempo), () => 'Primeira task concluida');
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

void main(List<String> args) {
  print('Then\n');
  contagem(segundo: 3);

  tarefa(tempo: 4).then((onValue) => print(onValue));
}
