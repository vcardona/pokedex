import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PokeApiService {
  Future<void> fetchPokemonNames() async {
    final url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=10');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);

        final results = jsonData['results'];
        for (var pokemon in results) {
          debugPrint(pokemon['name']); // 👈 Aquí mostramos los nombres
        }
      } else {
        debugPrint('Error al obtener datos. Código: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error en la petición: $e');
    }
  }
}
