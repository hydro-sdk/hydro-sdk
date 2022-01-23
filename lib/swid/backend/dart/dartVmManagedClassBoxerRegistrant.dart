import 'package:code_builder/code_builder.dart'
    show refer, Block, Method, Parameter, TypeReference, DartEmitter;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartVmManagedClassBoxerRegistrant.freezed.dart';

@freezed
class DartVMManagedClassBoxerRegistrant
    with
        _$DartVMManagedClassBoxerRegistrant,
        HashKeyMixin<DartVMManagedClassBoxerRegistrant>,
        HashComparableMixin<DartVMManagedClassBoxerRegistrant>,
        SwarsTransformMixin<
            DartVMManagedClassBoxerRegistrant,
            $DartVMManagedClassBoxerRegistrantCopyWith<
                DartVMManagedClassBoxerRegistrant>,
            String>,
        SwarsTermStringResultMixin {
  DartVMManagedClassBoxerRegistrant._();

  factory DartVMManagedClassBoxerRegistrant({
    required final SwidClass swidClass,
  }) = _$DartVMManagedClassBoxerRegistrantCtor;

  @override
  String get cacheGroup => "dartVMManagedClassBoxerRegistrant";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  DartVMManagedClassBoxerRegistrant clone({
    final SwidClass? swidClass,
  }) =>
      DartVMManagedClassBoxerRegistrant(
        swidClass: swidClass ?? this.swidClass.clone(),
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        refer("registerBoxer")
            .call(
              [],
              {
                "boxer": Method(
                  (m) => m
                    ..optionalParameters.addAll(
                      [
                        Parameter(
                          (p) => p
                            ..named = true
                            ..required = true
                            ..name = "vmObject"
                            ..type = TypeReference(
                              (t) => t..symbol = swidClass.name,
                            ),
                        ),
                        Parameter(
                          (p) => p
                            ..named = true
                            ..required = true
                            ..name = "hydroState"
                            ..type = TypeReference(
                              (t) => t..symbol = "HydroState",
                            ),
                        ),
                        Parameter(
                          (p) => p
                            ..named = true
                            ..required = true
                            ..name = "table"
                            ..type = TypeReference(
                              (t) => t..symbol = "HydroTable",
                            ),
                        ),
                      ],
                    )
                    ..body = Block.of(
                      [
                        refer("VMManaged${swidClass.name}")
                            .call([], {
                              "vmObject": refer("vmObject"),
                              "hydroState": refer("hydroState"),
                              "table": refer("table"),
                            })
                            .returned
                            .statement,
                      ],
                    ),
                ).closure
              },
              [
                TypeReference((t) => t..symbol = swidClass.name),
              ],
            )
            .statement
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString(),
      );
}
