import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider para el texto de búsqueda
final searchQueryProvider = StateProvider<String>((ref) => '');

// Provider para el tipo seleccionado en el filtro
final selectedTypeProvider = StateProvider<String?>((ref) => null);
