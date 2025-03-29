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
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async {
    final importer = PokemonImportService();

    await importer.importAll((current, total, message) {
      if (mounted) {
        setState(() {
          status = message;
          progress = current / total;
        });
      }
    });

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo o título
              const Text(
                'Pokédex',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 32),

              // Barra de progreso
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                  minHeight: 10,
                ),
              ),
              const SizedBox(height: 16),

              // Mensaje de estado
              Text(
                status,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),

              // Porcentaje
              const SizedBox(height: 8),
              Text(
                '${(progress * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
