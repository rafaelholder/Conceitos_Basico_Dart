///FOLD: Compara os elementos da coleção retornando um unico elemento
/// O valor inicial se torna o anterior e o indice 0 se torna o atual
/// Posso setar um valor inicial para começar a soma

listFold() {
  print('LISTA FOLD');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  print('FOLD ADIÇÃO: ');
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print(resultado);

  print('FOLD SUBTRAÇÂO: ');
  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print(resultado);
}
