void main() {
  print(greetEveryone());

  print('Suma : ${addTwonumbers(10, 30)}');
  print('Suma : ${numbersOptional(70)}');

  print(greetPerson(name: 'Roger', message: 'que tal?'));
}

String greetEveryone() => 'Hola a todos';

int addTwonumbers(int a, int b) => a + b;

//asi se indica que b es opcional
int numbersOptional(int a, [int b = 10]) {
  return a + b;
}

//entre llaves las variables siempre seran opcionales
//required indica que siempre tiene que ser llamado
String greetPerson({required String name, String message = 'Hola'}) {
  return '$message Roger';
}
