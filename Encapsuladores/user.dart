class User {
  bool alteracao = false;
  String? nome;
  String? _senha;

  User(this.nome, String senha) {
    this._senha = senha;
  }

  //getter padrão
  String get senha {
    return _senha!;
  }

  //Setter padrão
  set senha(String senha) {
    if (alteracao) {
      _senha = senha;
      print('Senha alterada');
    } else {
      print('Senha não alterada');
    }
  }
}
