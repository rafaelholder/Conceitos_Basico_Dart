class Usuario {
  String? nome;
  String? idade;

  //? Construtor default da classe
  Usuario({required this.nome, required this.idade});

  // COnstrutor com lista de inicialização, define parametros antes de
  // iniciar o escopo do construtor
  Usuario.fromJson(Map<String, dynamic> json)
      : nome = json['nome'],
        idade = json['idade'] {
    // CONFIGURAÇÕES INICIAIS
  }

  /*
  Usuario.fromJson(Map<String, dynamic> json) {
    this.nome = json['nome'];
    this.idade = json['idade'];
  } 
  */
  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
    };
  }
}
