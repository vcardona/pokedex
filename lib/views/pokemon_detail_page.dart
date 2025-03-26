import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pokemon_providers.dart';

class PokemonDetailPage extends ConsumerWidget {
  final String url;

  const PokemonDetailPage({super.key, required this.url});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(pokemonDetailProvider(url));

    return Scaffold(
      appBar: AppBar(title: const Text('Detalles')),
      body: detailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (pokemon) {
          final imageUrl =
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemon.id}.png';

          return Column(
            children: [
              const SizedBox(height: 16),
              Image.network(imageUrl, width: 200, height: 200),
              const SizedBox(height: 24),
              Text(
                pokemon.name.toUpperCase(),
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text('ID: ${pokemon.id}'),
              Text('Altura: ${pokemon.height}'),
              Text('Peso: ${pokemon.weight}'),
            ],
          );
        },
      ),
    );
  }
}
