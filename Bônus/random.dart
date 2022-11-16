// ignore_for_file: unused_local_variable

import 'dart:math';

void main(List<String> args) {
  print('Random \n');

  var random = Random();
  var min = 0, max = 10;

  for (var i = 0; i < 3; i++) {
    print(min + Random().nextInt(max));
    //print(Random().nextDouble().toStringAsFixed(2));
    //print(random.nextBool());
  }

  print('--------------------');

  print(Utilidades.criarString(10));
}

class Utilidades {
  static const _alfabeto =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';

  static String criarString(int numeroLetras) {
    var random = Random(DateTime.now().millisecondsSinceEpoch);
    String resultado = '';
    for (var i = 0; i < numeroLetras; i++) {
      resultado += _alfabeto[random.nextInt(_alfabeto.length + 1)];
    }
    return resultado;
  }
}
