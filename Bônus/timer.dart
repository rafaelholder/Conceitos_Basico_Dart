/*
  Timer é um temporizador com uma duração e uma função a ser executada após
  esse tempo.
  Duração deve ser uma instância de Duration.
*/

import 'dart:async';

int contador = 0;

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.millisecond}';
  return hora;
}

void main(List<String> args) {
  print('Timer\n');

  print('Compilado as ${tempoAgora()}');
  Timer.run(() => print('Executado as ${tempoAgora()}'));
  Timer(
    Duration(seconds: 2),
    (() => print('Apos 2 segundos ${tempoAgora()}')),
  );

  Timer.periodic(
    Duration(seconds: 2),
    (Timer timer) {
      contador++;
      if (contador == 4) print('Apos 4 segundos: ${tempoAgora()}');
      if (contador == 5) {
        print('Finalizado apos 5 segundos: ${tempoAgora()}');
        timer.cancel();
      }
    },
  );
}
