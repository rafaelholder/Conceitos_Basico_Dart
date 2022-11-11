// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:io';

bool condicao = true; 
List<String> listaCompras = []; // Tipagem e Declaração de Array\Lista.
// Variaveis e Arrays declarados fora de uma função ela é global.

void listaDeCompras() {
  
  //print("\nDigite 'imprimir' para visualizar a lista, 'remover' para retirar um item ou '0' para finalizar:");

  while(condicao){
    print("\nDigite 'imprimir' para visualizar a lista, 'remover' para retirar um item ou '0' para finalizar:"
          "\nTotal de itens na lista: ${listaCompras.length}\n");//.Length mostra a quantidades de itens armazenadas no Array.
    print("Digite um produto:");
    String text = stdin.readLineSync()!; //Entrada de dados para array. A '!' é uma null-check.
    if(text == '0'){
      finalizar_prog();
    }
    else if(text == 'imprimir'){ 
      imprimir_lista();   
    }
    else if(text == 'remover'){
      imprimir_lista();
      remover_item();  
    }
    else {
      listaCompras.add(text); 
      print("\x1B[2J\x1B[0;0H"); // Comando para limpar o terminal após digitação.
    } 
  }   
}
imprimir_lista(){
  for(var i = 0; i < listaCompras.length; i++){ 
    print("ITEM $i: ${listaCompras[i]}"); }
    //$i Imprime o Indice I(0 a N_maximo). ${listaCompras[i]} Imprime o conteudo guardado no indice i.  
}

remover_item(){
/* BUG. QUANDO TEM DOIS ITENS OU MENOS NA LISTA NÃO É POSSIVEL REMOVER
Unhandled exception:
RangeError (index): Invalid value: Not in inclusive range 0..1: 2
*/
  print("---Escolha Qual Item Deseja Remover--");
  int item = int.parse(stdin.readLineSync()!); // Entrada de dados para remoção de itens. .parse serve para converter algo em um dos tipos existentes em Dart.
  listaCompras.removeAt(item); //listaCompras.removeAt(i) remove um item no array. Onde i é o indice desse item.
  print("--ITEM REMOVIDO: ${listaCompras[item]}--");     
}

finalizar_prog(){
  print("-----------------PROGRAMA FINALIZADO-----------------");
  condicao = false;
}