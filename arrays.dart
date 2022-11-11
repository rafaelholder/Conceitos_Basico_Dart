//Criando Arrays\listas
import 'dart:io';

void main() {
  
  bool condicao = true;
  List<String> listaNome = []; // Tipagem e Declaração de Array\Lista.
  // List<tipo_do_array> Nome_var = [N]. Onde N é o número de itens. 
  //Índices de arrays vão de 0 a N. Onde 0 é o primeiro e N será o ultimo.

  while(condicao){
    
    print("Digite o nome ou '0' para finalizar: ");
    String text = stdin.readLineSync()!; //Entrada de dados para array. A '!' é uma null-check.
    
    if(text == '0'){
      print("-----------------PROGRAMA FINALIZADO-----------------");
      condicao = false;
    }
    else listaNome.add(text); 
    // .add Adiciona um item ao array na prox posição possível ou em alguma especifica. 
    //listaNome.removeAt(n) remove um item no array. Onde N é o indice desse item.
    
    print("\nNomes digitados foram: $listaNome");
    print("Total de nomes na lista: ${listaNome.length}\n"); //.Length mostra a quantidades de coisas armazenadas no Array.
    
  }
    
    

}