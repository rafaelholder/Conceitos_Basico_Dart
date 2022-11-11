///
/// Encapsuladores são usados para proteger atributos e variaveis
/// Get é usado para acessar e Set para alterar algo.
///
///
///Importaçã dos arquivos de classes que serão usados.
import 'conta.dart';
import 'user.dart';

void main(List<String> args) {
  print('-----');
  var user = User('Rafael', 'Amocachorrinhos');
  //Declarando o nome do user e a senha.

  user
    //Agora vamos tentar alterar a senha do user.
    ..senha = '1234'
    ..alteracao = true
    ..senha = '1234';
  // (.. = Cascata. Possibilita continuar a linha de codigo)

  print('nome: ${user.nome} Senha: ${user.senha} ');

  var conta = Conta('Rafael Oliveira');
  conta
    ..deposito = 1200
    ..deposito = 234
    ..saque = 400;
  print('-------------------');
  conta
    ..alteracaoLimite = true
    ..limite = 234000;

  print('---------------');
  conta
    ..saque = 2399
    ..saque = 100;
  print('----------------------');
  print('${conta.infos}');

  Conta contaVip = Conta.vip('Eduarda vieira', limite: 12000);
  contaVip.infos;
  contaVip.deposito = 14000;
  contaVip.limite = 20000;
  contaVip.saque = 15000;
  print(contaVip.infos);
}
