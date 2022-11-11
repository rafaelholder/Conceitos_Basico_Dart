///
/// Uma classe pode ter somente uma herança
///
/// Construtores
///   - Devem obdecer a ordem dos parametros
///   - parametros default devem ser nomeado ou posicionados
///   - Tratamento e tipagem de parametros deve ser feito
///     na classe herdeira

class Animal {
  String? idade;
  bool? domavel;
  Animal(this.idade, {this.domavel});

  void dormir() {
    print('mimindo zzzz');
  }
}

class Mamiferos extends Animal {
  String? sexo;

  Mamiferos(this.sexo, idade, domavel)
      // Construtor da classe mamifero
      : super(idade, domavel: domavel);
  // Construtor da classe 'Pai' Animal
  void alimentar() {
    print('Comendo yum yum');
  }
}

class Cao extends Mamiferos {
  String? nome, raca;

  Cao(this.nome, this.raca, String? sexo, {String? idade, bool? domavel})
      : super(sexo, idade, domavel) {
    this.idade = (idade == null) ? 'não informado' : idade;
    this.sexo = (sexo == null) ? 'não informado' : sexo;
  }
  void acao() {
    print('AUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU');
  }
}

void main(List<String> args) {
  print(1);
  var cao = Cao('maya', 'Shitzu', 'F', domavel: true, idade: '3');
  print('Nome: ${cao.nome} \nRaça: ${cao.raca}'
      '\nIdade:${cao.idade} \nDomavel: ${cao.domavel}');
  cao
    ..dormir()
    ..acao()
    ..alimentar();
  print('${cao.nome} ${cao.domavel! ? 'esta amigavel' : 'não esta amigalvel'}');
}
