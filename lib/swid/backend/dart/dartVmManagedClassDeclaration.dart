import 'package:code_builder/code_builder.dart'
    show
        Class,
        Constructor,
        DartEmitter,
        Field,
        FieldModifier,
        Parameter,
        TypeReference,
        Block,
        Code;

import 'package:dart_style/dart_style.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceField.dart';
import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isOperator.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/dart/removeNullabilitySuffixFromTypeNames.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorName.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartVmManagedClassDeclaration.freezed.dart';

@freezed
class DartVMManagedClassDeclaration
    with
        _$DartVMManagedClassDeclaration,
        HashKeyMixin<DartVMManagedClassDeclaration>,
        HashComparableMixin<DartVMManagedClassDeclaration>,
        SwarsTransformMixin<
            DartVMManagedClassDeclaration,
            $DartVMManagedClassDeclarationCopyWith<
                DartVMManagedClassDeclaration>,
            String> {
  DartVMManagedClassDeclaration._();

  factory DartVMManagedClassDeclaration({
    required final SwidClass swidClass,
  }) = _$DartVMManagedClassDeclarationCtor;

  @override
  String get cacheGroup => "dartVMManagedClassDeclaration";

  @override
  DartVMManagedClassDeclaration clone({
    final SwidClass? swidClass,
  }) =>
      DartVMManagedClassDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
      );

  @override
  String transform({
    required ISwarsPipeline pipeline,
  }) =>
      DartFormatter().format(
        Class(
          (c) => c
            ..name = "VMManaged${swidClass.name}"
            ..extend = TypeReference(
              (t) => t
                ..symbol = "VMManagedBox"
                ..types.addAll(
                  [
                    TypeReference(
                      (t) => t
                        ..symbol = removeNullabilitySuffixFromTypeNames(
                          swidType: SwidType.fromSwidClass(
                            swidClass: swidClass,
                          ),
                        ).displayName,
                    ),
                  ],
                ),
            )
            ..fields.addAll([
              Field(
                (k) => k
                  ..modifier = FieldModifier.final$
                  ..type = TypeReference((i) => i..symbol = "HydroTable")
                  ..name = "table",
              ),
              Field(
                (k) => k
                  ..modifier = FieldModifier.final$
                  ..type = TypeReference((i) => i..symbol = "HydroState")
                  ..name = "hydroState",
              ),
              Field(
                (k) => k
                  ..modifier = FieldModifier.final$
                  ..type = TypeReference((i) => i..symbol = swidClass.name)
                  ..name = "vmObject",
              ),
            ])
            ..constructors.add(
              Constructor(
                (c) => c
                  ..optionalParameters.addAll(
                    [
                      Parameter((p) => p
                        ..required = true
                        ..toThis = true
                        ..named = true
                        ..name = "table"),
                      Parameter((p) => p
                        ..required = true
                        ..toThis = true
                        ..named = true
                        ..name = "vmObject"),
                      Parameter((p) => p
                        ..required = true
                        ..toThis = true
                        ..named = true
                        ..name = "hydroState"),
                    ],
                  )
                  ..initializers.addAll(
                    [
                      Code("""super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        )""")
                    ],
                  )
                  ..body = Block.of(
                    [
                      ...(swidClass.instanceFieldDeclarations.entries
                          .map(
                            (x) => Code(
                              pipeline.reduceFromTerm(
                                DartBindInstanceField(
                                  tableKey: x.key,
                                  instanceFieldName: "vmObject.${x.key}",
                                  instanceField: x.value,
                                ),
                              ),
                            ),
                          )
                          .toList()),
                      ...(swidClass.methods
                          .where((x) => !x.declarationModifiers.hasProtected)
                          .where(
                            (x) => !isOperator(
                              swidFunctionType: x,
                            ),
                          )
                          .map(
                            (x) => Code(
                              pipeline.reduceFromTerm(
                                DartVMManagedClassMethodInjectionImplementation(
                                  tableKey: transformAccessorName(
                                    swidFunctionType: x,
                                  ).name,
                                  swidFunctionType: SwidFunctionType.clone(
                                    swidFunctionType: x,
                                    name: "vmObject.${x.name}",
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList())
                    ],
                  ),
              ),
            ),
        )
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString(),
      );
}
