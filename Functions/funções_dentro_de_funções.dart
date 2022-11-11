//Arrow function.

int exec(int a, int b, int Function(int, int) funcao) {
  //Função dentro de uma declaração de função
  //tipo nome_função(tipagem_parametro, <tipo> Function(parametros) nome_func)
  return funcao(a, b); // retorno da função.
}

main() {
  final x = exec(2, 3, (a, b) => a * b + 19);
  print(x);
  // final é um tipo que não pode ter seu valor alterado depois de atribuido.
  // => é a arrow function. Com ela podemos fazer uma função de uma linha só.
  // ao invés de colocar as {};
  //	 exec(2,3){
  //		return a*b +19;
  //	 } Função sem a arrow function.
}
