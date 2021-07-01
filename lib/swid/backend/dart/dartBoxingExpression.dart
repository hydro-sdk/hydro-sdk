import 'package:code_builder/code_builder.dart' show DartEmitter, Expression;

import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';

class DartBoxingExpression {
  final SwidType swidType;
  final Expression expression;
  final Expression? tableExpression;

  const DartBoxingExpression({
    required this.swidType,
    required this.expression,
    this.tableExpression,
  });

  String toDartSource() => swidType.when(
        fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
          swidInterface: val,
          onPrimitive: (_) => expression
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
          onDynamic: (_) => expression
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
          onClass: (val) => DartBoxObjectReference(
            type: val,
            objectReference: expression,
            boxLists: true,
            codeKind: CodeKind.expression,
            tableExpression: tableExpression,
          ).toDartSource(),
          onEnum: (val) => DartBoxEnumReference(
                  type: SwidType.fromSwidInterface(swidInterface: val),
                  codeKind: CodeKind.expression,
                  referenceName: expression
                      .accept(DartEmitter(
                        useNullSafetySyntax: true,
                      ))
                      .toString())
              .toDartSource(),
          onVoid: (_) => expression
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
          onTypeParameter: (_) => expression
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
          onUnknown: (_) => expression
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString(),
        ),
        fromSwidClass: (_) => "",
        fromSwidDefaultFormalParameter: (_) => "",
        fromSwidFunctionType: (_) => expression
            .accept(DartEmitter(
              useNullSafetySyntax: true,
            ))
            .toString(),
      );
}
