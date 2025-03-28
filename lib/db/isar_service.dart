import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/pokemon_isar_model.dart';

class IsarService {
  static late Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([PokemonIsarModelSchema], directory: dir.path);
  }
}
