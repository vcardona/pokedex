import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:pokedex/db/isar_service.dart';
import 'package:pokedex/models/pokemon_isar_model.dart';

final localPokemonDetailProvider = FutureProvider.family<PokemonIsarModel, int>((ref, id) async {
  final isar = IsarService.isar;
  final pokemon = await isar.pokemonIsarModels.filter().pokemonIdEqualTo(id).findFirst();

  if (pokemon == null) throw Exception('Pokémon no encontrado en base local');
  return pokemon;
});
