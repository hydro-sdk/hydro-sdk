import 'package:code_builder/code_builder.dart'
    show Code, CodeExpression, DartEmitter, refer, literalString;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartBindInstanceField {
  final String instanceFieldName;
  final String tableKey;
  final SwidType instanceField;

  DartBindInstanceField(
      {@required this.instanceFieldName,
      @required this.tableKey,
      @required this.instanceField});

  String toDartSource() => instanceField.when(
      fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
            swidInterface: val,
            onPrimitive: (val) => DartBindInstanceFieldDirect(
              instanceFieldName: instanceFieldName,
              tableKey: tableKey,
            ).toDartSource(),
            onDynamic: (val) => DartBindInstanceFieldDirect(
              instanceFieldName: instanceFieldName,
              tableKey: tableKey,
            ).toDartSource(),
            onClass: (val) => refer("table")
                .index(literalString(tableKey))
                .assign(CodeExpression(Code(DartBoxObjectReference(
                        type: val,
                        boxLists: false,
                        objectReference:
                            CodeExpression(Code(instanceFieldName)))
                    .toDartSource())))
                .accept(DartEmitter())
                .toString(),
            onEnum: (val) => refer("table")
                .index(literalString(tableKey))
                .assign(CodeExpression(Code(DartBoxEnumReference(
                        type: instanceField, referenceName: instanceFieldName)
                    .toDartSource())))
                .accept(DartEmitter())
                .toString(),
            onVoid: (_) => "void",
            onTypeParameter: (_) => null,
          ),
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (_) => "");
}
