//Loops em dart com for e while

import 'dart:io';

void main(List<String> args) {  
  //for(var inicializada; condicional; acrecimo){ código }
  
  for(int i = 0; i < 10; i++){ //Loop For\para
    print("Print número $i");
  }

  //while(condição){ Código }
  
  bool condicional = true; // declaração da var booleana(true ou false)
  while(condicional){ // Loop while\Enquanto
    String? text = stdin.readLineSync(); //Declaração da var string?(? = pode receber valor nulo)
      if(text == 'sair'){
        condicional = false;
        print("---PROGRAMA FINALIZADO---");
      }
      else
        print("você digitou: $text");
  }
}