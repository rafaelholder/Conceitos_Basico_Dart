void main(List<String> args) {
  int contador = 0;

  do {
    print('doWhile: $contador');
    contador++;
  } while (contador <= 5);

  loop_1:
  for (int i = 1; i <= 2; i++) {
    print('Loop_1: i: $i');
    loop_2:
    for (int j = 0; j <= 3; j++) {
      print('Loop_2: j: $j');
      if (i == 1 && j == 1) continue loop_1;
      if (i == 2 && j == 2) continue loop_2;
      print('Loop completo');
    }
  }

  List<int> numbers = [1, 2, 3, 4, 5, 6];

  for (var num in numbers) {
    print('forin: $num');
  }
}
