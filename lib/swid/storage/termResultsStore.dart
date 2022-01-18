import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:tuple/tuple.dart';

import 'package:hydro_sdk/swid/storage/iTermResultsStore.dart';

part 'termResultsStore.g.dart';

class TermResults extends Table {
  TextColumn get cacheGroup => text()();
  TextColumn get hashKey => text()();
  TextColumn get result => text()();

  @override
  Set<Column> get primaryKey => {
        cacheGroup,
        hashKey,
      };
}

mixin _TermResultsMethods on _$_TermResultsDatabase {
  Future<void> _insert(
          {required final TermResultsCompanion termResultsCompanion}) async =>
      into(termResults).insertOnConflictUpdate(termResultsCompanion);

  Future<List<TermResult>> _getAllByCacheGroup({
    required final String cacheGroup,
  }) async =>
      (select(
        termResults,
      )..where(
              (
                x,
              ) =>
                  x.cacheGroup.equals(
                cacheGroup,
              ),
            ))
          .get();
}

@DriftDatabase(tables: [
  TermResults,
])
class _TermResultsDatabase extends _$_TermResultsDatabase
    with _TermResultsMethods {
  _TermResultsDatabase(final QueryExecutor queryExecutor)
      : super(queryExecutor);

  @override
  int schemaVersion = 1;
}

class TermResultsStore implements ITermResultStore {
  final _TermResultsDatabase _termResultsDatabase;

  TermResultsStore.memory()
      : _termResultsDatabase = _TermResultsDatabase(NativeDatabase.memory());

  TermResultsStore.queryExecutor(final QueryExecutor queryExecutor)
      : _termResultsDatabase = _TermResultsDatabase(queryExecutor);

  @override
  Future<void> upsertSingle({
    required final String hashKey,
    required final String cacheGroup,
    required final String result,
  }) async =>
      _termResultsDatabase._insert(
          termResultsCompanion: TermResultsCompanion.insert(
        cacheGroup: cacheGroup,
        hashKey: hashKey,
        result: result,
      ));

  Future<List<Tuple3<String, String, String>>> getAllByCacheGroup({
    required final String cacheGroup,
  }) async =>
      _termResultsDatabase
          ._getAllByCacheGroup(
            cacheGroup: cacheGroup,
          )
          .then(
            (value) => value
                .map(
                  (x) => Tuple3(
                    x.cacheGroup,
                    x.hashKey,
                    x.result,
                  ),
                )
                .toList(),
          );
}
