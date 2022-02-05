import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidInterfaceElement.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'markClassReferences.freezed.dart';

@freezed
class MarkClassReferences
    with
        _$MarkClassReferences,
        HashKeyMixin<MarkClassReferences>,
        HashComparableMixin<MarkClassReferences>,
        SwarsTransformMixin<MarkClassReferences,
            $MarkClassReferencesCopyWith<MarkClassReferences>, SwidType>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  MarkClassReferences._();

  factory MarkClassReferences({
    required final SwidType swidType,
  }) = _$MarkClassReferencesCtor;

  @override
  String get cacheGroup => "markClassReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  MarkClassReferences clone({
    final SwidType? swidType,
  }) =>
      MarkClassReferences(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidType.when(
          fromSwidInterface: (val) => isPrimitiveMap(
            swidType: SwidType.fromSwidInterface(
              swidInterface: val,
            ),
          )
              ? SwidType.fromSwidInterface(
                  swidInterface: val.clone(
                    typeArguments: [
                      val.typeArguments.first,
                      SwidTypeArgumentType(
                        type: pipeline.reduceFromTerm(
                          MarkClassReferences(
                            swidType: val.typeArguments.last.type,
                          ),
                        ),
                        element: val.typeArguments.last.element,
                      )
                    ],
                  ),
                )
              : SwidType.fromSwidInterface(
                  swidInterface: narrowSwidInterfaceByReferenceDeclaration(
                    swidInterface: val,
                    onPrimitive: (val) => val,
                    onClass: (val) => val.clone(
                      element: !isPrimitive(
                        swidType: SwidType.fromSwidInterface(
                          swidInterface: val,
                        ),
                      )
                          ? val.element?.let(
                              (it) => it.when(
                                fromSwidTypeArgumentElement: (val) =>
                                    SwidElement.fromSwidInterfaceElement(
                                  swidInterfaceElement:
                                      SwidInterfaceElement.empty().clone(
                                    isClassReference: true,
                                  ),
                                ),
                                fromSwidInterfaceElement: (val) =>
                                    SwidElement.fromSwidInterfaceElement(
                                  swidInterfaceElement: val.clone(
                                    isClassReference: true,
                                  ),
                                ),
                                fromSwidClassElement: (val) =>
                                    SwidElement.fromSwidClassElement(
                                  swidClassElement: val.clone(
                                    isClassReference: true,
                                  ),
                                ),
                              ),
                            )
                          : val.element,
                      typeArguments: val.typeArguments
                          .map(
                            (x) => x.clone(
                              type: pipeline.reduceFromTerm(
                                MarkClassReferences(
                                  swidType: x.type,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    onEnum: (val) => val,
                    onVoid: (val) => val,
                    onTypeParameter: (val) => val,
                    onDynamic: (val) => val,
                    onUnknown: (val) => val,
                  ),
                ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: val.clone(
              constructorType: val.constructorType?.let(
                (it) => pipeline
                    .reduceFromTerm(
                      MarkClassReferences(
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType: it,
                        ),
                      ),
                    )
                    .when(
                      fromSwidInterface: (_) => dartUnknownFunction,
                      fromSwidClass: (_) => dartUnknownFunction,
                      fromSwidDefaultFormalParameter: (_) =>
                          dartUnknownFunction,
                      fromSwidFunctionType: (val) => val,
                    ),
              ),
              typeFormals: val.typeFormals
                  .map(
                    (x) => x.clone(
                      value: x.value.when(
                        fromString: (val) => SwidTypeFormalValue.fromString(
                          string: val,
                        ),
                        fromSwidClass: (val) =>
                            SwidTypeFormalValue.fromSwidClass(
                          swidClass: pipeline
                              .reduceFromTerm(
                                MarkClassReferences(
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
                                MarkClassReferences(
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
                          swidFunctionType: val.clone(),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              factoryConstructors: val.factoryConstructors
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          MarkClassReferences(
                            swidType: SwidType.fromSwidFunctionType(
                              swidFunctionType: x,
                            ),
                          ),
                        )
                        .when(
                          fromSwidInterface: (_) => dartUnknownFunction,
                          fromSwidClass: (_) => dartUnknownFunction,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownFunction,
                          fromSwidFunctionType: (val) => val,
                        ),
                  )
                  .toList(),
              staticMethods: val.staticMethods
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          MarkClassReferences(
                            swidType: SwidType.fromSwidFunctionType(
                              swidFunctionType: x,
                            ),
                          ),
                        )
                        .when(
                          fromSwidInterface: (_) => dartUnknownFunction,
                          fromSwidClass: (_) => dartUnknownFunction,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownFunction,
                          fromSwidFunctionType: (val) => val,
                        ),
                  )
                  .toList(),
              methods: val.methods
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          MarkClassReferences(
                            swidType: SwidType.fromSwidFunctionType(
                              swidFunctionType: x,
                            ),
                          ),
                        )
                        .when(
                          fromSwidInterface: (_) => dartUnknownFunction,
                          fromSwidClass: (_) => dartUnknownFunction,
                          fromSwidDefaultFormalParameter: (_) =>
                              dartUnknownFunction,
                          fromSwidFunctionType: (val) => val,
                        ),
                  )
                  .toList(),
              instanceFieldDeclarations: Map.fromEntries(
                val.instanceFieldDeclarations.entries
                    .map(
                      (x) => MapEntry(
                        x.key,
                        pipeline.reduceFromTerm(
                          MarkClassReferences(
                            swidType: x.value,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              extendedClass: val.extendedClass?.let(
                (it) => pipeline
                    .reduceFromTerm(
                      MarkClassReferences(
                        swidType: SwidType.fromSwidClass(
                          swidClass: it,
                        ),
                      ),
                    )
                    .when(
                      fromSwidInterface: (_) => dartUnknownClass,
                      fromSwidClass: (val) => val,
                      fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
                      fromSwidFunctionType: (_) => dartUnknownClass,
                    ),
              ),
              implementedClasses: val.implementedClasses
                  .map(
                    (x) => pipeline
                        .reduceFromTerm(
                          MarkClassReferences(
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
                          MarkClassReferences(
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
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: val.clone(
              value: val.value.when(
                fromSwidStaticConstTopLevelVariableReference: (val) =>
                    SwidStaticConst
                        .fromSwidStaticConstTopLevelVariableReference(
                  swidStaticConstTopLevelVariableReference: val,
                ),
                fromSwidBooleanLiteral: (val) =>
                    SwidStaticConst.fromSwidBooleanLiteral(
                  swidBooleanLiteral: val,
                ),
                fromSwidStringLiteral: (val) =>
                    SwidStaticConst.fromSwidStringLiteral(
                  swidStringLiteral: val,
                ),
                fromSwidIntegerLiteral: (val) =>
                    SwidStaticConst.fromSwidIntegerLiteral(
                  swidIntegerLiteral: val,
                ),
                fromDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
                  swidDoubleLiteral: val,
                ),
                fromSwidStaticConstFunctionInvocation: (val) =>
                    SwidStaticConst.fromSwidStaticConstFunctionInvocation(
                  staticConstFunctionInvocation: val,
                ),
                fromSwidStaticConstFieldReference: (val) =>
                    SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference: val,
                ),
                fromSwidStaticConstPrefixedExpression: (val) =>
                    SwidStaticConst.fromSwidStaticConstPrefixedExpression(
                  swidStaticConstPrefixedExpression: val,
                ),
                fromSwidStaticConstBinaryExpression: (val) =>
                    SwidStaticConst.fromSwidStaticConstBinaryExpression(
                  swidStaticConstBinaryExpression: val,
                ),
                fromSwidStaticConstPrefixedIdentifier: (val) =>
                    SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                  staticConstPrefixedIdentifier: val,
                ),
                fromSwidStaticConstIdentifier: (val) =>
                    SwidStaticConst.fromSwidStaticConstIdentifier(
                  staticConstIdentifier: val,
                ),
                fromSwidStaticConstListLiteral: (val) =>
                    SwidStaticConst.fromSwidStaticConstListLiteral(
                  staticConstListLiteral: val.clone(
                      staticType: pipeline.reduceFromTerm(MarkClassReferences(
                    swidType: val.staticType,
                  ))),
                ),
                fromSwidStaticConstMapLiteralEntry: (val) =>
                    SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
                  swidStaticConstMapLiteralEntry: val.clone(),
                ),
                fromSwidStaticConstMapLiteral: (val) =>
                    SwidStaticConst.fromSwidStaticConstMapLiteral(
                  swidStaticConstMapLiteral: val.clone(
                    staticType: pipeline.reduceFromTerm(
                      MarkClassReferences(
                        swidType: val.staticType,
                      ),
                    ),
                  ),
                ),
                fromSwidStaticConstPropertyAccess: (val) =>
                    SwidStaticConst.fromSwidStaticConstPropertyAccess(
                  swidStaticConstPropertyAccess: val,
                ),
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: val.clone(
              returnType: pipeline.reduceFromTerm(
                MarkClassReferences(
                  swidType: val.returnType,
                ),
              ),
              normalParameterTypes: val.normalParameterTypes
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      MarkClassReferences(
                        swidType: x,
                      ),
                    ),
                  )
                  .toList(),
              optionalParameterTypes: val.optionalParameterTypes
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      MarkClassReferences(
                        swidType: x,
                      ),
                    ),
                  )
                  .toList(),
              namedParameterTypes: Map.fromEntries(
                val.namedParameterTypes.entries
                    .map(
                      (x) => MapEntry(
                        x.key,
                        pipeline.reduceFromTerm(
                          MarkClassReferences(
                            swidType: x.value,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              namedDefaults: val.namedDefaults.map(
                (key, value) => MapEntry(
                  key,
                  value.clone(
                    value: value.value.when(
                      fromSwidStaticConstTopLevelVariableReference: (val) =>
                          SwidStaticConst
                              .fromSwidStaticConstTopLevelVariableReference(
                        swidStaticConstTopLevelVariableReference: val,
                      ),
                      fromSwidBooleanLiteral: (val) =>
                          SwidStaticConst.fromSwidBooleanLiteral(
                        swidBooleanLiteral: val,
                      ),
                      fromSwidStringLiteral: (val) =>
                          SwidStaticConst.fromSwidStringLiteral(
                        swidStringLiteral: val,
                      ),
                      fromSwidIntegerLiteral: (val) =>
                          SwidStaticConst.fromSwidIntegerLiteral(
                        swidIntegerLiteral: val,
                      ),
                      fromDoubleLiteral: (val) =>
                          SwidStaticConst.fromDoubleLiteral(
                        swidDoubleLiteral: val,
                      ),
                      fromSwidStaticConstFunctionInvocation: (val) =>
                          SwidStaticConst.fromSwidStaticConstFunctionInvocation(
                        staticConstFunctionInvocation: val,
                      ),
                      fromSwidStaticConstFieldReference: (val) =>
                          SwidStaticConst.fromSwidStaticConstFieldReference(
                        swidStaticConstFieldReference: val,
                      ),
                      fromSwidStaticConstPrefixedExpression: (val) =>
                          SwidStaticConst.fromSwidStaticConstPrefixedExpression(
                        swidStaticConstPrefixedExpression: val,
                      ),
                      fromSwidStaticConstBinaryExpression: (val) =>
                          SwidStaticConst.fromSwidStaticConstBinaryExpression(
                        swidStaticConstBinaryExpression: val,
                      ),
                      fromSwidStaticConstPrefixedIdentifier: (val) =>
                          SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                        staticConstPrefixedIdentifier: val,
                      ),
                      fromSwidStaticConstIdentifier: (val) =>
                          SwidStaticConst.fromSwidStaticConstIdentifier(
                        staticConstIdentifier: val,
                      ),
                      fromSwidStaticConstListLiteral: (val) =>
                          SwidStaticConst.fromSwidStaticConstListLiteral(
                        staticConstListLiteral: val.clone(
                          staticType: pipeline.reduceFromTerm(
                            MarkClassReferences(
                              swidType: val.staticType,
                            ),
                          ),
                        ),
                      ),
                      fromSwidStaticConstMapLiteralEntry: (val) =>
                          SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
                        swidStaticConstMapLiteralEntry: val,
                      ),
                      fromSwidStaticConstMapLiteral: (val) =>
                          SwidStaticConst.fromSwidStaticConstMapLiteral(
                        swidStaticConstMapLiteral: val.clone(
                          staticType: pipeline.reduceFromTerm(
                            MarkClassReferences(
                              swidType: val.staticType,
                            ),
                          ),
                        ),
                      ),
                      fromSwidStaticConstPropertyAccess: (val) =>
                          SwidStaticConst.fromSwidStaticConstPropertyAccess(
                        swidStaticConstPropertyAccess: val,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
