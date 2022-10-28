import 'dart:io';
import 'main.dart';
/*class Libro {
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
}*/

class Libro extends Papa {
  final String? np;
  Libro({
    required String? titulo,
    required String? precio,
    required this.np,
  }) : super(titulo, precio);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.precio.toString(), 8)} | ${darformat(this.np.toString(), 8)} |';
  }
}
