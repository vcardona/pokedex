import 'package:flutter/material.dart';
import 'package:pokedex/db/isar_service.dart';
import 'package:pokedex/models/pokemon_isar_model.dart';
import 'package:pokedex/services/pokemon_import_service.dart';
import 'pokemon_list_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String status = 'Verificando base de datos...';

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async {
    setState(() => status = 'Limpiando datos anteriores...');
    await IsarService.isar.writeTxn(() async {
      await IsarService.isar.pokemonIsarModels.clear(); // ✅ Borra todos los anteriores
    });

    setState(() => status = 'Descargando datos actualizados...');
    final importer = PokemonImportService();
    await importer.importAll();

    await Future.delayed(const Duration(milliseconds: 600));

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const PokemonListPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef5fc),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const CircularProgressIndicator(), const SizedBox(height: 16), Text(status)],
        ),
      ),
    );
  }
}
