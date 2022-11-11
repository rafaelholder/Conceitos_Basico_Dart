listForEach() {
  var array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 23, 4, 8, 9, 32];
  array.forEach((elemento) {
    print('forEach: $elemento');
  });
  array.insert(0 /*indice onde sera inserido */, 1001 /*Valor inserido */);
  array.add(23445);
  //Adciona 23445 na ultima posição do array.
  array.forEach(
    (e) => print('Segundo loop forEach: $e'),
  );
  array.remove(23445);
  //remove o primeiro 23445 do array que ele achar
  array.removeLast();
  //remove o valor do ultimo indice
  array.removeWhere((e) => e == 0);
  //remove onde o elemento 'e' seja igual a 0(zero)
  array.forEach(
    (e) => print('Terceito loop forEach: $e'),
  );
}
