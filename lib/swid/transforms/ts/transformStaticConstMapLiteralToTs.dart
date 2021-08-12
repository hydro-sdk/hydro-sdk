import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteral.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStaticConstMapLiteralEntryToTs.dart';

String transformStaticConstMapLiteralToTs({
  required final SwidStaticConstMapLiteral staticConstMapLiteral,
  required final SwidClass? parentClass,
  required final String inexpressibleFunctionInvocationFallback,
  required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    [
      " Map.fromEntries(",
      "<IIterable<IMapEntry",
      "<",
      rewriteClassReferencesToInterfaceReferences(
        swidType: transformPrimitiveNamesToTs(
          swidType: staticConstMapLiteral.staticType,
        ),
      ).maybeWhen(
        fromSwidInterface: (val) =>
            val.typeArguments.map((x) => x.name).join(","),
        orElse: () => "",
      ),
      ">>>",
      "<unknown>",
      "List.fromArray([",
      staticConstMapLiteral.elements
          .map(
            (x) => transformStaticConstMapLiteralEntryToTs(
              staticConstMapLiteralEntry: x,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
              scopeResolver: scopeResolver,
            ),
          )
          .join(", "),
      "]))",
    ].join("");
