import 'package:flutter/material.dart';
import 'package:pokedex/services/pokeapi_service.dart';

void main() async {
  runApp(MainApp());
  final api = PokeApiService();
  final list = await api.fetchPokemonList();

  for (final p in list) {
    debugPrint('${p.name} -> ${p.url}');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      home: Scaffold(
        appBar: AppBar(title: Text('Pokédex')),
        body: Center(child: Text('Mira la consola 🧪')),
      ),
    );
  }
}
