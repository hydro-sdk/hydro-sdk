import 'package:dart_style/dart_style.dart';
import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString;

part 'dartBindInstanceFieldDirect.freezed.dart';

@freezed
class DartBindInstanceFieldDirect
    with
        _$DartBindInstanceFieldDirect,
        HashKeyMixin<DartBindInstanceFieldDirect>,
        HashComparableMixin<DartBindInstanceFieldDirect>,
        SwarsTransformMixin<
            DartBindInstanceFieldDirect,
            $DartBindInstanceFieldDirectCopyWith<DartBindInstanceFieldDirect>,
            String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  DartBindInstanceFieldDirect._();

  factory DartBindInstanceFieldDirect({
    required final String instanceFieldName,
    required final String tableKey,
    required final bool format,
  }) = _$DartBindInstanceFieldDirectCtor;

  @override
  String get cacheGroup => "dartBindInstanceFieldDirect";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield [
      ...instanceFieldName.codeUnits,
    ];
    yield [
      ...tableKey.codeUnits,
    ];
    yield [
      ...format.hashableParts,
    ];
  }

  @override
  DartBindInstanceFieldDirect clone({
    final String? instanceFieldName,
    final String? tableKey,
    final bool? format,
  }) =>
      DartBindInstanceFieldDirect(
        instanceFieldName: instanceFieldName ?? this.instanceFieldName,
        tableKey: tableKey ?? this.tableKey,
        format: format ?? this.format,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        refer("table")
            .index(literalString(tableKey))
            .assign(refer(instanceFieldName))
            .statement
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString()
            .let(
              (it) => iff(
                format,
                () => DartFormatter().formatStatement(
                  it,
                ),
              ).orElse(
                () => it,
              ),
            ),
      );
}
