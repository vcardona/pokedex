// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_isar_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonIsarModelCollection on Isar {
  IsarCollection<PokemonIsarModel> get pokemonIsarModels => this.collection();
}

const PokemonIsarModelSchema = CollectionSchema(
  name: r'PokemonIsarModel',
  id: -2301888884208804043,
  properties: {
    r'abilities': PropertySchema(
      id: 0,
      name: r'abilities',
      type: IsarType.stringList,
    ),
    r'attack': PropertySchema(
      id: 1,
      name: r'attack',
      type: IsarType.long,
    ),
    r'defense': PropertySchema(
      id: 2,
      name: r'defense',
      type: IsarType.long,
    ),
    r'height': PropertySchema(
      id: 3,
      name: r'height',
      type: IsarType.long,
    ),
    r'hp': PropertySchema(
      id: 4,
      name: r'hp',
      type: IsarType.long,
    ),
    r'imageUrl': PropertySchema(
      id: 5,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'pokemonId': PropertySchema(
      id: 7,
      name: r'pokemonId',
      type: IsarType.long,
    ),
    r'specialAttack': PropertySchema(
      id: 8,
      name: r'specialAttack',
      type: IsarType.long,
    ),
    r'specialDefense': PropertySchema(
      id: 9,
      name: r'specialDefense',
      type: IsarType.long,
    ),
    r'speed': PropertySchema(
      id: 10,
      name: r'speed',
      type: IsarType.long,
    ),
    r'types': PropertySchema(
      id: 11,
      name: r'types',
      type: IsarType.stringList,
    ),
    r'weight': PropertySchema(
      id: 12,
      name: r'weight',
      type: IsarType.long,
    )
  },
  estimateSize: _pokemonIsarModelEstimateSize,
  serialize: _pokemonIsarModelSerialize,
  deserialize: _pokemonIsarModelDeserialize,
  deserializeProp: _pokemonIsarModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'pokemonId': IndexSchema(
      id: -2962037729536387078,
      name: r'pokemonId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'pokemonId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _pokemonIsarModelGetId,
  getLinks: _pokemonIsarModelGetLinks,
  attach: _pokemonIsarModelAttach,
  version: '3.1.0+1',
);

int _pokemonIsarModelEstimateSize(
  PokemonIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.abilities.length * 3;
  {
    for (var i = 0; i < object.abilities.length; i++) {
      final value = object.abilities[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.imageUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.types.length * 3;
  {
    for (var i = 0; i < object.types.length; i++) {
      final value = object.types[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _pokemonIsarModelSerialize(
  PokemonIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.abilities);
  writer.writeLong(offsets[1], object.attack);
  writer.writeLong(offsets[2], object.defense);
  writer.writeLong(offsets[3], object.height);
  writer.writeLong(offsets[4], object.hp);
  writer.writeString(offsets[5], object.imageUrl);
  writer.writeString(offsets[6], object.name);
  writer.writeLong(offsets[7], object.pokemonId);
  writer.writeLong(offsets[8], object.specialAttack);
  writer.writeLong(offsets[9], object.specialDefense);
  writer.writeLong(offsets[10], object.speed);
  writer.writeStringList(offsets[11], object.types);
  writer.writeLong(offsets[12], object.weight);
}

PokemonIsarModel _pokemonIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonIsarModel();
  object.abilities = reader.readStringList(offsets[0]) ?? [];
  object.attack = reader.readLong(offsets[1]);
  object.defense = reader.readLong(offsets[2]);
  object.height = reader.readLong(offsets[3]);
  object.hp = reader.readLong(offsets[4]);
  object.id = id;
  object.imageUrl = reader.readString(offsets[5]);
  object.name = reader.readString(offsets[6]);
  object.pokemonId = reader.readLong(offsets[7]);
  object.specialAttack = reader.readLong(offsets[8]);
  object.specialDefense = reader.readLong(offsets[9]);
  object.speed = reader.readLong(offsets[10]);
  object.types = reader.readStringList(offsets[11]) ?? [];
  object.weight = reader.readLong(offsets[12]);
  return object;
}

P _pokemonIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readStringList(offset) ?? []) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonIsarModelGetId(PokemonIsarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonIsarModelGetLinks(PokemonIsarModel object) {
  return [];
}

void _pokemonIsarModelAttach(
    IsarCollection<dynamic> col, Id id, PokemonIsarModel object) {
  object.id = id;
}

extension PokemonIsarModelQueryWhereSort
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QWhere> {
  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhere> anyPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'pokemonId'),
      );
    });
  }
}

extension PokemonIsarModelQueryWhere
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QWhereClause> {
  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      pokemonIdEqualTo(int pokemonId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'pokemonId',
        value: [pokemonId],
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      pokemonIdNotEqualTo(int pokemonId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokemonId',
              lower: [],
              upper: [pokemonId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokemonId',
              lower: [pokemonId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokemonId',
              lower: [pokemonId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokemonId',
              lower: [],
              upper: [pokemonId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      pokemonIdGreaterThan(
    int pokemonId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'pokemonId',
        lower: [pokemonId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      pokemonIdLessThan(
    int pokemonId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'pokemonId',
        lower: [],
        upper: [pokemonId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      pokemonIdBetween(
    int lowerPokemonId,
    int upperPokemonId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'pokemonId',
        lower: [lowerPokemonId],
        includeLower: includeLower,
        upper: [upperPokemonId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterWhereClause>
      nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PokemonIsarModelQueryFilter
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QFilterCondition> {
  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'abilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'abilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'abilities',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'abilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'abilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'abilities',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'abilities',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abilities',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'abilities',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      abilitiesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'abilities',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      attackEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      attackGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      attackLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      attackBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      defenseEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defense',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      defenseGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defense',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      defenseLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defense',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      defenseBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defense',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      heightEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      heightGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      heightLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      heightBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      hpEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hp',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      hpGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hp',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      hpLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hp',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      hpBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      pokemonIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pokemonId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      pokemonIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pokemonId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      pokemonIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pokemonId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      pokemonIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pokemonId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialAttackEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialAttack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialAttackGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialAttack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialAttackLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialAttack',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialAttackBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialAttack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialDefenseEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialDefense',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialDefenseGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialDefense',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialDefenseLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialDefense',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      specialDefenseBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialDefense',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      speedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      speedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      speedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      speedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'types',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'types',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      typesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      weightEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      weightGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      weightLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterFilterCondition>
      weightBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PokemonIsarModelQueryObject
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QFilterCondition> {}

extension PokemonIsarModelQueryLinks
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QFilterCondition> {}

extension PokemonIsarModelQuerySortBy
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QSortBy> {
  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attack', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByAttackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attack', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByDefense() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defense', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByDefenseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defense', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> sortByHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hp', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hp', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByPokemonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortBySpecialAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialAttack', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortBySpecialAttackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialAttack', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortBySpecialDefense() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDefense', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortBySpecialDefenseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDefense', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> sortBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonIsarModelQuerySortThenBy
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QSortThenBy> {
  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attack', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByAttackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attack', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByDefense() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defense', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByDefenseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defense', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> thenByHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hp', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hp', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByPokemonIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokemonId', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenBySpecialAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialAttack', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenBySpecialAttackDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialAttack', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenBySpecialDefense() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDefense', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenBySpecialDefenseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialDefense', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy> thenBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QAfterSortBy>
      thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension PokemonIsarModelQueryWhereDistinct
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct> {
  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByAbilities() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'abilities');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attack');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByDefense() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'defense');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'height');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct> distinctByHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hp');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByPokemonId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pokemonId');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctBySpecialAttack() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialAttack');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctBySpecialDefense() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialDefense');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speed');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'types');
    });
  }

  QueryBuilder<PokemonIsarModel, PokemonIsarModel, QDistinct>
      distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight');
    });
  }
}

extension PokemonIsarModelQueryProperty
    on QueryBuilder<PokemonIsarModel, PokemonIsarModel, QQueryProperty> {
  QueryBuilder<PokemonIsarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonIsarModel, List<String>, QQueryOperations>
      abilitiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abilities');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> attackProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attack');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> defenseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'defense');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> hpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hp');
    });
  }

  QueryBuilder<PokemonIsarModel, String, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<PokemonIsarModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> pokemonIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pokemonId');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations>
      specialAttackProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialAttack');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations>
      specialDefenseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialDefense');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> speedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speed');
    });
  }

  QueryBuilder<PokemonIsarModel, List<String>, QQueryOperations>
      typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }

  QueryBuilder<PokemonIsarModel, int, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}
