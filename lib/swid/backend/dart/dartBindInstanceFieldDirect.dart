import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString;

import 'package:dart_style/dart_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iHashKey.dart';

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
            String>
    implements
        IHashKey {
  DartBindInstanceFieldDirect._();

  factory DartBindInstanceFieldDirect({
    required final String instanceFieldName,
    required final String tableKey,
  }) = _$DartBindInstanceFieldDirectCtor;

  @override
  String get cacheGroup => "dartBindInstanceFieldDirect";

  @override
  DartBindInstanceFieldDirect clone({
    final String? instanceFieldName,
    final String? tableKey,
  }) =>
      DartBindInstanceFieldDirect(
        instanceFieldName: instanceFieldName ?? this.instanceFieldName,
        tableKey: tableKey ?? this.tableKey,
      );

  @override
  String transform({
    required final ISwarsPipeline pipeline,
  }) =>
      DartFormatter().formatStatement(refer("table")
          .index(literalString(tableKey))
          .assign(refer(instanceFieldName))
          .statement
          .accept(DartEmitter(
            useNullSafetySyntax: true,
          ))
          .toString());
}
