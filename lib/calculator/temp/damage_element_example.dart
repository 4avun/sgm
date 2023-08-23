class DamageElementsExamples {
  final attack = <String, dynamic> {
    'id': 'attack',
    'name': 'Attack',
    'max': null,
  }; 

  final moveScaling = <String, dynamic> {
    'id': 'move_scaling',
    'name': 'Move Scaling',
    'max': null,
  };

  final critDamage = <String, dynamic> {
    'id': 'crit_damage',
    'name': 'Crit Damage',
    'max': 200,
  };
}

class DamageElement {
  // parsed values
  String? id;
  String? name;
  int? max;
  // runtime links
  DamageElement? basicValue;
  List<DamageElement> values = [];
  DamageElement? modifier;
}