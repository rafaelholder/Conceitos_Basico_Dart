// ignore: unused_import
import 'dart:collection';

LinkedHashSet() {
  print('LINKEDHASHSET');

  Set<int> setInt = Set();
  print('Implementação: ${setInt.runtimeType}');

  setInt.add(12);
  setInt.add(12);
  setInt.add(18);
  setInt.add(21);
  setInt.remove(12);
  print(setInt);
  for (var i = 0; i < setInt.length; i++) {
    print('for: ${setInt.elementAt(i)}');
  }
  for (var elemento in setInt) {
    print('for in: $elemento');
  }
  setInt.forEach((e) => print('for each: $e'));

  Set<int> lista_A = {2, 3, 4, 5, 6, 7};
  Set<int> lista_B = {23, 3, 46, 75, 96, 7};
  print(lista_A.difference(lista_B)); // Diferença entre A e B
  print(lista_A.union(lista_B)); // União dos elementos das listas
  print(lista_A.intersection(lista_B)); // Intersection dos elementos das listas
}

///
///HASHSET é uma lista de elementos unicos e desordenados.
///
HashSet() {
  List<int> hashSet1 = HashSet();
  hashSet1.add(2);
  hashSet1.add(234);
  hashSet1.add(223454);

  print(hashSet1);
}

void main(List<String> args) {
  LinkedHashSet();
}
