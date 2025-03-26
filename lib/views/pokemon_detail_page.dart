import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pokemon_providers.dart';

class PokemonDetailPage extends ConsumerWidget {
  final String url;

  const PokemonDetailPage({super.key, required this.url});

  TextStyle _infoStyle() => const TextStyle(fontSize: 16, color: Colors.black87);
  TextStyle _sectionTitleStyle() =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87);

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
                SizedBox(
                  width: double.infinity, // ✅ Hace que la Card se expanda horizontalmente
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 20.0,
                      ), // ✅ Padding más horizontal que vertical
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
                          const SizedBox(height: 16),

                          Text('Tipo(s):', style: _sectionTitleStyle()),
                          Wrap(
                            spacing: 8,
                            children:
                                pokemon.types.map((type) {
                                  return Chip(label: Text(type.type.name));
                                }).toList(),
                          ),
                          const SizedBox(height: 16),

                          Text('Habilidades:', style: _sectionTitleStyle()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                pokemon.abilities.map((ability) {
                                  return Text('- ${ability.ability.name}', style: _infoStyle());
                                }).toList(),
                          ),
                          const SizedBox(height: 16),

                          Text('Estadísticas base:', style: _sectionTitleStyle()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                pokemon.stats.map((stat) {
                                  return Text(
                                    '${stat.stat.name}: ${stat.baseStat}',
                                    style: _infoStyle(),
                                  );
                                }).toList(),
                          ),
                        ],
                      ),
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
}
