import 'package:code_builder/code_builder.dart'
    show Code, CodeExpression, DartEmitter, refer, literalString;
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/isPrimitive.dart';
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
      fromSwidInterface: (val) => val.referenceDeclarationKind ==
                  SwidReferenceDeclarationKind.classElement &&
              isPrimitive(swidType: instanceField)
          ? DartBindInstanceFieldDirect(
              instanceFieldName: instanceFieldName,
              tableKey: tableKey,
            ).toDartSource()
          : val.referenceDeclarationKind ==
                      SwidReferenceDeclarationKind.classElement &&
                  !isPrimitive(swidType: instanceField)
              ? DartBoxObjectReference(
                      type: instanceField,
                      objectReference: CodeExpression(Code(instanceFieldName)))
                  .toDartSource()
              : val.referenceDeclarationKind ==
                      SwidReferenceDeclarationKind.enumElement
                  ? refer("table")
                      .index(literalString(tableKey))
                      .assign(CodeExpression(Code(DartBoxEnumReference(
                              type: instanceField,
                              referenceName: instanceFieldName)
                          .toDartSource())))
                      .accept(DartEmitter())
                      .toString()
                  : "",
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (_) => "");
}
