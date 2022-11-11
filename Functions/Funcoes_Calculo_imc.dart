import 'dart:io';

void main() { //Função main Principal.
    receberAlturaPeso(); // Chamada da função para digitar altura e peso
}

receberAlturaPeso(){ //função para digitar altura e peso

  print("--Digite sua altura: ");
    var input_altura = stdin.readLineSync();// Input de dados na var input_altura 
    var altura = double.tryParse(input_altura ?? "");// Conversão de String em double. Tem que existir quando há uma entrada de dados, senão da problema de Null Safety
       if(altura == null || altura < 0)// Verificador de nulo.
        print("Altura Invalida.");
  
  print("--Agora o seu peso: ");
    var input_peso = stdin.readLineSync(); // Input de dados na var input_peso.
    var peso = double.tryParse(input_peso ?? "");//Conversão de String em double. Tem que existir quando há uma entrada de dados, senão da problema de Null Safety
      if(peso == null || peso < 0)// Verificador de nulo.
        print("Peso invalido");

  double imc = calculoImc(altura!, peso!); // Declaração de var IMC e chama a Função para calcular e retornar IMC;
  imprimirImc(imc);//Chamdada de Função para imprimir o IMC.
}

double calculoImc(double altura, double peso){//Função para calcular e retornar IMC
  return peso/(altura*altura);// ! diz ao compilador que temos certeza que as var's não serão nulas.
}

imprimirImc(double imc){//Função para imprimir o IMC
    if(imc <= 18.5)
      print("Você está abaxio do peso.");
    else if(imc > 18.5 && imc <= 24.9)
      print("Você está com peso normal");
    else if(imc > 25 && imc <= 29.9)
      print("Você está com sobrepeso. Obeso grau I");
    else if(imc > 30 && imc <= 39.9)
      print("Você está obeso grau II.");
    else if(imc >= 40)
      print("Obesidade Grau III"); 

}