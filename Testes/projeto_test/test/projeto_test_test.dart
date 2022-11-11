import 'package:projeto_test/projeto_test.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Converter strings em array',
    () {
      String texto = 'rafael,duda,maya';
      expect(
        texto.split(','),
        equals(['rafael', 'duda', 'maya']),
      );
    },
  );
  test(
    'Converter em list',
    () => expect(
      converterEmList('rafael holder'),
      equals(['rafael', 'holder']),
    ),
  );
  test('calculate', () {
    expect(calculate(), 42);
  });
}
