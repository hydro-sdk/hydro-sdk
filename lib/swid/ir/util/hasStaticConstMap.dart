import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

bool hasStaticConstMap({
  required final SwidType swidType,
}) =>
    swidType.when(
      fromSwidInterface: (_) => false,
      fromSwidClass: (val) =>
          (val.constructorType?.namedDefaultParameters.entries.any(
                (x) => _hasStaticConstMap(
                  swidStaticConst: x.value.value,
                ),
              ) ??
              false) ||
          (val.factoryConstructors.any(
                (x) => hasStaticConstMap(
                  swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  ),
                ),
              ) ||
              val.staticMethods.any(
                (x) => hasStaticConstMap(
                  swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  ),
                ),
              ) ||
              val.methods.any(
                (x) => hasStaticConstMap(
                  swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  ),
                ),
              ) ||
              val.staticConstFieldDeclarations.any(
                (x) => _hasStaticConstMap(
                  swidStaticConst: x.value,
                ),
              )),
      fromSwidDefaultFormalParameter: (val) => _hasStaticConstMap(
        swidStaticConst: val.value,
      ),
      fromSwidFunctionType: (val) => val.namedDefaults.entries.any(
        (x) => _hasStaticConstMap(
          swidStaticConst: x.value.value,
        ),
      ),
    );
bool _hasStaticConstMap({
  required final SwidStaticConst swidStaticConst,
}) =>
    swidStaticConst.when(
      fromSwidBooleanLiteral: (_) => false,
      fromSwidStringLiteral: (_) => false,
      fromSwidIntegerLiteral: (_) => false,
      fromDoubleLiteral: (_) => false,
      fromSwidStaticConstTopLevelVariableReference: (_) => false,
      fromSwidStaticConstFunctionInvocation: (val) =>
          val.namedParameters.entries.any(
        (x) => _hasStaticConstMap(
          swidStaticConst: x.value,
        ),
      ),
      fromSwidStaticConstFieldReference: (_) => false,
      fromSwidStaticConstPrefixedExpression: (val) => _hasStaticConstMap(
        swidStaticConst: val.expression,
      ),
      fromSwidStaticConstBinaryExpression: (val) =>
          _hasStaticConstMap(
            swidStaticConst: val.leftOperand,
          ) ||
          _hasStaticConstMap(
            swidStaticConst: val.rightOperand,
          ),
      fromSwidStaticConstPrefixedIdentifier: (_) => false,
      fromSwidStaticConstIdentifier: (_) => false,
      fromSwidStaticConstListLiteral: (val) => val.elements.any(
        (x) => _hasStaticConstMap(
          swidStaticConst: x,
        ),
      ),
      fromSwidStaticConstMapLiteralEntry: (_) => false,
      fromSwidStaticConstMapLiteral: (_) => true,
    );
