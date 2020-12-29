import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformLiteralToTs.dart';

String transformStaticConstBinaryExpressionToTs(
        {@required
            SwidStaticConstBinaryExpression swidStaticConstBinaryExpression,
        @required
            SwidStaticConstFieldReferenceScopeResolver scopeResolver}) =>
    transformLiteralToTs(
      swidLiteral: swidStaticConstBinaryExpression.leftOperand,
      scopeResolver: scopeResolver,
    ) +
    swidStaticConstBinaryExpression.operator +
    transformLiteralToTs(
      swidLiteral: swidStaticConstBinaryExpression.rightOperand,
      scopeResolver: scopeResolver,
    );
