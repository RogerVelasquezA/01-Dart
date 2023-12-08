void main() {
  final wolverine = Hero(name: 'Logan', power: 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  //Hero(String _name, String _power)
  //    : name = _name,
  //      power = _power;

  Hero({required this.name, required this.power});

  //@override sobrescribe una funcion
  @override
  String toString() {
    return '$name - $power';
  }
}
