class Pessoa {
  late String nome;
  Pessoa(this.nome);
}

main(List<String> arguments) {
  var gaspar = new Pessoa("Gaspar");
  var aleandro = new Pessoa("Aleandro");
  var leandro = new Pessoa("Leandro");
  var gina = new Pessoa("Gina");

  var lista = [7, 34, 1, 0, 90, 45, 10]; //tamanho/comprimento = 7
  var soLista = <String>[];
  soLista.add("Jaime");
  soLista.add("Bond");
  soLista.add("Gaspar");

  var listaDePessoas = <Pessoa>[];
  listaDePessoas.add(aleandro);
  listaDePessoas.add(leandro);
  listaDePessoas.add(gina);
  listaDePessoas.add(gaspar);

  for (int i = 0; i < listaDePessoas.length; i++) {
    print("Lista de nomes ${listaDePessoas[i].nome}");
  }
  for (int i = 0; i < lista.length; i++) {
    print("Lista de numeros ${lista[i]}");
  }

  //print(lista[2]);
//  print(lista.length);
//  print(lista[lista.length - 1]); //Vai dar o ultimo indice da nossa lista
//  for (var i = 0; i < lista.length; i++) {
//    print("Indice $i contem ${lista[i]}");
//
//  }
}
