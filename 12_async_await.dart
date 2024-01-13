void main() async {
  print('Inicio del proceso');

  try {
    final value = await httpget('https://fernando-herrera.com/cursos');
    print(value);
  } catch (err) {
    print("Error: $err");
  }
}

//Cuando se usa await, siempre tiene que retornar un Future
Future<String> httpget(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw "Error no controlado";
  //return "Tenemos el valor de la peticion";
}
