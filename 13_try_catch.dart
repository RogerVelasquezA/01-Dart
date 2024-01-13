void main() async {
  print('Inicio del proceso');

  try {
    final value = await httpget('https://fernando-herrera.com/cursos');
    print(value);
  }
  //nos permite controlar el tipo de excepcion
  on Exception {
    print('Se entontro la excepcion');
  } catch (err) {
    print('Error: $err');
  } finally {
    print('Fin del Try catch');
  }

  print('Fin del programa');
}

//Cuando se usa await, siempre tiene que retornar un Future
Future<String> httpget(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('No se encontro informacion');

  //throw "Error no controlado";
  //return "Tenemos el valor de la peticion";
}
