class PokemonDetail {
  final String name;
  final int id;
  final int height;
  final int weight;
  final List<TypeSlot> types;
  final List<AbilitySlot> abilities;
  final List<StatSlot> stats;

  PokemonDetail({
    required this.name,
    required this.id,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
    required this.stats,
  });

  factory PokemonDetail.fromJson(Map<String, dynamic> json) {
    return PokemonDetail(
      name: json['name'] as String,
      id: json['id'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
      types:
          (json['types'] as List).map((e) => TypeSlot.fromJson(e as Map<String, dynamic>)).toList(),
      abilities:
          (json['abilities'] as List)
              .map((e) => AbilitySlot.fromJson(e as Map<String, dynamic>))
              .toList(),
      stats:
          (json['stats'] as List).map((e) => StatSlot.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}

// Modelo para tipos
class TypeSlot {
  final TypeInfo type;

  TypeSlot({required this.type});

  factory TypeSlot.fromJson(Map<String, dynamic> json) {
    return TypeSlot(type: TypeInfo.fromJson(json['type'] as Map<String, dynamic>));
  }
}

class TypeInfo {
  final String name;

  TypeInfo({required this.name});

  factory TypeInfo.fromJson(Map<String, dynamic> json) {
    return TypeInfo(name: json['name'] as String);
  }
}

// Modelo para habilidades
class AbilitySlot {
  final AbilityInfo ability;

  AbilitySlot({required this.ability});

  factory AbilitySlot.fromJson(Map<String, dynamic> json) {
    return AbilitySlot(ability: AbilityInfo.fromJson(json['ability'] as Map<String, dynamic>));
  }
}

class AbilityInfo {
  final String name;

  AbilityInfo({required this.name});

  factory AbilityInfo.fromJson(Map<String, dynamic> json) {
    return AbilityInfo(name: json['name'] as String);
  }
}

// Modelo para stats
class StatSlot {
  final int baseStat;
  final StatInfo stat;

  StatSlot({required this.baseStat, required this.stat});

  factory StatSlot.fromJson(Map<String, dynamic> json) {
    return StatSlot(
      baseStat: json['base_stat'] as int,
      stat: StatInfo.fromJson(json['stat'] as Map<String, dynamic>),
    );
  }
}

class StatInfo {
  final String name;

  StatInfo({required this.name});

  factory StatInfo.fromJson(Map<String, dynamic> json) {
    return StatInfo(name: json['name'] as String);
  }
}
