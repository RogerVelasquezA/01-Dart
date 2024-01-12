void main() {
  final wingPlant = WingPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(wingPlant);

  print(changePhone(wingPlant));
  print(changePhone(nuclearPlant));
}

double changePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('No tiene energia');
  return plant.energyLeft - 10;
}

//enum se crean clases que solo tendran los valores indicadas
enum PlantType { nuclear, wing, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

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

@override
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
