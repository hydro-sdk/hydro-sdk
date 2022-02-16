import 'package:code_builder/code_builder.dart'
    show refer, Block, Method, Parameter, TypeReference, DartEmitter;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInClass.dart';
import 'package:hydro_sdk/swid/backend/dart/util/constants.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
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
        SwarsEphemeralTermMixin,
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
      SwarsTermResult.fromValue(
        refer(
          [
            pipeline.reduceFromTerm(
              DartImportPrefix(
                swidType: SwidType.fromSwidInterface(
                  swidInterface: registerBoxer,
                ),
              ),
            ),
            registerBoxer.name,
          ].join("."),
        )
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
                              (t) => t
                                ..symbol = pipeline
                                    .reduceFromTerm(
                                      ImportPrefixReferencesInClass(
                                        swidClass: swidClass,
                                      ),
                                    )
                                    .name,
                            ),
                        ),
                        Parameter(
                          (p) => p
                            ..named = true
                            ..required = true
                            ..name = "hydroState"
                            ..type = TypeReference(
                              (t) => t
                                ..symbol = [
                                  pipeline.reduceFromTerm(
                                    DartImportPrefix(
                                      swidType: SwidType.fromSwidInterface(
                                        swidInterface: hydroState,
                                      ),
                                    ),
                                  ),
                                  hydroState.name,
                                ].join("."),
                            ),
                        ),
                        Parameter(
                          (p) => p
                            ..named = true
                            ..required = true
                            ..name = "table"
                            ..type = TypeReference(
                              (t) => t
                                ..symbol = [
                                  pipeline.reduceFromTerm(
                                    DartImportPrefix(
                                      swidType: SwidType.fromSwidInterface(
                                        swidInterface: hydroTable,
                                      ),
                                    ),
                                  ),
                                  hydroTable.name
                                ].join("."),
                            ),
                        ),
                      ],
                    )
                    ..body = Block.of(
                      [
                        refer("VMManaged${swidClass.name}")
                            .call(
                              [],
                              {
                                "vmObject": refer("vmObject"),
                                "hydroState": refer("hydroState"),
                                "table": refer("table"),
                              },
                            )
                            .returned
                            .statement,
                      ],
                    ),
                ).closure
              },
              [
                TypeReference(
                  (t) => t
                    ..symbol = pipeline
                        .reduceFromTerm(
                          ImportPrefixReferencesInClass(
                            swidClass: swidClass,
                          ),
                        )
                        .name,
                ),
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
