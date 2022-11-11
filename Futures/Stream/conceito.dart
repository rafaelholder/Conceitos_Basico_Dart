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

conceito() {
  print('--Conceitos Streams--');

  var lista = <dynamic>[];

  // Controlador
  var controlador = StreamController<dynamic>();
  // Stream
  var stream = controlador.stream;

  // Inscrição de ouvintes na stream
  stream.listen((onData) {
    print('Evento: $onData');
    lista.add(onData);
  }).onDone(() {
    print('Stream finalizada');
    print('Lista: $lista');
  });

  //Adcionando eventos na Stream.
  controlador.sink.add('Rafael');
  controlador.sink.add(10);
  controlador.sink.add('Duda');
  controlador.sink.add(3.8);
  controlador.sink.add(true);
  controlador.sink.add(!true);
  //Fechar o controlador. Assim podendo ser acessado o OnDone da stream.
  controlador.close();

  print('Monitorando stream');
}
