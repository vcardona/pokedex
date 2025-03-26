import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pokemon_providers.dart';

class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});

  // ✅ NUEVO: función para obtener la imagen desde la URL del Pokémon
  String getImageUrl(String url) {
    final id = url.split('/')[url.split('/').length - 2]; // extrae el ID
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Pokédex')),
      body: state.when(
        data:
            (pokemons) => ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final p = pokemons[index];

                // ✅ NUEVO: obtenemos la imagen del Pokémon
                final imageUrl = getImageUrl(p.url);

                // ✅ MODIFICADO: usamos un Card y ListTile estilizado
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0), // espacio interno
                    child: Row(
                      children: [
                        // ✅ Imagen más grande
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 16), // espacio entre imagen y texto
                        // ✅ Texto que se adapta
                        Expanded(
                          child: Text(
                            p.name.toUpperCase(),
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),

                        // Ícono de navegación opcional
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                );
              },
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
