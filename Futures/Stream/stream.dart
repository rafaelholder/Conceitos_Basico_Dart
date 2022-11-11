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
import 'conceito.dart';
import 'metodos.dart';
import 'modelo.dart';

void main(List<String> args) {
  conceito();

  print('----------------------------------');

  model();

  print('----------------------------------');

  metodos();
}
