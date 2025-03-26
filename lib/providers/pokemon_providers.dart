import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/pokeapi_service.dart';
import '../vm/pokemon_list_vm.dart';
import '../models/pokemon_list_item.dart';

final pokeApiServiceProvider = Provider<PokeApiService>((ref) {
  return PokeApiService();
});

// Provider del ViewModel
final pokemonListProvider = AsyncNotifierProvider<PokemonListViewModel, List<PokemonListItem>>(
  PokemonListViewModel.new,
);
