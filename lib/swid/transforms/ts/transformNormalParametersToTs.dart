import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformNormalParametersToTs({
  @required List<SwidStaticConst> swidLiterals,
  @required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    swidLiterals
        ?.map((x) => transformLiteralToTs(
              swidLiteral: x,
              scopeResolver: scopeResolver,
            ))
        ?.join(", ") ??
    "";
