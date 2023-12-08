void main() {
  //con Map tenemos una llave y una declaracion de la llave
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'Ditto/front.png', 2: 'Ditto/back.png'}
  };

  print(pokemon);
  print('name: ${pokemon['name']}');
  print('sprites: ${pokemon['sprites']}');

  print('back: ${pokemon['sprites'][2]}');
  print('front: ${pokemon['sprites'][1]}');
}
