// ignore_for_file: unused_field

/*
  DateTime é uma clsse com construtores para definir segundos, hora, dias e anos
  Duration é a classe usada para definir um determinado tempo.
*/

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.millisecond}';
  return hora;
}

void main(List<String> args) {
  print('DateTime\n');

  print('Compilado as ${tempoAgora()}');

  var pessoa = Pessoa('Rafael', 6, 1, 2003);
  print(pessoa);
}

class Pessoa {
  String nome;
  DateTime? _data, _nascimento, _agora = DateTime.now();

  Pessoa(this.nome, int diaNasc, int mesNasc, int anoNasc,
      {int horas = 0, int minutos = 0}) {
    this._nascimento = DateTime.utc(anoNasc, mesNasc, diaNasc, horas, minutos);
    print('$nome nascido em $diaNasc/$mesNasc/$anoNasc. '
        '${dia_semana(_nascimento!.weekday)} as $horas:$minutos.'
        ' Ano ${bissexto(anoNasc)}');
  }

  String bissexto(int ano) => (ano % 4 == 0 || ano % 400 == 0 && ano % 100 == 0)
      ? 'É bissexto'
      : 'Não é bissexto';

  double idade(int dia) => _agora!.difference(_nascimento!).inDays / 360;

  String dia_semana(int dia) {
    switch (dia) {
      case 1:
        return 'Segunda-feira';
      case 2:
        return 'Terça-feira';
      case 3:
        return 'Quarta-feira';
      case 4:
        return 'Quinta-feira';
      case 5:
        return 'Sexta-feira';
      case 6:
        return 'Sábado';
      case 7:
        return 'Domingo';
      default:
        return '';
    }
  }
}
