// ignore_for_file: equal_elements_in_set, unnecessary_type_check, unused_local_variable

main() {
  Set<int> conjunto = {1, 2, 3, 4, 4, 5, 5};

  print(conjunto.length); //Vai mostrar '5', pois um set é um
  //conjunto que não aceita repetições.
  print(conjunto is Set); // Mostra 'true'.

  Map<String, int> idadeAlunos = {
    'rafo': 19,
    'duda': 20,
    'tetheo': 99,
  };
  for (var chave in idadeAlunos.keys) {
    print('chave = $chave');
  }
  for (var valor in idadeAlunos.values) {
    print('valor = $valor');
  }
  ;

  const x = 19; // X não vai puder ser alterada, pois é uma constante.
}
