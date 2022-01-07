import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, literalString, Code;

import 'package:dart_style/dart_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartMethodBindingImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartVmManagedClassMethodInjectionImplementation.freezed.dart';

@freezed
class DartVMManagedClassMethodInjectionImplementation
    with
        _$DartVMManagedClassMethodInjectionImplementation,
        HashKeyMixin<DartVMManagedClassMethodInjectionImplementation>,
        HashComparableMixin<DartVMManagedClassMethodInjectionImplementation>,
        SwarsTransformMixin<
            DartVMManagedClassMethodInjectionImplementation,
            $DartVMManagedClassMethodInjectionImplementationCopyWith<
                DartVMManagedClassMethodInjectionImplementation>,
            String>,
        SwarsTermStringResultMixin {
  DartVMManagedClassMethodInjectionImplementation._();

  factory DartVMManagedClassMethodInjectionImplementation({
    required final SwidFunctionType swidFunctionType,
    required final String tableKey,
  }) = _$DartVMManagedClassMethodInjectionImplementationCtor;

  @override
  String get cacheGroup => "dartVMManagedClassMethodInjectionImplementation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  DartVMManagedClassMethodInjectionImplementation clone({
    final SwidFunctionType? swidFunctionType,
    final String? tableKey,
  }) =>
      DartVMManagedClassMethodInjectionImplementation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType.clone(),
        tableKey: tableKey ?? this.tableKey,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        DartFormatter().formatStatement(
          refer("table")
              .index(literalString(tableKey))
              .assign(
                luaDartBinding(
                  code: Code(
                    pipeline.reduceFromTerm(
                      DartMethodBindingImplementation(
                        swidFunctionType: swidFunctionType,
                      ),
                    ),
                  ),
                ),
              )
              .statement
              .accept(
                DartEmitter(
                  useNullSafetySyntax: true,
                ),
              )
              .toString(),
        ),
      );
}
