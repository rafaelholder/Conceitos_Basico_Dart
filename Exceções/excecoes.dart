///
///Tratamento de exceções:
/// - try: Usada para testa uma logica.
/// - catch: captura erros na logica try.
/// - on: Captura algo especificado na logica try.
/// - throw Exception: exeção criada pelo user e tratada no catch.
/// - Finaly: executada ao final de try/catch, com exeção ou não!
///           Libera recursos na logica try

//Use try catch quando desconhecer a exeção
caso1() {
  print('Try catch /// CASO 1');

  try {
    int result = 1 ~/ 0;
    print('resultado: $result');
  } catch (e) {
    print('exeção: $e');
  }
}

//Quando conhecer a exeção, use ON
caso2() {
  print('Try catch ON /// CASO 2');

  try {
    int result = 1 ~/ 0;
    print('resultado: $result');
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print('nao é possivel dividir por zero');
  } catch (e) {
    print('exeção: $e');
  }
}

//STACK TRACE: para descobrir eventos ocorridos antes da exceção.
caso3() {
  print('Stack trace/// CASO 3');

  try {
    int result = 1 ~/ 0;
    print('resultado: $result');
  } catch (e, stackTrace) {
    print('exeção: $e');
    print('Stack trace: $stackTrace');
  }
}

//FINALLY: para tratamentos apos a exeção.
// Usada tambem para liberar recursos de try/catch

caso4() {
  print('FINALLY/// CASO 4');

  try {
    int result = 1 ~/ 0;
    print('resultado: $result');
  } catch (e) {
    print('exeção: $e');
  } finally {
    print('finally: com ou sem exeção, finally vai ser executada');
  }
}

caso5() {
  print('trow exception/// CASO 5');

  try {
    int valorA = 1, valorB = 0;
    double result = valorA / valorB;

    if (result.isInfinite) throw Exception('A variavel valorB deve  ser =! 0');
  } catch (e) {
    print('exeção: $e');
  } finally {
    print('finally: com ou sem exeção, finally vai ser executada');
  }
}

void main(List<String> args) {
  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}
