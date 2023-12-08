void main() {
  final numbers = [5, 2, 3, 4, 5, 6, 7, 89, 0, 3, 5, 89];

  print(numbers);
  print('Lenght: ${numbers.length}');
  print('index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverserd: ${numbers.reversed}');

  //iterable
  final reversedNumbers = numbers.reversed;

  print('Iterdable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  //set: lista que no permite elementos repetidos
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int num) => num > 5);

  //iterable
  print('>5 $numbersGreaterThan5');
  //set
  print('set: ${numbersGreaterThan5.toSet()}');
}
