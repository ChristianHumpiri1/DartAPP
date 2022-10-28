import 'dart:io';

void main() {
  var LIBROS = [];
  var CD = [];

  String? titulos = "";
  String? autores = "";
  String? nropaginass = "";
  int m = 0;
  int l = 0;
  int c = 0;

  while (m == 0) {
    print("   MENU PRINCIPAL     ");
    print("________________________");
    print("  [1]   LIBROS       ");
    print("  [2]   CD´S         ");
    print("  [3]   SALIR        ");

    print("");
    print("  Digite la opción: ");
    String? a = stdin.readLineSync();

    switch (a) {
      case "1":
        {
          l = 0;
          while (l == 0) {
            print("      MENU LIBRO      ");
            print("________________________");
            print("  [1]  REGISTRAR     ");
            print("   [2]  LISTAR       ");
            print("   [3]  SALIR        ");

            print("");
            print("  Digite la opción: ");
            String? b = stdin.readLineSync();

            switch (b) {
              case "1":
                {
                  print("  REGISTRAR LIBRO    ");
                  print("________________________");
                  print("-> TITULO :");
                  titulos = stdin.readLineSync();
                  print("-> AUTOR :");
                  autores = stdin.readLineSync();
                  print("-> NUMEROS DE PAGINA :");
                  nropaginass = stdin.readLineSync();
                  LIBROS.add(Libro(
                      titulo: titulos,
                      autor: autores,
                      nropaginas: nropaginass));
                  print("");
                  print(" LIBRO RESGISTRADO ...");
                  // Libro(titulo: tituloz, precio: precioz, np: npz);
                }
                break;
              case "2":
                {
                  listarBook(LIBROS);
                }
                break;
              case "3":
                {
                  l = 1;
                }
                break;

              default:
                {
                  print("OPCION ERRONEA");
                }
                break;
            }
          }
        }
        break;
      case "2":
        {
          c = 0;
          while (c == 0) {
            print("       MENU  CD's    ");
            print("_____________________");
            print("                     ");
            print("  [1]  REGISTRAR     ");
            print("  [2]  LISTAR        ");
            print("   [3]  SALIR         ");
            print("  Elija la opción: ");
            String? v = stdin.readLineSync();

            switch (v) {
              case "1":
                {
                  print("|   REGISTRAR CD     |");
                  print("________________________");
                  print("-> TITULO :");
                  titulos = stdin.readLineSync();
                  print("-> AUTOR :");
                  autores = stdin.readLineSync();
                  print("-> MINUTOS :");
                  nropaginass = stdin.readLineSync();
                  CD.add(Cd(
                      titulo: titulos, autor: autores, minutos: nropaginass));
                  print("");
                  print(" LIBRO RESGISTRADO ");
                }
                break;
              case "2":
                {
                  listarCds(CD);
                }
                break;
              case "3":
                {
                  c = 1;
                }
                break;

              default:
                {
                  print("OPCION ERRONEA");
                }
                break;
            }
          }
        }
        break;
      case "3":
        {
          print("");
          print(" GRACIAS POR SU VISITA");
          m = 1;
        }
        break;

      default:
        {
          print("OPCION ERRONEA");
        }
        break;
    }
  }
}

class Publicacion {
  final String? titulo;
  final String? autor;

  Publicacion(this.titulo, this.autor);

  @override
  String toString() {
    return 'Publicacion: titulo: ${this.titulo}, precio: ${this.autor}';
  }
}

class Libro extends Publicacion {
  final String? nropaginas;
  Libro({
    required String? titulo,
    required String? autor,
    required this.nropaginas,
  }) : super(titulo, autor);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.autor.toString(), 8)} | ${darformat(this.nropaginas.toString(), 8)} |';
  }
}

class Cd extends Publicacion {
  final String? minutos;
  Cd({
    required String? titulo,
    required String? autor,
    required this.minutos,
  }) : super(titulo, autor);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.autor.toString(), 8)} | ${darformat(this.minutos.toString(), 8)} |';
  }
}

void listarBook(var books) {
  print("");
  print("               LISTA DE LIBROS                ");
  print("    TITULO             |  AUTOR   | PAGINAS  ");

  for (var n in books) {
    print(n);
  }
  print("");
}

void listarCds(var books) {
  print("");
  print("               LISTA DE CD                 ");

  print("    TITULO             |  AUTOR   | MINUTOS  ");

  for (var n in books) {
    print(n);
  }
  print("");
}

darformat(String text, int cant) {
  String textfinal = "";
  int len = text.length;
  if (len >= cant) {
    textfinal = text.substring(0, cant - 3);
    textfinal = textfinal + "...";
  } else {
    textfinal = text;
    for (var i = len; i < cant; i++) {
      textfinal = textfinal + " ";
    }
  }
  return textfinal;
}
