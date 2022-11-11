class Produto {
  String? nome;
  double? preco;

  /*Produto(String nome, double preco) 
  { Construtor da classe. Vai atribuir valores as variaveis da classe.
    this.nome_var diz que a variavel é a que está na classe.
      this.nome = nome;
      this.preco = preco; }*/

  //Produto(this.nome, this.preco); Parâmetros posicionais. A ordem que eles são passados importa.
  // Este é um construtor inteligente.
  //Atribuição do this.nome_var faz com que ele já perceba as variaveis.

  Produto({this.nome, this.preco = 0.99}); // Construtor inteligente com {}.
  // {} faz com que a ordem não importe e fique mais claro na hora de passar algum parâmetro.
  // as {} servem também para criar funções\metodos com parâmetros nomeados.
}

imprimirProduto({String? nome, double? preco}) {
  print("O produto $nome custa $preco");
}

main() {
  var produto_1 = Produto(
      nome: 'Garrafa de buteco',
      preco: 300); // chamada da classe produto e construção de seus valores.
  var produto_2 = Produto(preco: 65, nome: 'almofada');
  var produto_3 = Produto(nome: 'caneta azul azul caneta');
  // Quando não há declaração de var e existe um valor já definido como padrão(this.preco = 0.99), a var pega esse valor padrão para ela.

  imprimirProduto(preco: produto_1.preco, nome: produto_1.nome);
  imprimirProduto(preco: produto_2.preco, nome: produto_2.nome);
  imprimirProduto(nome: produto_3.nome, preco: produto_3.preco);
}
