/*
  Enum(enumeration) é usado para definir valores constantes nomeados.

*/

enum Status { indefinido, rodando, parado, pausado }

enum Time { hour, day, week, month, year }

String time_to_string(Time time) {
  switch (time) {
    case Time.hour:
      return '1h';
    case Time.day:
      return '1d';
    case Time.week:
      return '1w';
    case Time.month:
      return '1m';
    case Time.year:
      return '1y';

    default:
      return '';
  }
}

void main(List<String> args) {
  print('Enumerations');

  print('length: ${Status.values.length}, values: ${Status.values}');

  for (var i = 0; i < Status.values.length; i++) {
    print('Status $i: ${Status.values[i]}');
  }
  print('---------------------');

  for (var value in Status.values) {
    print('Indice: ${value.index}');
  }
}
