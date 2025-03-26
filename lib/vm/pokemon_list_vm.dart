import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/providers/pokemon_providers.dart';
import '../models/pokemon_list_item.dart';

class PokemonListViewModel extends AsyncNotifier<List<PokemonListItem>> {
  @override
  Future<List<PokemonListItem>> build() async {
    final api = ref.read(pokeApiServiceProvider);
    return await api.fetchPokemonList();
  }
}
