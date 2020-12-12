import 'package:code_builder/code_builder.dart'
    show Code, CodeExpression, DartEmitter, refer, literalString;
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

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
            onClass: (val) => DartBoxObjectReference(
                    type: instanceField,
                    objectReference: CodeExpression(Code(instanceFieldName)))
                .toDartSource(),
            onEnum: (val) => refer("table")
                .index(literalString(tableKey))
                .assign(CodeExpression(Code(DartBoxEnumReference(
                        type: instanceField, referenceName: instanceFieldName)
                    .toDartSource())))
                .accept(DartEmitter())
                .toString(),
          ),
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (_) => "");
}
