// Importar biblioteca de Input\Output
import 'dart:io';

// Operadores e Funções,
// Concatenação de texto,
//IF e else,
//Operadores aritiméticos
//Operadores Ternarios,
//Entrada de dados com dart.io;

main() {
// Básico de operadores e operações
  var Hello = 'Hello world, Dudosa', idade = 20, nome = 'Dudosa';
  var x = 20, y = 19, soma = x + y, sub = x - y;
  var mult = x * y, div = x / y, resto = x % y;

  print(Hello);
  print(idade);
  print(nome);

  print("Soma é: ${soma}");
  print("Sub é: ${sub}");
  print("multiplicação é: ${mult}");
  print("Divisão é: ${div}");
  print("O Resto é: ${resto}");

// Concatenação de texto
  var duda = "Meu nome " + "é Dudosa!";
  print(duda);

// Estruturas de Decisão IF.
// IF recebe um valor booleano.
// Menor que(<) Maior que(>) Igual (==)
// Maior\igual(>=) Menor\Igual (<=)

//If else
  print('OPERAÇÃO COM IF ELSE');
  var n1 = 6, n2 = 19, istrue = n1 > n2;
  if (istrue)
    print("isso é real e não feike");
  else
    print("isso é feike");

//Operadores ternarios:
//Mesma coisa que if else, porem é mais curto e é usado
//em pequenos trechos de codigo.
// ? = if /// : = else
  print('OPERAÇÕES COM TERNARIOS: : ?');
  print(istrue ? 'Real e não feike' : 'feike');

// Entrada de Dados com stdin.readlineSync()
  print("==== Digite uma idade ====");

  var input = stdin.readLineSync();
  // Função para entrada de dados. entra sempre como uma string
  // e pode ser convertida para outros tipos.
  var age = int.tryParse(input ?? ""); // Função para conversão em outros tipos.
  //Null Safety acontece para evitar que var's recebam valores nulos e causem bugs.
  //Error: Operator '>=' cannot be called on 'int?' because it is potentially null

  if (age == null || age < 0)
    // Verifica se a var é nula. Codigo necessario para detectar erros e fazer o programa rodar.
    print("erro! Idade nula");
  else if (age >= 18 && age <= 26)
    print("Jovem dinâmico");
  else if (age > 26 && age < 50)
    print("Sofredor");
  else if (age >= 50 && age <= 100)
    print("Tá velho.");
  else if (age >= 101)
    print("Vôvo maromba");
  else
    print("Criança");
}
