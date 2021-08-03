import 'package:collection/collection.dart' show IterableExtension;

import 'package:hydro_sdk/swid/backend/dart/dartMethodBindingImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';

import 'package:code_builder/code_builder.dart'
    show refer, literalString, Code, DartEmitter;

class DartStaticMethodNamespaceSymbolDeclaration {
  final SwidClass swidClass;
  final SwidFunctionType swidFunctionType;

  const DartStaticMethodNamespaceSymbolDeclaration({
    required this.swidClass,
    required this.swidFunctionType,
  });

  Code toCode() => swidFunctionType.isTransformIgnored(
        transformName: "dartStaticMethodNamespaceSymbolDeclaration",
      )
          ? refer("table")
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
              .statement
          : Code("");

  String toDartSource() =>
      swidFunctionType.declarationModifiers.ignoredTransforms.firstWhereOrNull(
                  (x) => x == "dartStaticMethodNamespaceSymbolDeclaration") ==
              null
          ? toCode()
              .accept(DartEmitter(
                useNullSafetySyntax: true,
              ))
              .toString()
          : "";
}
