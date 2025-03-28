import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:pokedex/db/isar_service.dart';
import 'package:pokedex/models/pokemon_isar_model.dart';

final localPokemonListProvider = FutureProvider<List<PokemonIsarModel>>((ref) async {
  final isar = IsarService.isar;

  final query = isar.pokemonIsarModels.where().sortByPokemonId().build();
  final result = await query.findAll(); // ✅ aquí es donde ocurre el fetch
  return result;
});
