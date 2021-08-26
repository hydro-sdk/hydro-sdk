import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_builder/code_builder.dart'
    show Code, CodeExpression, DartEmitter, refer, literalString;

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartBindInstanceField.freezed.dart';

@freezed
class DartBindInstanceField
    with
        _$DartBindInstanceField,
        HashKeyMixin<DartBindInstanceField>,
        HashComparableMixin<DartBindInstanceField>,
        SwarsTransformMixin<DartBindInstanceField,
            $DartBindInstanceFieldCopyWith<DartBindInstanceField>, String> {
  DartBindInstanceField._();

  factory DartBindInstanceField({
    required final String instanceFieldName,
    required final String tableKey,
    required final SwidType instanceField,
  }) = _$DartBindInstanceFieldCtor;

  @override
  String get cacheGroup => "dartBindInstanceField";

  @override
  DartBindInstanceField clone({
    final String? instanceFieldName,
    final String? tableKey,
    final SwidType? instanceField,
  }) =>
      DartBindInstanceField(
        instanceFieldName: instanceFieldName ?? this.instanceFieldName,
        tableKey: tableKey ?? this.tableKey,
        instanceField: instanceField ?? this.instanceField,
      );

  @override
  String transform({
    required final ISwarsPipeline pipeline,
  }) =>
      instanceField.when(
        fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
          swidInterface: val,
          onPrimitive: (val) => pipeline.reduceFromTerm(
            DartBindInstanceFieldDirect(
              instanceFieldName: instanceFieldName,
              tableKey: tableKey,
            ),
          ),
          onDynamic: (val) => pipeline.reduceFromTerm(
            DartBindInstanceFieldDirect(
              instanceFieldName: instanceFieldName,
              tableKey: tableKey,
            ),
          ),
          onClass: (val) => refer("table")
              .index(literalString(tableKey))
              .assign(CodeExpression(Code(DartBoxObjectReference(
                      type: val,
                      boxLists: false,
                      objectReference: CodeExpression(Code(instanceFieldName)))
                  .toDartSource())))
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
          onEnum: (val) => refer("table")
              .index(literalString(tableKey))
              .assign(
                CodeExpression(
                  Code(
                    pipeline.reduceFromTerm(
                      DartBoxEnumReference(
                        type: instanceField,
                        referenceName: instanceFieldName,
                      ),
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
          onVoid: (_) => "void",
          onUnknown: (_) => "unknown",
          onTypeParameter: (_) => "",
        ),
        fromSwidClass: (_) => "",
        fromSwidDefaultFormalParameter: (_) => "",
        fromSwidFunctionType: (_) => "",
      );
}
