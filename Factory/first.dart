void main() {
  var factory = TiposFactory().tipoFactory(' Deportiva ');
   factory.pedaliar();
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
    print(' Bicicleta generica en funcion ');
  }
}

class Infantil implements Bicicleta {
  @override
  void pedaliar() {
    print(' Bicicleta infantil en funcion ');
  }
}

class TiposFactory {
  Bicicleta tipoFactory(String type) {
    if (type == 'deportiva') {
      return Deportiva();}else if (type == 'infantil') {
      return Generica();
    } else if (type == 'infantil') {
      return Infantil();
    } else {
      throw Exception('Se desconoce el tipo de bicicleta');
    }
  }
}
