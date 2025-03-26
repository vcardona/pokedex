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
      appBar: AppBar(title: const Text('Detalle del Pokémon')),
      body: detailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (pokemon) {
          final imageUrl =
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemon.id}.png';

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // 🖼️ Imagen centrada grande
                Center(
                  child: Image.network(imageUrl, width: 200, height: 200, fit: BoxFit.contain),
                ),
                const SizedBox(height: 24),

                // 📄 Card con información detallada
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pokemon.name.toUpperCase(),
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        Text('ID: ${pokemon.id}', style: _infoStyle()),
                        Text('Altura: ${pokemon.height}', style: _infoStyle()),
                        Text('Peso: ${pokemon.weight}', style: _infoStyle()),
                        // Puedes agregar más info aquí: habilidades, tipos, etc.
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  TextStyle _infoStyle() => const TextStyle(fontSize: 16, color: Colors.black87);
}
