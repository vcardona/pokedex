import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemon_list_item.dart';
import 'package:pokedex/models/pokemon_detail.dart';

class PokeApiService {
  Future<List<PokemonListItem>> fetchPokemonList() async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=10');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final results = jsonData['results'] as List;
        return results
            .map((item) => PokemonListItem.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Error al obtener los datos');
      }
    } catch (e) {
      throw Exception('Error en la petición: $e');
    }
  }

  Future<PokemonDetail> fetchPokemonDetail(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return PokemonDetail.fromJson(data);
    } else {
      throw Exception('Error al cargar detalle del Pokémon');
    }
  }
}
