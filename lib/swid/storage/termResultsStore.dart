import 'package:drift/drift.dart';

part 'termResultsStore.g.dart';

class TermResults extends Table {
  TextColumn get cacheGroup => text()();
  TextColumn get hashKey => text()();
  TextColumn get result => text()();
}

@DriftDatabase(tables: [
  TermResults,
])
class TermResultsDatabase extends _$TermResultsDatabase {}
