///REDUCE: Compara os elementos da coleção retornando 1 unico elemento resultante
/// Ao interagir com elementos, o indice2 0 se torna o anterior e o indice 1 se torna o atual.
/// Reduce soma os items da coleção de 2 em 2.
/// EX: lista[1,2,3,4] => lista.reduce(anterior,atual)
///       => 1 + 2 = 3 => 3+4 = 7 => total = 10;
listReduce() {
  print('List REduce');

  List<int> numerosPares = List.generate(8, (i) => i * 2);
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual; // Retorno será o proxino anterior!
  });
  print(resultado);
}
