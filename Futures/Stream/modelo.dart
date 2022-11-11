// ignore_for_file: unused_local_variable

/*
  Conceito: 
  Stream: Uma forma de monitorar eventos. Ao adicionar eventos na Stream os 
  ouvintes serão notificados
  - Fornecem uma sequência assíncrona de dados. Para processar uma Stream use Await()
  ou listen() 
  - Existem dois tipos de stream: assíncrona única(subscription) ou Transmissão (broadcast)
  - Steam é uma sequência com varios Futures. Ao inves de obter um Future, a Stream 
  informa que há um evento quando ele está pronto/concluido
  - STREAM é o fluxo que a classe SteamController() está gerenciando.
  - ADD(): adiciona eventos na stream notificando os ouvintes que estão monitorando
  - LISTEN():
    - Escuta/Inscreve um ouvinte na Stream.
    - OnData: notifica o assinante que eventos de dados da Stream. Nada ocorre se for nulo
    - OnError: Tratamento de eventos com erro e possivel rastreamento com Stack Trace
    Se omitido, erros poderão ser considerados exceptions.
    - OnDone: Evento chamado quando a Stream é fechada/finalizada.
    - cancelOnError: Função é cancelada automaticamente ao receber um erro.
 
*/

import 'dart:async';

class Contador {
  var contagem = 1, termino, erro;

  final controlador = StreamController<int>();

  Sink<int> get sink => controlador.sink; //Criando interfaces sink e stream
  Stream<int> get stream => controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      contagem < termino ? sink.add(contagem) : sink.close();
      contagem++;
      if (contagem == erro) controlador.addError('Erro intencional');
      if (contagem > termino) timer.cancel();
    });
  }
}

model() {
  print('-- Stream model --');

  //Stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

  //Inscrição de ouvintes/eventos na stream.
  final inscrito_1 = minhaStream.listen(
    (OnData) {
      print('(1) Inscrito/Evento: $OnData');
    },
    onError: (erro) {
      print('(1) Inscrito: $erro');
    },
    cancelOnError: false,
    onDone: () {
      print('(1) Incritos/Eventos completos!');
    },
  );

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  //Modificar eventos
  final inscricao_2 = minhaStream.where(pares).map(mapear).listen(
        (OnData) {
          print('(2) Inscrito/Evento : $OnData');
        },
        onError: (erro) {
          print('(2) Inscrito: $erro');
        },
        cancelOnError: false,
        onDone: () {
          print('(2) Incritos/Eventos completos!');
        },
      );
  //Gerenciar inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(
      Duration(seconds: i),
      () {
        if (i == 1) inscrito_1.pause();
        if (i == 2) inscrito_1.resume();
        if (i == 3) inscrito_1.cancel();
      },
    );
  }
}
