void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['front/ditto.png', 'back/ditto.png'];

  //dynamic = null, permite cambiar el valor de la variable en cualquier momento
  dynamic errorMessage = 'Hola';
  errorMessage = [1, 2, 3];

  print("""
        $pokemon
        $hp 
        $isAlive
        $abilities
        $sprites
        $errorMessage
        """);
}
