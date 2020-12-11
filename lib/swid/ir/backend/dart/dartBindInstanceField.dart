import 'package:code_builder/code_builder.dart'
    show Code, CodeExpression, DartEmitter, refer, literalString;
import 'package:dart_style/dart_style.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBindInstanceFieldDirect.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/isPrimitive.dart';
import 'package:meta/meta.dart';

class DartBindInstanceField {
  final String instanceFieldName;
  final SwidType instanceField;

  DartBindInstanceField(
      {@required this.instanceFieldName, @required this.instanceField});

  String toDartSource() => instanceField.when(
      fromSwidInterface: (val) => val.referenceDeclarationKind ==
                  SwidReferenceDeclarationKind.classElement &&
              isPrimitive(swidType: instanceField)
          ? DartBindInstanceFieldDirect(instanceFieldName: instanceFieldName)
              .toDartSource()
          : val.referenceDeclarationKind ==
                      SwidReferenceDeclarationKind.classElement &&
                  !isPrimitive(swidType: instanceField)
              ? DartBoxObjectReference(
                      type: instanceField,
                      objectReference: CodeExpression(Code(instanceFieldName)))
                  .toDartSource()
              : val.referenceDeclarationKind ==
                      SwidReferenceDeclarationKind.enumElement
                  ? DartFormatter().formatStatement(refer("table")
                          .index(literalString(instanceFieldName))
                          .assign(refer(instanceFieldName))
                          .statement
                          .accept(DartEmitter())
                          .toString()) +
                      DartBoxEnumReference(
                              type: instanceField,
                              referenceName: instanceFieldName)
                          .toDartSource()
                  : "",
      fromSwidClass: (_) => "",
      fromSwidDefaultFormalParameter: (_) => "",
      fromSwidFunctionType: (_) => "");
}
