import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

List<SwidInterface> collectReferencesFromStaticConst({
  required SwidStaticConst swidStaticConst,
}) =>
    ([
      ...swidStaticConst.when<List<SwidInterface>>(
        fromSwidBooleanLiteral: (_) => [],
        fromSwidStringLiteral: (_) => [],
        fromSwidIntegerLiteral: (_) => [],
        fromDoubleLiteral: (_) => [],
        fromSwidStaticConstIdentifier: (_) => [],
        fromSwidStaticConstFunctionInvocation: (val) => [
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.normalParameters
              .map((x) => collectReferencesFromStaticConst(
                    swidStaticConst: x,
                  ))
              .toList()),
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.namedParameters.entries
              .map((x) => collectReferencesFromStaticConst(
                    swidStaticConst: x.value,
                  ))
              .toList()),
          ...([
            val.staticType.when(
              fromSwidInterface: (val) => val,
              fromSwidClass: (_) => dartUnknownInterface,
              fromSwidDefaultFormalParameter: (_) => dartUnknownInterface,
              fromSwidFunctionType: (_) => dartUnknownInterface,
            )
          ]..removeWhere((x) => x == dartUnknownInterface))
        ],
        fromSwidStaticConstFieldReference: (_) => [],
        fromSwidStaticConstPrefixedExpression: (val) =>
            collectReferencesFromStaticConst(
          swidStaticConst: val.expression,
        ),
        fromSwidStaticConstBinaryExpression: (val) => [
          ...(collectReferencesFromStaticConst(swidStaticConst: val.leftOperand)
            ..removeWhere((x) => x == dartUnknownInterface)),
          ...(collectReferencesFromStaticConst(
              swidStaticConst: val.rightOperand)
            ..removeWhere((x) => x == dartUnknownInterface)),
        ],
        fromSwidStaticConstPrefixedIdentifier: (val) => [
          val.prefix,
        ],
        fromSwidStaticConstListLiteral: (val) => [
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.elements
              .map((x) => collectReferencesFromStaticConst(
                    swidStaticConst: x,
                  )..removeWhere((x) => x == dartUnknownInterface))
              .toList()),
          SwidInterface(
            name: "List",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          )
        ],
      )
    ]
        .fold<List<SwidInterface>>(
            <SwidInterface>[],
            (prev, element) => <SwidInterface?>[
                      ...prev,
                    ].firstWhere((x) => x?.name == element.name,
                        orElse: () => null) ==
                    null
                ? [
                    ...prev,
                    element,
                  ]
                : prev)
        .toList()
        .cast<SwidInterface>())
      ..removeWhere((x) => x == dartUnknownInterface);

List<SwidInterface> collectAllStaticConstReferences({
  required SwidType swidType,
}) =>
    ([
      ...swidType.when<List<SwidInterface>>(
        fromSwidInterface: (_) => [
          dartUnknownInterface,
        ],
        fromSwidClass: (val) => ([
          ...(val.constructorType != null
              ? collectAllStaticConstReferences(
                  swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: val.constructorType!))
              : <SwidInterface>[]),
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.factoryConstructors
              .map((x) => collectAllStaticConstReferences(
                      swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  )))
              .toList()),
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.staticMethods
              .map((x) => collectAllStaticConstReferences(
                      swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  )))
              .toList()),
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.methods
              .map((x) => collectAllStaticConstReferences(
                      swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  )))
              .toList()),
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
              ? elements.reduce((value, element) => [
                    ...value,
                    ...element,
                  ])
              : <SwidInterface>[])(val.staticConstFieldDeclarations
              .map((x) => collectReferencesFromStaticConst(
                    swidStaticConst: x.value,
                  ))
              .toList()),
        ])
          ..removeWhere(((x) => x == dartUnknownInterface)),
        fromSwidDefaultFormalParameter: (val) => ([
          ...collectReferencesFromStaticConst(
            swidStaticConst: val.value,
          ),
        ]..removeWhere((x) => x == dartUnknownInterface)),
        fromSwidFunctionType: (val) => ([
          ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                  ? elements.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : <SwidInterface>[])(
              val.namedDefaults.entries
                  .map((x) => collectAllStaticConstReferences(
                      swidType: SwidType.fromSwidDefaultFormalParameter(
                          swidDefaultFormalParameter: x.value)))
                  .toList()),
        ]),
      )
    ]
        .fold<List<SwidInterface>>(
            <SwidInterface>[],
            (prev, element) => <SwidInterface?>[
                      ...prev,
                    ].firstWhere((x) => x?.name == element.name,
                        orElse: () => null) ==
                    null
                ? [
                    ...prev,
                    element,
                  ]
                : prev)
        .toList()
        .cast<SwidInterface>())
      ..removeWhere((x) => x == dartUnknownInterface);
