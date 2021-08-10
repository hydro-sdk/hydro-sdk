import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/collectAllStaticConstReferences.dart';

List<SwidInterface> collectAllReferences({
  required final SwidType swidType,
}) =>
    ([
      ...(swidType.isAnalysisIgnored(
        analisysName: "referenceCollection",
      )
          ? swidType.when<List<SwidInterface>>(
              fromSwidInterface: (val) => [
                    val,
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.typeArguments
                        .map((x) => collectAllReferences(
                              swidType: x,
                            ))
                        .toList())
                  ]..removeWhere((x) => x == dartUnknownInterface),
              fromSwidClass: (val) => ([
                    ...(val.constructorType != null
                        ? collectAllReferences(
                            swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: val.constructorType!,
                          ))
                        : <SwidInterface>[]),
                    ...(val.extendedClass != null
                        ? [
                            SwidInterface.fromSwidClass(
                                swidClass: val.extendedClass!),
                          ]
                        : <SwidInterface>[]),
                    ...val.implementedClasses
                        .map((x) => SwidInterface.fromSwidClass(
                              swidClass: x,
                            ))
                        .toList(),
                    ...val.mixedInClasses
                        .map((x) => SwidInterface.fromSwidClass(
                              swidClass: x,
                            ))
                        .toList(),
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.factoryConstructors
                        .map((x) => collectAllReferences(
                                swidType: SwidType.fromSwidFunctionType(
                              swidFunctionType: x,
                            )))
                        .toList()),
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.staticMethods
                        .map((x) => collectAllReferences(
                                swidType: SwidType.fromSwidFunctionType(
                              swidFunctionType: x,
                            )))
                        .toList()),
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.methods
                        .map((x) => collectAllReferences(
                                swidType: SwidType.fromSwidFunctionType(
                              swidFunctionType: x,
                            )))
                        .toList()),
                    ...((List<List<SwidInterface>> elements) =>
                            elements.isNotEmpty
                                ? elements.reduce((value, element) => [
                                      ...value,
                                      ...element,
                                    ])
                                : <SwidInterface>[])(
                        val.instanceFieldDeclarations.entries
                            .map((x) => collectAllReferences(
                                  swidType: x.value,
                                ))
                            .toList()),
                  ])
                    ..removeWhere((x) => x == dartUnknownInterface),
              fromSwidDefaultFormalParameter: (val) =>
                  collectReferencesFromStaticConst(
                    swidStaticConst: val.value,
                  )..removeWhere((x) => x == dartUnknownInterface),
              fromSwidFunctionType: (val) => ([
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.namedParameterTypes.entries
                        .map((x) => collectAllReferences(
                              swidType: x.value,
                            ))
                        .toList()),
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.normalParameterTypes
                        .map((x) => collectAllReferences(
                              swidType: x,
                            ))
                        .toList()),
                    ...((List<List<SwidInterface>> elements) =>
                        elements.isNotEmpty
                            ? elements.reduce((value, element) => [
                                  ...value,
                                  ...element,
                                ])
                            : <SwidInterface>[])(val.optionalParameterTypes
                        .map((x) => collectAllReferences(
                              swidType: x,
                            ))
                        .toList()),
                    ...collectAllReferences(swidType: val.returnType),
                  ])
                    ..removeWhere((x) => x == dartUnknownInterface))
          : [])
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
