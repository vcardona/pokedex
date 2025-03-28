import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemon_list_item.dart';
import 'package:pokedex/models/pokemon_detail.dart';

class PokeApiService {
  Future<List<PokemonListItem>> fetchPokemonList({int offset = 0, int limit = 20}) async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon?offset=$offset&limit=$limit');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final results = jsonData['results'] as List;
      return results.map((e) => PokemonListItem.fromJson(e as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Error al obtener los Pokémon');
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

  Future<List<String>> fetchPokemonTypes(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final types = data['types'] as List;
      return types.map((t) => t['type']['name'].toString()).toList();
    } else {
      throw Exception('Error al obtener tipos del Pokémon');
    }
  }
}
