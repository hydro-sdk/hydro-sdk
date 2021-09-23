import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsResolvedImport.freezed.dart';

@freezed
class TsResolvedImport
    with
        _$TsResolvedImport,
        HashKeyMixin<TsResolvedImport>,
        HashComparableMixin<TsResolvedImport>,
        SwarsTransformMixin<TsResolvedImport,
            $TsResolvedImportCopyWith<TsResolvedImport>, String>,
        SwarsTermStringResultMixin {
  TsResolvedImport._();

  factory TsResolvedImport({
    required final HashableList<String> symbols,
    required final String path,
  }) = _$TsResolvedImportCtor;

  @override
  String get cacheGroup => "tsResolvedImport";

  @override
  List<int> get hashableParts => [
        ...symbols.hashableParts,
        ...path.hashableParts,
      ];

  @override
  TsResolvedImport clone({
    final HashableList<String>? symbols,
    final String? path,
  }) =>
      TsResolvedImport(
        symbols: symbols ?? this.symbols,
        path: path ?? this.path,
      );

  @override
  ISwarsTermResult<String> transform({
    required ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          "import { ",
          symbols.join(","),
          " }",
          " from ",
          "\"",
          path,
          "\";",
        ].join(),
      );
}
