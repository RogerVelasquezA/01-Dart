void main() {
  print('Inicio del proceso');

  httpget('https://fernando-herrera.com/cursos').then((value) {
    print(value);
  }).catchError((err) {
    print('error: $err');
  });

  print('Fin del proceso');
}

Future<String> httpget(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'No se pudo ejecutar';
    //return 'respuesta de la perticion http';
  });
}
