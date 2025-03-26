import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pokemon_providers.dart';

class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonListProvider); // 🔁 Aquí observamos la data

    return Scaffold(
      appBar: AppBar(title: Text('Pokédex')),
      body: state.when(
        data:
            (pokemons) => ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final p = pokemons[index];
                return ListTile(title: Text(p.name.toUpperCase()), subtitle: Text(p.url));
              },
            ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
