import 'package:flutter/material.dart';

class Usuario {
  String nombre;
  String email;
  String contrasenia;

  Usuario(
      {required this.nombre, required this.email, required this.contrasenia});
}

//Mixin de Autenticacion
mixin Autenticacion {
  bool iniciarSesion(String email, String contrasenia) {
    debugPrint(
        "Inicio de sesion con correo: $email y contraseña: $contrasenia");
    return true;
  }
}

//Clase UsuarioAutenticado
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(
      {required super.nombre,
      required super.email,
      required super.contrasenia});
}

void main() {
  UsuarioAutenticado user = UsuarioAutenticado(
      nombre: "Victor", email: "vbalboa@gmail.com", contrasenia: "123456");

  user.iniciarSesion(user.email, user.contrasenia);

  // Invocar el método iniciarSesion
  bool loginSuccess = user.iniciarSesion(user.email, user.contrasenia);
  debugPrint('Inicio de sesión exitoso: $loginSuccess');
}
