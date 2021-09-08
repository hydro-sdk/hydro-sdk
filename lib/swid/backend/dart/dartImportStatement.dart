import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartImportStatement.freezed.dart';

@freezed
class DartImportStatement
    with
        _$DartImportStatement,
        HashKeyMixin<DartImportStatement>,
        HashComparableMixin<DartImportStatement>,
        SwarsTransformMixin<DartImportStatement,
            $DartImportStatementCopyWith<DartImportStatement>, String> {
  DartImportStatement._();

  factory DartImportStatement({
    required final String path,
  }) = _$DartImportStatementCtor;

  @override
  String get cacheGroup => "dartImportStatement";

  @override
  List<int> get hashableParts => [
        ...path.hashableParts,
      ];

  @override
  DartImportStatement clone({
    final String? path,
  }) =>
      DartImportStatement(
        path: path ?? this.path,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          "import ",
          "'",
          path,
          "'",
          ";",
          "\n",
        ].join(),
      );
}
