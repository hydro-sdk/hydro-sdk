import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformNamedParametersToTs({
  @required Map<String, SwidStaticConst> namedParameters,
  @required SwidStaticConstFieldReferenceScopeResolver scopeResolver,
}) =>
    namedParameters != null && namedParameters.keys.isNotEmpty
        ? "{ " +
            namedParameters.keys
                .map((x) =>
                    "$x: " +
                    transformLiteralToTs(
                        swidLiteral: namedParameters[x],
                        scopeResolver: scopeResolver))
                .join(", ") +
            " }"
        : "";
