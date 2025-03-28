import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/db/isar_service.dart';
import 'package:pokedex/models/pokemon_isar_model.dart';

class PokemonImportService {
  static const baseUrl = 'https://pokeapi.co/api/v2/pokemon';
  static const int totalToFetch = 200; // puedes ajustarlo

  Future<void> importAll() async {
    // ✅ Primero: borrar todos los Pokémon existentes
    await IsarService.isar.writeTxn(() async {
      await IsarService.isar.pokemonIsarModels.clear();
    });

    debugPrint('🗑️ Todos los Pokémon anteriores eliminados');

    int offset = 0;
    const limit = 20;

    while (offset < totalToFetch) {
      final uri = Uri.parse('$baseUrl?offset=$offset&limit=$limit');
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> results = data['results'] as List<dynamic>;

        for (final item in results) {
          final detailResp = await http.get(Uri.parse(item['url'] as String));
          if (detailResp.statusCode == 200) {
            final detailData = jsonDecode(detailResp.body);

            final id = detailData['id'];
            final name = detailData['name'];
            final types =
                (detailData['types'] as List).map((t) => t['type']['name'].toString()).toList();
            final height = detailData['height'] ?? 0;
            final weight = detailData['weight'] ?? 0;
            final abilities =
                (detailData['abilities'] as List)
                    .map((a) => a['ability']['name'].toString())
                    .toList();

            // Extraer estadísticas
            final stats = detailData['stats'] as List;
            int getStat(String name) {
              final stat = stats.firstWhere(
                (s) => s['stat']['name'] == name,
                orElse: () => {'base_stat': 0},
              );
              return stat['base_stat'] as int;
            }

            final hp = getStat('hp');
            final attack = getStat('attack');
            final defense = getStat('defense');
            final specialAttack = getStat('special-attack');
            final specialDefense = getStat('special-defense');
            final speed = getStat('speed');

            final imageUrl =
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

            final model = PokemonIsarModel.fromFullData(
              id: id as int,
              name: name as String,
              types: types,
              imageUrl: imageUrl,
              height: height as int,
              weight: weight as int,
              abilities: abilities,
              hp: hp,
              attack: attack,
              defense: defense,
              specialAttack: specialAttack,
              specialDefense: specialDefense,
              speed: speed,
            );

            await IsarService.isar.writeTxn(() async {
              await IsarService.isar.pokemonIsarModels.put(model);
            });

            debugPrint('✅ Guardado: $name [$types]');
          }
        }

        offset += limit;
      } else {
        debugPrint('❌ Error descargando batch en offset $offset');
        break;
      }
    }

    debugPrint('✅ Importación completa');
  }
}
