import 'package:code_builder/code_builder.dart'
    show
        refer,
        literalString,
        literalList,
        Code,
        CodeExpression,
        Block,
        DartEmitter;

import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxingProcedure.dart';
import 'package:hydro_sdk/swid/backend/dart/dartFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/backend/dart/dartMethodBindingImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

class DartStaticMethodNamespaceSymbolDeclaration {
  final SwidClass swidClass;
  final SwidFunctionType swidFunctionType;

  const DartStaticMethodNamespaceSymbolDeclaration({
    required this.swidClass,
    required this.swidFunctionType,
  });


  Code toCode() => refer("table")
      .index(
        literalString(
          transformToCamelCase(str: swidClass.name) +
              transformToPascalCase(str: swidFunctionType.name),
        ),
      )
      .assign(
        luaDartBinding(
          code: Code(
            DartMethodBindingImplementation(
              swidFunctionType: SwidFunctionType.clone(
                swidFunctionType: swidFunctionType,
                name: [
                  swidClass.name,
                  swidFunctionType.name,
                ].join("."),
              ),
            ).toDartSource(),
          ),
        ),
      )
      .statement;

  String toDartSource() => toCode()
      .accept(DartEmitter(
        useNullSafetySyntax: true,
      ))
      .toString();
}
