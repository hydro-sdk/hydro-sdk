import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';

List<SwidInterface> collectReferencesFromStaticConst(
        {@required SwidStaticConst swidStaticConst}) =>
    ([
      ...swidStaticConst.when<List<SwidInterface>>(
        fromSwidBooleanLiteral: (_) => [],
        fromSwidStringLiteral: (_) => [],
        fromSwidIntegerLiteral: (_) => [],
        fromDoubleLiteral: (_) => [],
        fromSwidStaticConstFunctionInvocation: (val) => [
          ...((List<List<SwidInterface>> elements) =>
              elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(val.normalParameters
              .map((x) => collectReferencesFromStaticConst(swidStaticConst: x))
              .toList()),
          ...((List<List<SwidInterface>> elements) =>
              elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(val.namedParameters.entries
              .map((x) =>
                  collectReferencesFromStaticConst(swidStaticConst: x.value))
              .toList()),
        ],
        fromSwidStaticConstFieldReference: (_) => [],
        fromSwidStaticConstPrefixedExpression: (val) =>
            collectReferencesFromStaticConst(swidStaticConst: val.expression),
        fromSwidStaticConstBinaryExpression: (val) => [
          ...(collectReferencesFromStaticConst(swidStaticConst: val.leftOperand)
            ..removeWhere((x) => x == null)),
          ...(collectReferencesFromStaticConst(
              swidStaticConst: val.rightOperand)
            ..removeWhere((x) => x == null)),
        ],
        fromSwidStaticConstPrefixedIdentifier: (val) => [
          val.prefix,
        ],
      )
    ]
        .fold(
            <SwidInterface>[],
            (prev, element) => prev.firstWhere((x) => x.name == element.name,
                        orElse: () => null) ==
                    null
                ? [...prev, element]
                : prev)
        .toList()
        .cast<SwidInterface>())
      ..removeWhere((x) => x == null);

List<SwidInterface> collectAllStaticConstReferences({
  @required SwidType swidType,
}) =>
    ([
      ...swidType.when<List<SwidInterface>>(
        fromSwidInterface: (_) => null,
        fromSwidClass: (val) => ([
          ...(val.constructorType != null
              ? collectAllStaticConstReferences(
                  swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: val.constructorType))
              : <SwidInterface>[]),
          ...((List<List<SwidInterface>> elements) =>
              elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(val.factoryConstructors
              .map((x) => collectAllStaticConstReferences(
                  swidType: SwidType.fromSwidFunctionType(swidFunctionType: x)))
              .toList()),
          ...((List<List<SwidInterface>> elements) =>
              elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(val.staticMethods
              .map((x) => collectAllStaticConstReferences(
                  swidType: SwidType.fromSwidFunctionType(swidFunctionType: x)))
              .toList()),
          ...((List<List<SwidInterface>> elements) =>
              elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(val.methods
              .map((x) => collectAllStaticConstReferences(
                  swidType: SwidType.fromSwidFunctionType(swidFunctionType: x)))
              .toList()),
          ...((List<List<SwidInterface>> elements) =>
              elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(val.staticConstFieldDeclarations
              .map((x) =>
                  collectReferencesFromStaticConst(swidStaticConst: x.value))
              .toList()),
        ])
          ..removeWhere((x) => x == null),
        fromSwidDefaultFormalParameter: (val) => ([
          val.value.when(
            fromSwidInterface: (val) => val,
            fromSwidClass: (_) => null,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          )
        ]..removeWhere((x) => x == null)),
        fromSwidFunctionType: (val) => ([
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [...value, ...element])
                  : <SwidInterface>[])(
              val.namedDefaults.entries
                  .map((x) => collectAllStaticConstReferences(
                      swidType: SwidType.fromSwidDefaultFormalParameter(
                          swidDefaultFormalParameter: x.value)))
                  .toList()),
        ]),
      )
    ]
        .fold(
            <SwidInterface>[],
            (prev, element) => prev.firstWhere((x) => x.name == element.name,
                        orElse: () => null) ==
                    null
                ? [...prev, element]
                : prev)
        .toList()
        .cast<SwidInterface>())
      ..removeWhere((x) => x == null);
