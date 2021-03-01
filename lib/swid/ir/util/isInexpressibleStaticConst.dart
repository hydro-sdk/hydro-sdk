import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

bool isInexpressibleStaticConst(
        {@required SwidClass parentClass,
        @required SwidStaticConst staticConst}) =>
    staticConst.when(
      fromSwidBooleanLiteral: (_) => false,
      fromSwidStringLiteral: (_) => false,
      fromSwidIntegerLiteral: (_) => false,
      fromDoubleLiteral: (_) => false,
      fromSwidStaticConstFunctionInvocation: (val) =>
          val.value[0] == "_" ||
          val.staticType.displayName[0] == "_" ||
          !val.value.split(".").every((x) => !(x[0] == "_")) ||
          !val.normalParameters.every((x) => !isInexpressibleStaticConst(
              parentClass: parentClass, staticConst: x)) ||
          !val.namedParameters.entries.every((x) => !isInexpressibleStaticConst(
              parentClass: parentClass, staticConst: x.value)),
      fromSwidStaticConstFieldReference: (val) =>
          !(val.name[0] != "_") &&
          (({SwidStaticConstFieldDeclaration declarationOnParent}) =>
                  declarationOnParent != null
                      ? isInexpressibleStaticConst(
                          parentClass: parentClass,
                          staticConst: declarationOnParent.value)
                      : false)(
              declarationOnParent: parentClass.staticConstFieldDeclarations
                  .firstWhere((x) => x.name == val.name, orElse: () => null)),
      fromSwidStaticConstPrefixedExpression: (val) =>
          isInexpressibleStaticConst(
              parentClass: parentClass, staticConst: val.expression),
      fromSwidStaticConstBinaryExpression: (val) =>
          isInexpressibleStaticConst(
              parentClass: parentClass, staticConst: val.leftOperand) ||
          isInexpressibleStaticConst(
              parentClass: parentClass, staticConst: val.rightOperand),
      fromSwidStaticConstPrefixedIdentifier: (val) =>
          isInexpressibleStaticConst(
              parentClass: parentClass,
              staticConst: SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference:
                      val.staticConstFieldReference)),
    );
