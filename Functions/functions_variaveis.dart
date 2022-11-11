void main(List<String> args) {
  print('Funções das variaveis\n');

  num pi = 3.14;
  print(pi.floor());
  print(pi.round());
  print(pi.ceil());
  print(pi.clamp(3, 3.1));
  print(pi.compareTo(3));

  print(pi.remainder(3));
  print(pi.toInt());
  print(pi.truncate());
  print(pi.isFinite);
  print(pi.isNegative);
  print((pi / 0).isInfinite);
  print(12.gcd(16));
  print(2 ~/ 5); // Mostra o resultado da div em formato INT
  var f = null;
  f ??= 3; // Verifica o valor da esquerda e, se ele for nulo, atribui o valor
  // que está a direita.
  var nome = null;
  print('nome é: ${nome ?? 'dudosa'}');
}
