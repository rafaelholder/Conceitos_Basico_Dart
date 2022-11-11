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

metodos() async {
  print('-- Stream metodos e ouvintes --');

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1)
      .take(5)
      .asBroadcastStream();

  // Modificando stream para receber números menores que 5 e pular os
  // números maiores que 3, e ao fim mapear e transformar os elementos em
  // Strings com duas casa decimais e um zero a esquerda(1 = 01).
  stream = stream
      // stream recebe a modificação.
      .takeWhile((e) => (e <= 5))
      .skipWhile((e) => (e >= 3))
      .take(3)
      .map((e) => e.toString().padLeft(2, '0'));

  //Ouvintes
  stream.listen(
    (OnData) {
      print('Listen: $OnData');
    },
    onDone: () {
      print('Stream finalizada');
    },
  );

  /*
  stream.forEach((e) => print('ForEach: $e'));

  await for (dynamic evento in stream) {
    print('Evento: $evento');
  }
  
  List<dynamic> eventos = await stream.toList();
  print(eventos);
  */

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}
