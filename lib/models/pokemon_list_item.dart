class PokemonListItem {
  final String name;
  final String url;
  List<String>? types;

  PokemonListItem({required this.name, required this.url, this.types});

  factory PokemonListItem.fromJson(Map<String, dynamic> json) {
    return PokemonListItem(name: json['name'] as String, url: json['url'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'url': url};
  }
}
