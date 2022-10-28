import 'dart:io';
import 'main.dart';

class Libro {
  int idlibro;
  String nombre;
  String paginas;
  String autor;
  String editor;

  Libro(
      {required this.idlibro,
      required this.nombre,
      required this.paginas,
      required this.autor,
      required this.editor});

  void registrar() {
    stdout.writeln("Ingresar nombre del libro");
    var nombre = stdin.readLineSync();
  }
}
