import 'package:code_builder/code_builder.dart'
    show Code, CodeExpression, DartEmitter, refer, literalString;

import 'package:hydro_sdk/swid/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartBindInstanceField {
  final String instanceFieldName;
  final String tableKey;
  final SwidType instanceField;

  const DartBindInstanceField({
    required this.instanceFieldName,
    required this.tableKey,
    required this.instanceField,
  });

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
            onUnknown: (_) => "unknown",
            onTypeParameter: ((_) => null) as String Function(SwidInterface),
          ),
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (_) => "");
}
