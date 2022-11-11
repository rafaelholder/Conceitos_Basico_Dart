listEvery() {
  print('List every');

  List<int> inteiros = [0, 1, 2, 3, 4, 5, 6, 7, 8];

  inteiros.forEach((elementInteiros) {
    bool resultado = inteiros.every((elementEvery) => elementInteiros > 0);
    print(
        'item ${inteiros[elementInteiros]} // indice $elementInteiros é maior que 0(zero): $resultado');
  });
}
