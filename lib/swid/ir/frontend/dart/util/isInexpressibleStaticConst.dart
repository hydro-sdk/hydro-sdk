import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';

bool isInexpressibleStaticConst({@required SwidStaticConst staticConst}) =>
    staticConst.when(
      fromSwidBooleanLiteral: (_) => false,
      fromSwidStringLiteral: (_) => false,
      fromSwidIntegerLiteral: (_) => false,
      fromDoubleLiteral: (_) => false,
      fromSwidStaticConstFunctionInvocation: (val) =>
          val.value[0] != "_" && val.staticType.displayName[0] != "_",
      fromSwidStaticConstFieldReference: (val) => val.name[0] != "_",
      fromSwidStaticConstPrefixedExpression: (val) =>
          isInexpressibleStaticConst(staticConst: val.expression),
      fromSwidStaticConstBinaryExpression: (val) =>
          isInexpressibleStaticConst(staticConst: val.leftOperand) ||
          isInexpressibleStaticConst(staticConst: val.rightOperand),
      fromSwidStaticConstPrefixedIdentifier: (val) =>
          isInexpressibleStaticConst(
              staticConst: SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference:
                      val.staticConstFieldReference)),
    );
