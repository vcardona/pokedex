class PokemonDetail {
  final String name;
  final int id;
  final int height;
  final int weight;

  PokemonDetail({required this.name, required this.id, required this.height, required this.weight});

  factory PokemonDetail.fromJson(Map<String, dynamic> json) {
    return PokemonDetail(
      name: json['name'] as String,
      id: json['id'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
    );
  }
}
