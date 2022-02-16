import 'package:dartlin/control_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/dartImportPrefix.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferencesInInterface.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/backend/dart/util/constants.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isList.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Reference, Expression, CodeExpression, Code;

part 'dartBoxObjectReference.freezed.dart';

@freezed
class DartBoxObjectReference
    with
        _$DartBoxObjectReference,
        HashKeyMixin<DartBoxObjectReference>,
        HashComparableMixin<DartBoxObjectReference>,
        UnhashableMixin<DartBoxObjectReference>,
        SwarsTransformMixin<DartBoxObjectReference,
            $DartBoxObjectReferenceCopyWith<DartBoxObjectReference>, String>,
        SwarsEphemeralTermMixin<DartBoxObjectReference,
            $DartBoxObjectReferenceCopyWith<DartBoxObjectReference>, String>,
        SwarsNonUniqueTermMixin<DartBoxObjectReference,
            $DartBoxObjectReferenceCopyWith<DartBoxObjectReference>, String>,
        SwarsTermStringResultMixin {
  DartBoxObjectReference._();

  factory DartBoxObjectReference({
    required final SwidInterface type,
    required final Expression objectReference,
    required final bool boxLists,
    required final bool preserveListTypes,
    @Default(CodeKind.statement) final CodeKind codeKind,
    required final Expression? tableExpression,
  }) = _$DartBoxObjectReferenceCtor;

  static _defaultTableExpression({
    required final ISwarsPipeline pipeline,
  }) =>
      refer(
        [
          pipeline.reduceFromTerm(
            DartImportPrefix(
              swidType: SwidType.fromSwidInterface(
                swidInterface: hydroTable,
              ),
            ),
          ),
          hydroTable.name,
        ].join("."),
      ).call([]);

  @override
  DartBoxObjectReference clone({
    final SwidInterface? type,
    final Expression? objectReference,
    final bool? preserveListTypes,
    final bool? boxLists,
    final CodeKind? codeKind,
    final Expression? tableExpression,
  }) =>
      DartBoxObjectReference(
        type: type ?? this.type.clone(),
        objectReference: objectReference ?? this.objectReference,
        preserveListTypes: preserveListTypes ?? this.preserveListTypes,
        boxLists: boxLists ?? this.boxLists,
        tableExpression: tableExpression ?? this.tableExpression,
      );

  Expression _boxObject({
    required final ISwarsPipeline pipeline,
  }) =>
      refer(
        [
          pipeline.reduceFromTerm(
            DartImportPrefix(
              swidType: SwidType.fromSwidInterface(
                swidInterface: maybeBoxObject,
              ),
            ),
          ),
          maybeBoxObject.name,
        ].join("."),
      ).call(
        [],
        {
          "object": boxLists &&
                  isList(
                    swidType: SwidType.fromSwidInterface(
                      swidInterface: type,
                    ),
                  ) &&
                  !isPrimitiveMap(
                    swidType: type.typeArguments.first.type,
                  )
              ? CodeExpression(
                  Code(
                    pipeline.reduceFromTerm(
                      DartBoxList(
                        type: type,
                        referenceName: objectReference
                            .accept(
                              DartEmitter(
                                useNullSafetySyntax: true,
                              ),
                            )
                            .toString(),
                        codeKind: CodeKind.expression,
                      ),
                    ),
                  ),
                )
              : objectReference,
          "hydroState": refer("hydroState"),
          "table": tableExpression ??
              _defaultTableExpression(
                pipeline: pipeline,
              ),
        },
        type.name[0] != "_"
            ? [
                isList(
                  swidType: SwidType.fromSwidInterface(
                    swidInterface: type,
                  ),
                )
                    ? !isPrimitive(
                        swidType: type.typeArguments.first.type,
                      )
                        ? preserveListTypes.let(
                            (it) => it == false
                                ? Reference(
                                    [
                                      pipeline.reduceFromTerm(
                                        DartImportPrefix(
                                          swidType: SwidType.fromSwidInterface(
                                            swidInterface: dartList,
                                          ),
                                        ),
                                      ),
                                      ".",
                                      dartList.name,
                                      "<",
                                      pipeline.reduceFromTerm(
                                        DartImportPrefix(
                                          swidType: SwidType.fromSwidInterface(
                                            swidInterface: dartDynamic,
                                          ),
                                        ),
                                      ),
                                      ".",
                                      dartDynamic.name,
                                      ">",
                                    ].join(),
                                  )
                                : Reference(
                                    pipeline
                                        .reduceFromTerm(
                                          ImportPrefixReferencesInInterface(
                                            swidInterface: type,
                                          ),
                                        )
                                        .displayName,
                                  ),
                          )
                        : Reference(
                            pipeline
                                .reduceFromTerm(
                                  ImportPrefixReferencesInInterface(
                                    swidInterface: type,
                                  ),
                                )
                                .displayName,
                          )
                    : Reference(
                        [
                          removeTypeArguments(
                            str: pipeline
                                .reduceFromTerm(
                                  ImportPrefixReferencesInInterface(
                                    swidInterface: type,
                                  ),
                                )
                                .name,
                          ),
                          type.nullabilitySuffix ==
                                  SwidNullabilitySuffix.question
                              ? "?"
                              : "",
                        ].join(),
                      )
              ]
            : [],
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        ((
          Expression? expression,
        ) =>
                codeKind == CodeKind.statement
                    ? expression!.statement
                    : codeKind == CodeKind.expression
                        ? expression!.expression
                        : null)(
          narrowSwidInterfaceByReferenceDeclaration(
            swidInterface: type,
            onPrimitive: (_) => _boxObject(
              pipeline: pipeline,
            ),
            onClass: (_) => _boxObject(
              pipeline: pipeline,
            ),
            onEnum: (_) => _boxObject(
              pipeline: pipeline,
            ),
            onVoid: (_) => objectReference,
            onTypeParameter: (_) => _boxObject(
              pipeline: pipeline,
            ),
            onDynamic: (_) => _boxObject(
              pipeline: pipeline,
            ),
            onUnknown: (_) => objectReference,
          ),
        )!
            .accept(
              DartEmitter(
                useNullSafetySyntax: true,
              ),
            )
            .toString(),
      );
}
