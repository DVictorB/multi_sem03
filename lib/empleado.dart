//Class
import 'package:flutter/material.dart';

class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado({
    required this.nombre,
    required this.apellido,
    required this.salario,
    required this.horasTrabajadas,
  });
}

//Mixin Bonificaciones
mixin Bonificaciones on Empleado {
  double calcularBonificacion() {
    double bonificacion = salario * 0.2; //bono del 20% del salario
    return bonificacion;
  }
}

//Class
class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones({
    required super.nombre,
    required super.apellido,
    required super.salario,
    required super.horasTrabajadas,
  });
}

void main() {
  //Lista de EmpleadoConBonificaciones
  List<EmpleadoConBonificaciones> empleados = [
    EmpleadoConBonificaciones(
      nombre: 'Alcides',
      apellido: 'Carrion',
      salario: 5000.0,
      horasTrabajadas: 160,
    ),
    EmpleadoConBonificaciones(
      nombre: 'Luisa',
      apellido: 'Buendia',
      salario: 6500.0,
      horasTrabajadas: 180,
    ),
    EmpleadoConBonificaciones(
      nombre: 'Pedro',
      apellido: 'Saavedra',
      salario: 4800.0,
      horasTrabajadas: 150,
    ),
  ];

  //Calcula bonificaciones
  for (var empleado in empleados) {
    double bonificacion = empleado.calcularBonificacion();
    debugPrint(
        'Nombre: ${empleado.nombre} ${empleado.apellido}, Bonificación: \S/${bonificacion.toStringAsFixed(2)}');
  }
}
