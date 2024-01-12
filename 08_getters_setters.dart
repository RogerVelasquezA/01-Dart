void main() {
  final cuadrado = Square(side: 9);

  //cuadrado.side = -3;

  print('El area es: ${cuadrado.calculatorArea()}');
}

class Square {
  //con guion bajo se declara como una propiedad privada
  double _side;

  Square({required double side})
      : assert(side >= 0,
            'El valor debe de ser mayor o igual a 0'), //assert indica poner condiciones en los constructores
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('El nuevo valor colocado es: $value');
    if (value < 0) throw 'El valor debe ser mayor que 0';

    _side = value;
  }

  double calculatorArea() {
    return _side * _side;
  }
}
