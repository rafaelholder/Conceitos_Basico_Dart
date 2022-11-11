import 'dart:math';

class Conta {
  bool alteracaoLimite = false;
  String? _nome;
  int? _numeroConta;
  double? _saldo = 0, _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(12345);
    print(
        'conta número: "${numeroConta}" Titular: "${_nome}" criada com sucesso');
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alteracaoLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(1000);
    print('Conta número: ${numeroConta} // Titular: ${nome}');
  }

  //getter padrão
  int get numeroConta {
    return this._numeroConta!;
  }

  get saldo => this._saldo;

  set limite(double limite) {
    if (alteracaoLimite) {
      this._limite = limite;
      print('Limite alterado para: $_limite');
      this.alteracaoLimite = false;
    } else {
      print('Alteração de limite não permitida');
    }
  }

  String get infos => 'titular: ${_nome} // n*Conta: $_numeroConta';

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo = _saldo! + deposito;
      print('Valor do deposito: $deposito! \nSaldo atualizado para: $_saldo');
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= _limite!) {
      if (saque <= saldo!) {
        this._saldo = _saldo! - saque;
        print('Saque: $saque \nSaldo atualizado: $_saldo');
      } else {
        print('Saldo insuficiente para saque. Saldo: $_saldo');
      }
    } else {
      print('Limite para saque: $_limite');
    }
  }
}
