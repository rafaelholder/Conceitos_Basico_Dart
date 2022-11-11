//Criando Arrays\listas
import 'dart:io';

void listaNome() {
  
  bool condicao = true;
  List<String> listaNome = []; // Tipagem e Declaração de Array\Lista.
  // List<tipo_do_array> Nome_var = [N]. Onde N é o número de itens. 
  //Índices de arrays vão de 0 a N. Onde 0 é o primeiro e N será o ultimo.

  while(condicao){
    
    print("Total de nomes na lista: ${listaNome.length}\n"); //.Length mostra a quantidades de coisas armazenadas no Array.
    print("Digite o nome, 'imprimir' para ver a lista ou '0' para finalizar: ");
    String text = stdin.readLineSync()!; //Entrada de dados para array. A '!' é uma null-check.
    
    if(text == '0'){
      print("-----------------PROGRAMA FINALIZADO-----------------");
      condicao = false;
    }
    else if(text == 'imprimir'){
      print("\x1B[2J\x1B[0;0H"); // Comando para limpar o terminal após digitação.
      for(var i = 0; i < listaNome.length; i++) {
        print("Nome ${i+1}': ${listaNome[i]}"); }
        //$i Imprime o Indice I(0 a N_maximo). ${listaCompras[i]} Imprime o conteudo guardado no indice i.
    }
    else {
      listaNome.add(text); 
      // .add Adiciona um item ao array na prox posição possível ou em alguma especifica. 
      //listaNome.removeAt(n) remove um item no array. Onde N é o indice desse item.
      print("\x1B[2J\x1B[0;0H"); // Comando para limpar o terminal após digitação.
    }
  }
}