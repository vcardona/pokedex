import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/db/isar_service.dart';
import 'package:pokedex/models/pokemon_isar_model.dart';
import 'package:isar/isar.dart';
import 'pokemon_providers.dart';

final filteredPokemonProvider = FutureProvider<List<PokemonIsarModel>>((ref) async {
  final query = ref.watch(searchQueryProvider).toLowerCase();
  final type = ref.watch(selectedTypeProvider);

  final isar = IsarService.isar;
  final queryBuilder = isar.pokemonIsarModels.where();

  if (query.isNotEmpty) {
    return queryBuilder
        .filter()
        .nameContains(query, caseSensitive: false)
        .and()
        .optional(type != null, (q) => q.typesElementEqualTo(type!))
        .findAll();
  }

  if (type != null) {
    return queryBuilder.filter().typesElementEqualTo(type).findAll();
  }

  return queryBuilder.findAll();
});
