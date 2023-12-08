//dynamic - indica que no tiene definido el tipo de dato
main() {
  //const Constante que requerira declarar la constante en tiempo de construccion
  const secondName = 'Jair';

  //final no permitira cambiar el valor de la variable una vez asignada
  final nombre;

  nombre = 'Roger';

  String mundo = 'mundo';

  print('Hola $mundo $nombre ${secondName.toUpperCase()}');
}
