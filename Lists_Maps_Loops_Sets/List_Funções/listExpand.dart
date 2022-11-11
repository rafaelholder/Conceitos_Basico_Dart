listExpand() {
  print('\nList extend\n');

  var lista = [1, 2, 3, 4];

  List<dynamic> listaFlat = lista.expand((elemento) => [elemento]).toList();
  List<dynamic> listaDuplicada =
      lista.expand((elemento) => [elemento, elemento]).toList();
  print('listaFlat: $listaFlat \nLista Duplicada: $listaDuplicada');
}
