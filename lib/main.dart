import 'package:flutter/material.dart';
import 'package:pokedex/services/pokeapi_service.dart';

void main() {
  runApp(MainApp());
  final api = PokeApiService();
  api.fetchPokemonNames();
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
