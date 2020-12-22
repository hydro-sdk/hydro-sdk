import 'package:code_builder/code_builder.dart'
    show DartEmitter, refer, Reference, Expression, CodeExpression, Code;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxList.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/isList.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/isPrimitiveMap.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

class DartBoxObjectReference {
  final SwidInterface type;
  final Expression objectReference;
  final bool boxLists;
  final CodeKind codeKind;

  DartBoxObjectReference({
    @required this.type,
    @required this.objectReference,
    @required this.boxLists,
    this.codeKind = CodeKind.statement,
  });

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
        "table": refer("HydroTable").call([]),
      }, [
        isList(swidType: SwidType.fromSwidInterface(swidInterface: type))
            ? Reference("List<dynamic>")
            : Reference(type.name)
      ]);

  String toDartSource() =>
      ((Expression expression) => codeKind == CodeKind.statement
              ? expression.statement
              : codeKind == CodeKind.expression
                  ? expression.expression
                  : null)(_boxObject())
          .accept(DartEmitter())
          .toString();
}
