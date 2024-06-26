void main() {
  Fabrica fabrica = Fabrica();
  Bicicleta bici =fabrica.tipoFactory(" deportiva ");
  bici.pedaliar();
}

class Fabrica {
  Bicicleta tipoFactory(String tipo) {
    if (tipo == ' deportiva ') {
      return Deportiva();
    } else if (tipo == ' generica ') {
      return Generica();
    } else if (tipo == ' infantil ') {
      return Infantil();
    } else {
      throw Exception(' Se desconoce el tipo de bicicleta ');
    }
  }
}

abstract class Bicicleta {
  void pedaliar();
}

class Deportiva implements Bicicleta {
  @override
  void pedaliar() {
    print(' Bicicleta deportiva en funcion ');
  }
}

class Generica implements Bicicleta {
  @override
  void pedaliar() {
    print(' Bicicleta infantil en funcion ');
  }
}

class Infantil implements Bicicleta {
  @override
  void pedaliar() {
    print(' Bicicleta infantil en funcion ');
  }
}
