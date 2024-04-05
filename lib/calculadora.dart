import 'dart:math';

//Class
class Calculadora {
  double sumar(double a, double b) {
    return a + b;
  }

  double restar(double a, double b) {
    return a - b;
  }

  double multiplicar(double a, double b) {
    return a * b;
  }

  double dividir(double a, double b) {
    if (b == 0) {
      throw Exception('No se puede dividir por cero');
    }
    return a / b;
  }
}

//Mixin OperacionesAdicionales
mixin OperacionesAdicionales on Calculadora {
  double potencia(double base, double exponente) {
    return pow(base, exponente).toDouble();
  }
}

//Mixin OperacionesAvanzadas
mixin OperacionesAvanzadas on Calculadora {
  double raizCuadrada(double numero) {
    if (numero < 0) {
      throw Exception(
          'No se puede calcular la raíz cuadrada de un número negativo');
    }
    return sqrt(numero);
  }
}

//Class
class CalculadoraAvanzada extends Calculadora
    with OperacionesAdicionales, OperacionesAvanzadas {}

void main() {
  //Objeto de tipo calculadora avanzada
  CalculadoraAvanzada calculadora = CalculadoraAvanzada();

  //Operaciones
  double resultado;

  try {
    resultado = calculadora.sumar(5.0, 3.0);
    print('Suma: $resultado');

    resultado = calculadora.restar(10.0, 4.0);
    print('Resta: $resultado');

    resultado = calculadora.multiplicar(2.0, 6.0);
    print('Multiplicación: $resultado');

    resultado = calculadora.dividir(15.0, 3.0);
    print('División: $resultado');

    resultado = calculadora.potencia(2.0, 3.0);
    print('Potencia: $resultado');

    resultado = calculadora.raizCuadrada(16.0);
    print('Raíz cuadrada: $resultado');
  } catch (e) {
    print('Error: $e');
  }
}
