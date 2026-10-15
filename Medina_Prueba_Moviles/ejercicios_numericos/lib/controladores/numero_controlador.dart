
import '../modelos/numeros_modelo.dart';

class NumeroControlador {
  final NumerosModelo _modelo = NumerosModelo();

  String verificarPrimo(String entrada) {
    final numero = int.tryParse(entrada.trim());

    if (numero == null) {
      return 'Ingresa un número entero válido';
    }

    return _modelo.verificarPrimo(numero);
  }

  String calcularFactorial(String entrada) {
    final numero = int.tryParse(entrada.trim());

    if (numero == null) {
      return 'Ingresa un número entero válido';
    }

    return _modelo.calcularFactorial(numero);
  }

  String verificarCapicua(String entrada) {
    final numero = int.tryParse(entrada.trim());

    if (numero == null) {
      return 'Ingresa un número entero válido';
    }

    return _modelo.verificarCapicua(numero);
  }

  String verificarParImpar(String entrada) {
    final numero = int.tryParse(entrada.trim());

    if (numero == null) {
      return 'Ingresa un número entero válido';
    }

    return _modelo.verificarParImpar(numero);
  }

  String sumarDigitos(String entrada) {
    final numero = int.tryParse(entrada.trim());

    if (numero == null) {
      return 'Ingresa un número entero válido';
    }

    return _modelo.sumarDigitos(numero);
  }
}
