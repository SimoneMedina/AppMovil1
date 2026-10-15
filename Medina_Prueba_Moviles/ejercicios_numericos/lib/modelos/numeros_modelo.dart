
class NumerosModelo {
  String verificarPrimo(int numero) {
    if (numero < 2) {
      return 'El número $numero no es primo';
    }

    for (int i = 2; i * i <= numero; i++) {
      if (numero % i == 0) {
        return 'El número $numero no es primo';
      }
    }

    return 'El número $numero es primo';
  }

  String calcularFactorial(int numero) {
    if (numero < 0 || numero > 20) {
      return 'Ingresa un número entre 0 y 20';
    }

    BigInt resultado = BigInt.one;
    List<String> procedimiento = [];

    for (int i = numero; i >= 1; i--) {
      resultado *= BigInt.from(i);
      procedimiento.add(i.toString());
    }

    String operacion = numero == 0
        ? '1'
        : procedimiento.join(' × ');

    return '$numero! = $operacion = $resultado';
  }

  String verificarCapicua(int numero) {
    if (numero < 0) {
      return 'Ingresa un número positivo';
    }

    String original = numero.toString();
    String invertido = original.split('').reversed.join();

    return original == invertido
        ? 'El número $numero es capicúa'
        : 'El número $numero no es capicúa';
  }

  String verificarParImpar(int numero) {
    return numero % 2 == 0
        ? 'El número $numero es par'
        : 'El número $numero es impar';
  }

  String sumarDigitos(int numero) {
    String digitos = numero.abs().toString();
    int suma = 0;

    for (String digito in digitos.split('')) {
      suma += int.parse(digito);
    }

    return 'La suma de los dígitos es $suma';
  }
}
