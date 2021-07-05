import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstListLiteralToTs({
  required SwidStaticConstListLiteral staticConstListLiteral,
  required SwidClass? parentClass,
  required String inexpressibleFunctionInvocationFallback,
  required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    [
      "[",
      ...staticConstListLiteral.elements
          .map((x) => [
                transformLiteralToTs(
                  swidLiteral: x,
                  parentClass: parentClass,
                  inexpressibleFunctionInvocationFallback:
                      inexpressibleFunctionInvocationFallback,
                  scopeResolver: scopeResolver,
                ),
                ",",
              ].join(""))
          .toList(),
      "]"
    ].join("");
