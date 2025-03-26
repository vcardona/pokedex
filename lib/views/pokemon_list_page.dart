import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pokemon_providers.dart';
import '../views/pokemon_detail_page.dart';

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
        data: (pokemons) {
          final query = ref.watch(searchQueryProvider);
          final filtered =
              query.isEmpty
                  ? pokemons
                  : pokemons.where((p) => p.name.toLowerCase().contains(query)).toList();

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar Pokémon...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (value) {
                    ref.read(searchQueryProvider.notifier).state = value.toLowerCase();
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filtered.length,
                  itemBuilder: (context, index) {
                    final p = filtered[index];

                    ref.read(pokemonListProvider.notifier).loadMoreIfNeeded(index);
                    final imageUrl = getImageUrl(p.url);

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PokemonDetailPage(url: p.url)),
                        );
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  imageUrl,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  p.name.toUpperCase(),
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
