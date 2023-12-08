void main() {
  final Map<String, dynamic> hero = {
    'name': 'Hulk',
    'power': 'Fuerza',
    'isAlive': true
  };

  final hulk = Hero.fromJson(hero);

  final iroman = Hero(name: 'Tony', power: 'money', isAlive: false);

  print(iroman.toString());
  print(hulk.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No Power found',
        isAlive = json['isAlive'] ?? 'No alive found';

  Hero({required this.name, required this.power, required this.isAlive});

  @override
  String toString() {
    return '$name, $power, is Alive: ${isAlive ? 'Yes' : 'Nope'}';
  }
}
