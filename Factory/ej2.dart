



class Fabrica {
   Bicicleta tipoFactory(String tipo) {
    if (tipo == 'deportiva') {
        return Deportiva();

abstract class Bicicleta {
  void pedaliar();
}

class Deportiva implements Bicicleta {
  @override
  void pedaliar() {
    print('Bicicleta deportiva en funcion');
  }
}

class Generica implements Bicicleta {
  @override
  void pedaliar() {
    print('Bicicleta infantil en funcion');
  }
}
