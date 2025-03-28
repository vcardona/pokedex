import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/local_providers.dart';

class PokemonDetailPage extends ConsumerWidget {
  final int pokemonId;

  const PokemonDetailPage({super.key, required this.pokemonId});

  Color _getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'normal':
        return Colors.grey[400]!;
      case 'fire':
        return Colors.red[400]!;
      case 'water':
        return Colors.blue[400]!;
      case 'grass':
        return Colors.green[400]!;
      case 'electric':
        return Colors.yellow[700]!;
      case 'ice':
        return Colors.lightBlue[300]!;
      case 'fighting':
        return Colors.orange[700]!;
      case 'poison':
        return Colors.purple[400]!;
      case 'ground':
        return Colors.brown[400]!;
      case 'flying':
        return Colors.indigo[300]!;
      case 'psychic':
        return Colors.pink[400]!;
      case 'bug':
        return Colors.lightGreen[400]!;
      case 'rock':
        return Colors.brown[300]!;
      case 'ghost':
        return Colors.deepPurple[400]!;
      case 'dragon':
        return Colors.indigo[400]!;
      case 'dark':
        return Colors.grey[800]!;
      case 'steel':
        return Colors.blueGrey[400]!;
      case 'fairy':
        return Colors.pink[300]!;
      default:
        return Colors.grey[400]!;
    }
  }

  Widget _buildStatBar(String label, int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(value.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: value / 255,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                value > 150
                    ? Colors.green
                    : value > 100
                    ? Colors.orange
                    : Colors.red,
              ),
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(localPokemonDetailProvider(pokemonId));

    return Scaffold(
      body: detailAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (pokemon) {
          final imageUrl =
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemon.pokemonId}.png';

          // Usar el primer tipo para el gradiente
          final typeColor = _getTypeColor(pokemon.types.first);

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 80,
                pinned: true,
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black87),
                  onPressed: () => Navigator.pop(context),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(
                    left: 56, // 56 = 40 (leading width) + 16 (padding)
                    right: 16,
                    bottom: 16,
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          pokemon.name.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Text(
                        '#${pokemon.pokemonId.toString().padLeft(3, '0')}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  centerTitle: false,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tipos directamente debajo del AppBar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Wrap(
                        spacing: 8,
                        children:
                            pokemon.types
                                .map(
                                  (type) => Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: _getTypeColor(type),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      type.toUpperCase(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Imagen del Pokémon
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Image.network(
                          imageUrl,
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Información básica
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        elevation: 0,
                        color: Colors.grey[50],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Información Básica',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  _buildInfoItem('Altura', '${pokemon.height}m'),
                                  _buildInfoItem('Peso', '${pokemon.weight}kg'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Habilidades
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        elevation: 0,
                        color: Colors.grey[50],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Habilidades',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 16),
                              ...pokemon.abilities.map(
                                (ability) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.star, size: 16),
                                      const SizedBox(width: 8),
                                      Text(ability, style: const TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Estadísticas
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        elevation: 0,
                        color: Colors.grey[50],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Estadísticas Base',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 16),
                              _buildStatBar('HP', pokemon.hp),
                              _buildStatBar('Ataque', pokemon.attack),
                              _buildStatBar('Defensa', pokemon.defense),
                              _buildStatBar('Ataque Especial', pokemon.specialAttack),
                              _buildStatBar('Defensa Especial', pokemon.specialDefense),
                              _buildStatBar('Velocidad', pokemon.speed),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Column(
      children: [
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
