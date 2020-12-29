import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstPrefixedExpressionToTs(
        {@required
            SwidStaticConstPrefixedExpression swidStaticConstPrefixedExpression,
        @required
            SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
    swidStaticConstPrefixedExpression.prefix +
    transformLiteralToTs(
      swidLiteral: swidStaticConstPrefixedExpression.expression,
      scopeResolver: scopeResolver,
    );
