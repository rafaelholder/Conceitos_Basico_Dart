// ignore_for_file: non_constant_identifier_names

import 'dart:io'; //Biblioteca de input\output

bool condicao = true; 
List <Map<String, dynamic>> cadastros = []; //Declaração de uma lista de maps global.

void cadastroBasico() {
  
  while(condicao){
    print("---Digite um Comando--- \nimprimir, cadastro, sair.");
    String comand = stdin.readLineSync()!; //Recebimento de comando. ! = String não contem nulo.
    
      if(comand == 'sair'){ finalizar_programa();}

      else if(comand == 'imprimir'){ 
        for(var i = 0; i < cadastros.length; i++){ 
          print("${cadastros[i]}"); 
        }
      }

      else if(comand == 'cadastro'){
        print("\x1B[2J\x1B[0;0H"); // limpa a tela
        cadastrar();// chamada de função para cadastrar.
      }
      else {print("-----Comando invalido-----\n");}
  }
}
cadastrar(){
  Map<String, dynamic> cadastro = {}; // Declaração de maps e seus tipos <String, dynamic>. Map precisa ser preenchido.

  print("---Digite o seu Nome---");
  cadastro["nome"] = stdin.readLineSync(); // declaração da key(cadastro = ["nome"] e input do seu conteudo.

  print("---Digite o sua idade---"); 
  cadastro["idade"] = stdin.readLineSync();

  print("---Digite o sua cidade---");
  cadastro["cidade"] = stdin.readLineSync();

  print("---Digite o seu curso---");
  cadastro["curso"] = stdin.readLineSync();

  print("---Digite o seu telefone---");
  cadastro["telefone"] = stdin.readLineSync();

  cadastros.add(cadastro);// Adiciona o conteudo digitado na List<map<>> Global. List <Map<String, dynamic>> cadastros = []; 
  print("\x1B[2J\x1B[0;0H"); // limpa a tela
  print("--Cadastro Concluído--\n");
}
 finalizar_programa(){
  print("\x1B[2J\x1B[0;0H"); // limpa a tela
  print("-----------------PROGRAMA FINALIZADO-----------------");
      condicao = false;
}