import 'dart:io';

calcSalario(double valor_dia, int dias_trabalhados) {
  double salario_bruto = valor_dia * dias_trabalhados;
  print('O salario bruto é: R\$ $salario_bruto');
  //Salario sem desconto de imposto
  double salario_liquido = salario_bruto * 0.92;
  // Salario bruto menos 8% de imposto
  print(
      'Salario com desconto de 8% de imposto: R\$ ${salario_liquido.toStringAsFixed(2)}');
}

void main(List<String> args) {
  print('Digite o salario por dia em reais(R\$):');
  double? salario_dia = double.tryParse(stdin.readLineSync()!);
  print('Digite a quantidade de dias trabalhados: ');
  int? dias_trabalhados = int.tryParse(stdin.readLineSync()!);

  calcSalario(salario_dia!, dias_trabalhados!);
}
