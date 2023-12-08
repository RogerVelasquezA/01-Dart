void main() {
  final wingPlant = WingPlant(initialEnergy: 100);

  print(wingPlant);

  print(changePhone(wingPlant));
}

double changePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('No tiene energia');
  return plant.energyLeft - 10;
}

//enum se crean clases que solo tendran los valores indicadas
enum PlantType { nuclear, wing, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//extends = herencia
class WingPlant extends EnergyPlant {
  WingPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wing);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
