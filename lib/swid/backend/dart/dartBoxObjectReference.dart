import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Reference, Expression, CodeExpression, Code;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/isList.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitive.dart';
import 'package:hydro_sdk/swid/ir/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'dartBoxObjectReference.freezed.dart';

@freezed
class DartBoxObjectReference
    with
        _$DartBoxObjectReference,
        HashKeyMixin<DartBoxObjectReference>,
        HashComparableMixin<DartBoxObjectReference>,
        UnhashableMixin<DartBoxObjectReference>,
        SwarsNonUniqueTermMixin<DartBoxObjectReference,
            $DartBoxObjectReferenceCopyWith<DartBoxObjectReference>, String>,
        SwarsTransformMixin<DartBoxObjectReference,
            $DartBoxObjectReferenceCopyWith<DartBoxObjectReference>, String>,
        SwarsTermStringResultMixin {
  DartBoxObjectReference._();

  factory DartBoxObjectReference({
    required final SwidInterface type,
    required final Expression objectReference,
    required final bool boxLists,
    @Default(CodeKind.statement) final CodeKind codeKind,
    required final Expression? tableExpression,
  }) = _$DartBoxObjectReferenceCtor;

  static _defaultTableExpression() => refer("HydroTable").call([]);

  @override
  DartBoxObjectReference clone({
    final SwidInterface? type,
    final Expression? objectReference,
    final bool? boxLists,
    final CodeKind? codeKind,
    final Expression? tableExpression,
  }) =>
      DartBoxObjectReference(
        type: type ?? this.type.clone(),
        objectReference: objectReference ?? this.objectReference,
        boxLists: boxLists ?? this.boxLists,
        tableExpression: tableExpression ?? this.tableExpression,
      );

  Expression _boxObject({
    required final ISwarsPipeline pipeline,
  }) =>
      refer("maybeBoxObject").call(
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
          "table": tableExpression ?? _defaultTableExpression(),
        },
        type.name[0] != "_"
            ? [
                isList(
                        swidType:
                            SwidType.fromSwidInterface(swidInterface: type))
                    ? !isPrimitive(swidType: type.typeArguments.first.type)
                        ? Reference("List<dynamic>")
                        : Reference(type.displayName)
                    : Reference(
                        [
                          removeTypeArguments(str: type.name),
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
      SwarsTermResult.fromString(
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
