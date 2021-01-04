import 'package:code_builder/code_builder.dart'
    show DartEmitter, Expression, refer, Method, Parameter, Block, Code;

import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/codeKind.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartBoxList {
  final SwidInterface type;
  final String referenceName;
  final CodeKind codeKind;

  DartBoxList({
    @required this.type,
    @required this.referenceName,
    this.codeKind = CodeKind.statement,
  });

  String _boxList() =>
      ((Expression expression) => codeKind == CodeKind.statement
          ? expression.statement
          : codeKind == CodeKind.expression
              ? expression.expression
              : null)(refer(referenceName)
          .property("map")
          .call([
            Method((m) => m
              ..requiredParameters.addAll([
                Parameter((p) => p..name = "x"),
              ])
              ..lambda = true
              ..body = Block.of([
                Code(
                  narrowSwidInterfaceByReferenceDeclaration(
                    swidInterface: type.typeArguments.first.when(
                      fromSwidInterface: (val) => val,
                      fromSwidClass: (_) => null,
                      fromSwidDefaultFormalParameter: (_) => null,
                      fromSwidFunctionType: (_) => null,
                    ),
                    onPrimitive: (_) => null,
                    onClass: (val) => DartBoxObjectReference(
                      type: val,
                      boxLists: true,
                      objectReference: refer("x"),
                      codeKind: CodeKind.expression,
                    ).toDartSource(),
                    onEnum: (val) => DartBoxEnumReference(
                            type:
                                SwidType.fromSwidInterface(swidInterface: val),
                            codeKind: CodeKind.expression,
                            referenceName:
                                refer("x").accept(DartEmitter()).toString())
                        .toDartSource(),
                    onVoid: (_) => null,
                    onTypeParameter: (_) => null,
                    onDynamic: (_) => null,
                  ),
                )
              ])).closure.expression
          ], {})
          .property("toList")
          .call([])).accept(DartEmitter()).toString();

  String toDartSource() => narrowSwidInterfaceByReferenceDeclaration(
        swidInterface: type.typeArguments.first.when(
          fromSwidInterface: (val) => val,
          fromSwidClass: (_) => null,
          fromSwidDefaultFormalParameter: (_) => null,
          fromSwidFunctionType: (_) => null,
        ),
        onPrimitive: (_) => referenceName,
        onClass: (_) => _boxList(),
        onEnum: (_) => _boxList(),
        onVoid: (_) => referenceName,
        onDynamic: (_) => referenceName,
        onTypeParameter: (_) => referenceName,
      );
}
