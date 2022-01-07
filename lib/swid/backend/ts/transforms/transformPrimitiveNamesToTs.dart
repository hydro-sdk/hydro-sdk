import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/mapPrimitiveSwidTypeNameToPrimitiveTsTypeName.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveFunctionTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformPrimitiveNamesToTs.freezed.dart';

@freezed
class TransformPrimitiveNamesToTs
    with
        _$TransformPrimitiveNamesToTs,
        HashKeyMixin<TransformPrimitiveNamesToTs>,
        HashComparableMixin<TransformPrimitiveNamesToTs>,
        SwarsTransformMixin<
            TransformPrimitiveNamesToTs,
            $TransformPrimitiveNamesToTsCopyWith<TransformPrimitiveNamesToTs>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin {
  TransformPrimitiveNamesToTs._();

  factory TransformPrimitiveNamesToTs({
    required final SwidType swidType,
  }) = _$TransformPrimitiveNamesToTsCtor;

  @override
  String get cacheGroup => "transformPrimitiveNamesToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  TransformPrimitiveNamesToTs clone({
    final SwidType? swidType,
  }) =>
      TransformPrimitiveNamesToTs(
        swidType: swidType ?? this.swidType,
      );

  @override
  SwidType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidType.fromJson(json);

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              TransformPrimitiveFunctionTypeNamesToTs(
                swidFunctionType: val,
              ),
            ),
          ),
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: SwidInterface.clone(
              swidType: val,
              name: val.originalPackagePath == "dart:core"
                  ? pipeline.reduceFromTerm(
                      MapPrimitiveSwidTypeNameToPrimitiveTsTypeName(
                        str: val.name,
                      ),
                    )
                  : val.name,
              typeArguments: val.typeArguments
                  .map(
                    (x) => SwidTypeArgumentType(
                      type: pipeline.reduceFromTerm(
                        TransformPrimitiveNamesToTs(
                          swidType: x.type,
                        ),
                      ),
                      element: x.element,
                    ),
                  )
                  .toList(),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) => swidType,
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: SwidClass.clone(
              swidClass: val,
              name: val.originalPackagePath == "dart:core"
                  ? pipeline.reduceFromTerm(
                      MapPrimitiveSwidTypeNameToPrimitiveTsTypeName(
                        str: val.name,
                      ),
                    )
                  : val.name,
              extendedClass: val.extendedClass != null
                  ? pipeline
                      .reduceFromTerm(
                        TransformPrimitiveNamesToTs(
                          swidType: SwidType.fromSwidClass(
                            swidClass: val.extendedClass!,
                          ),
                        ),
                      )
                      .when(
                        fromSwidInterface: (_) => null,
                        fromSwidClass: (val) => val,
                        fromSwidDefaultFormalParameter: (_) => null,
                        fromSwidFunctionType: (_) => null,
                      )
                  : null,
              implementedClasses: val.implementedClasses
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          TransformPrimitiveNamesToTs(
                            swidType: SwidType.fromSwidClass(
                              swidClass: x,
                            ),
                          ),
                        )
                        .when(
                          fromSwidInterface: (_) => dartUnknownClass,
                          fromSwidClass: (val) => val,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownClass,
                          fromSwidFunctionType: (_) => dartUnknownClass,
                        ),
                  )
                  .toList(),
              mixedInClasses: val.mixedInClasses
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          TransformPrimitiveNamesToTs(
                            swidType: SwidType.fromSwidClass(
                              swidClass: x,
                            ),
                          ),
                        )
                        .when(
                          fromSwidInterface: (_) => dartUnknownClass,
                          fromSwidClass: (val) => val,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownClass,
                          fromSwidFunctionType: (_) => dartUnknownClass,
                        ),
                  )
                  .toList(),
              typeFormals: val.typeFormals
                  .map(
                    (x) => SwidTypeFormal.clone(
                      swidTypeFormal: x,
                      value: x.value.when(
                        fromString: (val) => SwidTypeFormalValue.fromString(
                          string: val,
                        ),
                        fromSwidClass: (val) =>
                            SwidTypeFormalValue.fromSwidClass(
                          swidClass: pipeline
                              .reduceFromTerm(
                                TransformPrimitiveNamesToTs(
                                  swidType: SwidType.fromSwidClass(
                                    swidClass: val,
                                  ),
                                ),
                              )
                              .when(
                                fromSwidInterface: (_) => dartUnknownClass,
                                fromSwidClass: (val) => val,
                                fromSwidDefaultFormalParameter: (_) =>
                                    dartUnknownClass,
                                fromSwidFunctionType: (_) => dartUnknownClass,
                              ),
                        ),
                        fromSwidInterface: (val) =>
                            SwidTypeFormalValue.fromSwidInterface(
                          swidInterface: pipeline
                              .reduceFromTerm(
                                TransformPrimitiveNamesToTs(
                                  swidType: SwidType.fromSwidInterface(
                                    swidInterface: val,
                                  ),
                                ),
                              )
                              .when(
                                fromSwidInterface: (val) => val,
                                fromSwidClass: (_) => dartUnknownInterface,
                                fromSwidDefaultFormalParameter: (_) =>
                                    dartUnknownInterface,
                                fromSwidFunctionType: (_) =>
                                    dartUnknownInterface,
                              ),
                        ),
                        fromSwidFunctionType: (val) =>
                            SwidTypeFormalValue.fromSwidFunctionType(
                          swidFunctionType: SwidFunctionType.clone(
                            swidFunctionType: val,
                          ),
                        ),
                      ),
                    ),
                  )
                  .where((x) => x != dartUnkownTypeFormal)
                  .toList(),
              methods: val.methods
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      TransformPrimitiveFunctionTypeNamesToTs(
                        swidFunctionType: x,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      );
}
