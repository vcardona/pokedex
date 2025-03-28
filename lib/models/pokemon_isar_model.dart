import 'package:isar/isar.dart';

part 'pokemon_isar_model.g.dart';

@collection
class PokemonIsarModel {
  PokemonIsarModel(); // Add default constructor

  Id id = Isar.autoIncrement;

  @Index()
  late int pokemonId;

  @Index()
  late String name;

  late List<String> types;
  late String imageUrl;
  late int height;
  late int weight;
  late List<String> abilities;

  // Stats
  late int hp;
  late int attack;
  late int defense;
  late int specialAttack;
  late int specialDefense;
  late int speed;

  factory PokemonIsarModel.fromFullData({
    required int id,
    required String name,
    required List<String> types,
    required String imageUrl,
    required int height,
    required int weight,
    required List<String> abilities,
    required int hp,
    required int attack,
    required int defense,
    required int specialAttack,
    required int specialDefense,
    required int speed,
  }) {
    return PokemonIsarModel()
      ..pokemonId = id
      ..name = name
      ..types = types
      ..imageUrl = imageUrl
      ..height = height
      ..weight = weight
      ..abilities = abilities
      ..hp = hp
      ..attack = attack
      ..defense = defense
      ..specialAttack = specialAttack
      ..specialDefense = specialDefense
      ..speed = speed;
  }
}
