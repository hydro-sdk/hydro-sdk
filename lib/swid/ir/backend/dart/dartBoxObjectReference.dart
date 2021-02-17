import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Reference, Expression, CodeExpression, Code;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isList.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

class DartBoxObjectReference {
  final SwidInterface type;
  final Expression objectReference;
  final bool boxLists;
  final CodeKind codeKind;
  Expression tableExpression;

  DartBoxObjectReference({
    @required this.type,
    @required this.objectReference,
    @required this.boxLists,
    this.codeKind = CodeKind.statement,
    this.tableExpression,
  }) {
    if (tableExpression == null) {
      tableExpression = refer("HydroTable").call([]);
    }
  }

  Expression _boxObject() => refer("maybeBoxObject").call([], {
        "object": boxLists &&
                isList(
                    swidType:
                        SwidType.fromSwidInterface(swidInterface: type)) &&
                !isPrimitiveMap(swidType: type.typeArguments.first)
            ? CodeExpression(Code(DartBoxList(
                type: type,
                referenceName: objectReference.accept(DartEmitter()).toString(),
                codeKind: CodeKind.expression,
              ).toDartSource()))
            : objectReference,
        "hydroState": refer("hydroState"),
        "table": tableExpression,
      }, [
        isList(swidType: SwidType.fromSwidInterface(swidInterface: type))
            ? Reference("List<dynamic>")
            : Reference(removeTypeArguments(str: type.name))
      ]);

  String toDartSource() =>
      ((Expression expression) => codeKind == CodeKind.statement
          ? expression.statement
          : codeKind == CodeKind.expression
              ? expression.expression
              : null)(narrowSwidInterfaceByReferenceDeclaration(
        swidInterface: type,
        onPrimitive: (_) => _boxObject(),
        onClass: (_) => _boxObject(),
        onEnum: (_) => _boxObject(),
        onVoid: (_) => objectReference,
        onTypeParameter: (_) => _boxObject(),
        onDynamic: (_) => _boxObject(),
      )).accept(DartEmitter()).toString();
}
