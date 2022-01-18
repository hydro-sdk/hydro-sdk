// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'termResultsStore.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TermResult extends DataClass implements Insertable<TermResult> {
  final String cacheGroup;
  final String hashKey;
  final String result;
  TermResult(
      {required this.cacheGroup, required this.hashKey, required this.result});
  factory TermResult.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TermResult(
      cacheGroup: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cache_group'])!,
      hashKey: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hash_key'])!,
      result: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}result'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cache_group'] = Variable<String>(cacheGroup);
    map['hash_key'] = Variable<String>(hashKey);
    map['result'] = Variable<String>(result);
    return map;
  }

  TermResultsCompanion toCompanion(bool nullToAbsent) {
    return TermResultsCompanion(
      cacheGroup: Value(cacheGroup),
      hashKey: Value(hashKey),
      result: Value(result),
    );
  }

  factory TermResult.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TermResult(
      cacheGroup: serializer.fromJson<String>(json['cacheGroup']),
      hashKey: serializer.fromJson<String>(json['hashKey']),
      result: serializer.fromJson<String>(json['result']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cacheGroup': serializer.toJson<String>(cacheGroup),
      'hashKey': serializer.toJson<String>(hashKey),
      'result': serializer.toJson<String>(result),
    };
  }

  TermResult copyWith({String? cacheGroup, String? hashKey, String? result}) =>
      TermResult(
        cacheGroup: cacheGroup ?? this.cacheGroup,
        hashKey: hashKey ?? this.hashKey,
        result: result ?? this.result,
      );
  @override
  String toString() {
    return (StringBuffer('TermResult(')
          ..write('cacheGroup: $cacheGroup, ')
          ..write('hashKey: $hashKey, ')
          ..write('result: $result')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cacheGroup, hashKey, result);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TermResult &&
          other.cacheGroup == this.cacheGroup &&
          other.hashKey == this.hashKey &&
          other.result == this.result);
}

class TermResultsCompanion extends UpdateCompanion<TermResult> {
  final Value<String> cacheGroup;
  final Value<String> hashKey;
  final Value<String> result;
  const TermResultsCompanion({
    this.cacheGroup = const Value.absent(),
    this.hashKey = const Value.absent(),
    this.result = const Value.absent(),
  });
  TermResultsCompanion.insert({
    required String cacheGroup,
    required String hashKey,
    required String result,
  })  : cacheGroup = Value(cacheGroup),
        hashKey = Value(hashKey),
        result = Value(result);
  static Insertable<TermResult> custom({
    Expression<String>? cacheGroup,
    Expression<String>? hashKey,
    Expression<String>? result,
  }) {
    return RawValuesInsertable({
      if (cacheGroup != null) 'cache_group': cacheGroup,
      if (hashKey != null) 'hash_key': hashKey,
      if (result != null) 'result': result,
    });
  }

  TermResultsCompanion copyWith(
      {Value<String>? cacheGroup,
      Value<String>? hashKey,
      Value<String>? result}) {
    return TermResultsCompanion(
      cacheGroup: cacheGroup ?? this.cacheGroup,
      hashKey: hashKey ?? this.hashKey,
      result: result ?? this.result,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cacheGroup.present) {
      map['cache_group'] = Variable<String>(cacheGroup.value);
    }
    if (hashKey.present) {
      map['hash_key'] = Variable<String>(hashKey.value);
    }
    if (result.present) {
      map['result'] = Variable<String>(result.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TermResultsCompanion(')
          ..write('cacheGroup: $cacheGroup, ')
          ..write('hashKey: $hashKey, ')
          ..write('result: $result')
          ..write(')'))
        .toString();
  }
}

class $TermResultsTable extends TermResults
    with TableInfo<$TermResultsTable, TermResult> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TermResultsTable(this._db, [this._alias]);
  final VerificationMeta _cacheGroupMeta = const VerificationMeta('cacheGroup');
  @override
  late final GeneratedColumn<String?> cacheGroup = GeneratedColumn<String?>(
      'cache_group', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _hashKeyMeta = const VerificationMeta('hashKey');
  @override
  late final GeneratedColumn<String?> hashKey = GeneratedColumn<String?>(
      'hash_key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _resultMeta = const VerificationMeta('result');
  @override
  late final GeneratedColumn<String?> result = GeneratedColumn<String?>(
      'result', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [cacheGroup, hashKey, result];
  @override
  String get aliasedName => _alias ?? 'term_results';
  @override
  String get actualTableName => 'term_results';
  @override
  VerificationContext validateIntegrity(Insertable<TermResult> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cache_group')) {
      context.handle(
          _cacheGroupMeta,
          cacheGroup.isAcceptableOrUnknown(
              data['cache_group']!, _cacheGroupMeta));
    } else if (isInserting) {
      context.missing(_cacheGroupMeta);
    }
    if (data.containsKey('hash_key')) {
      context.handle(_hashKeyMeta,
          hashKey.isAcceptableOrUnknown(data['hash_key']!, _hashKeyMeta));
    } else if (isInserting) {
      context.missing(_hashKeyMeta);
    }
    if (data.containsKey('result')) {
      context.handle(_resultMeta,
          result.isAcceptableOrUnknown(data['result']!, _resultMeta));
    } else if (isInserting) {
      context.missing(_resultMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cacheGroup, hashKey};
  @override
  TermResult map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TermResult.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TermResultsTable createAlias(String alias) {
    return $TermResultsTable(_db, alias);
  }
}

abstract class _$_TermResultsDatabase extends GeneratedDatabase {
  _$_TermResultsDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $TermResultsTable termResults = $TermResultsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [termResults];
}
