import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/pokemon_providers.dart';

class TypeFilterSheet extends ConsumerWidget {
  const TypeFilterSheet({super.key});

  final List<String> types = const [
    'normal',
    'fire',
    'water',
    'grass',
    'electric',
    'ice',
    'fighting',
    'poison',
    'ground',
    'flying',
    'psychic',
    'bug',
    'rock',
    'ghost',
    'dragon',
    'dark',
    'steel',
    'fairy',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedType = ref.watch(selectedTypeProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          ChoiceChip(
            label: const Text('Todos'),
            selected: selectedType == null,
            onSelected: (_) {
              ref.read(selectedTypeProvider.notifier).state = null;
              Navigator.pop(context);
            },
          ),
          ...types.map(
            (type) => ChoiceChip(
              label: Text(type),
              selected: selectedType == type,
              onSelected: (_) {
                ref.read(selectedTypeProvider.notifier).state = type;
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
