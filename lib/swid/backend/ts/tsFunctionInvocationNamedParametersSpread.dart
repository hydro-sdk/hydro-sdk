import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionInvocationNamedParametersSpread.freezed.dart';

@freezed
class TsFunctionInvocationNamedParametersSpread
    with
        _$TsFunctionInvocationNamedParametersSpread,
        HashKeyMixin<TsFunctionInvocationNamedParametersSpread>,
        HashComparableMixin<TsFunctionInvocationNamedParametersSpread>,
        SwarsTransformMixin<
            TsFunctionInvocationNamedParametersSpread,
            $TsFunctionInvocationNamedParametersSpreadCopyWith<
                TsFunctionInvocationNamedParametersSpread>,
            String>,
        SwarsTermStringResultMixin {
  TsFunctionInvocationNamedParametersSpread._();

  factory TsFunctionInvocationNamedParametersSpread({
    required final HashableList<String> references,
  }) = _$TsFunctionInvocationNamedParametersSpreadCtor;

  @override
  String get cacheGroup => "tsFunctionInvocationNamedParametersSpread";

  @override
  List<int> get hashableParts => [
        ...references.hashableParts,
      ];

  @override
  TsFunctionInvocationNamedParametersSpread clone({
    final HashableList<String>? references,
  }) =>
      TsFunctionInvocationNamedParametersSpread(
        references: references ?? this.references,
      );

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        references.map((x) => "...${x}").toList().join(",\n"),
      );
}
