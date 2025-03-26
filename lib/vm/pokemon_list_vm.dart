import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/pokemon_list_item.dart';
import '../providers/pokemon_providers.dart';

class PokemonListViewModel extends AsyncNotifier<List<PokemonListItem>> {
  final List<PokemonListItem> _pokemonList = [];
  int _offset = 0;
  final int _limit = 20;
  bool _isLoading = false;

  @override
  Future<List<PokemonListItem>> build() async {
    return await _fetchMore();
  }

  Future<List<PokemonListItem>> _fetchMore() async {
    if (_isLoading) return _pokemonList;
    _isLoading = true;

    final api = ref.read(pokeApiServiceProvider);
    final newData = await api.fetchPokemonList(offset: _offset, limit: _limit);

    _pokemonList.addAll(newData);
    _offset += _limit;
    _isLoading = false;

    state = AsyncData([..._pokemonList]); // Actualiza la UI
    return _pokemonList;
  }

  void loadMoreIfNeeded(int index) {
    if (index >= _pokemonList.length - 5) {
      _fetchMore();
    }
  }
}
