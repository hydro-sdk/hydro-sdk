import 'package:hydro_sdk/swid/ir/narrowSwidLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformStringLiteralToTs.dart';
import 'package:meta/meta.dart';

String transformNamedParametersToTs({
  @required Map<String, SwidLiteral> namedParameters,
}) =>
    namedParameters != null && namedParameters.keys.isNotEmpty
        ? "{" +
            namedParameters.keys
                .map((x) =>
                    "$x:" +
                    narrowSwidLiteral(
                        swidLiteral: namedParameters[x],
                        onSwidIntegerLiteral: (val) =>
                            transformIntegerLiteralToTs(
                                swidIntegerLiteral: val),
                        onSwidStringLiteral: (val) =>
                            transformStringLiteralToTs(swidStringLiteral: val),
                        onSwidStaticConstFunctionInvocation: null))
                .join(",") +
            "}"
        : "";
