import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';

List<SwidInterface> collectAllReferences({
  @required SwidType swidType,
}) =>
    ([
      ...swidType.when<List<SwidInterface>>(
          fromSwidInterface: (val) => [
                val,
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(
                    val.typeArguments
                        .map((x) => collectAllReferences(swidType: x))
                        .toList())
              ]..removeWhere((x) => x == null),
          fromSwidClass: (val) => ([
                ...(val.constructorType != null
                    ? collectAllReferences(
                        swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: val.constructorType))
                    : <SwidInterface>[]),
                ...(val.extendedClass != null
                    ? [
                        ...collectAllReferences(
                            swidType: SwidType.fromSwidClass(
                                swidClass: val.extendedClass)),
                        SwidInterface.fromSwidClass(
                            swidClass: val.extendedClass),
                      ]
                    : <SwidInterface>[]),
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? [
                            ...elements.reduce(
                                (value, element) => [...value, ...element]),
                            ...val.implementedClasses
                                .map((x) =>
                                    SwidInterface.fromSwidClass(swidClass: x))
                                .toList(),
                          ]
                        : <SwidInterface>[])(
                    val.implementedClasses
                        .map((x) => collectAllReferences(
                            swidType: SwidType.fromSwidClass(swidClass: x)))
                        .toList()),
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? [
                            ...elements.reduce(
                                (value, element) => [...value, ...element]),
                            ...val.mixedInClasses
                                .map((x) =>
                                    SwidInterface.fromSwidClass(swidClass: x))
                                .toList(),
                          ]
                        : <SwidInterface>[])(
                    val.mixedInClasses
                        .map((x) => collectAllReferences(
                            swidType: SwidType.fromSwidClass(swidClass: x)))
                        .toList()),
                ...((List<List<SwidInterface>> elements) =>
                    elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(val.factoryConstructors
                    .map((x) => collectAllReferences(
                        swidType:
                            SwidType.fromSwidFunctionType(swidFunctionType: x)))
                    .toList()),
                ...((List<List<SwidInterface>> elements) =>
                    elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(val.staticMethods
                    .map((x) => collectAllReferences(
                        swidType:
                            SwidType.fromSwidFunctionType(swidFunctionType: x)))
                    .toList()),
                ...((List<List<SwidInterface>> elements) =>
                    elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(val.methods
                    .map((x) => collectAllReferences(
                        swidType:
                            SwidType.fromSwidFunctionType(swidFunctionType: x)))
                    .toList()),
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(
                    val.instanceFieldDeclarations.entries
                        .map((x) => collectAllReferences(swidType: x.value))
                        .toList()),
              ])
                ..removeWhere((x) => x == null),
          fromSwidDefaultFormalParameter: (_) => null,
          fromSwidFunctionType: (val) => ([
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(
                    val.namedParameterTypes.entries
                        .map((x) => collectAllReferences(swidType: x.value))
                        .toList()),
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(
                    val.normalParameterTypes
                        .map((x) => collectAllReferences(swidType: x))
                        .toList()),
                ...((List<List<SwidInterface>> elements) => elements.isNotEmpty
                        ? elements
                            .reduce((value, element) => [...value, ...element])
                        : <SwidInterface>[])(
                    val.optionalParameterTypes
                        .map((x) => collectAllReferences(swidType: x))
                        .toList()),
                ...collectAllReferences(swidType: val.returnType),
              ])
                ..removeWhere((x) => x == null))
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
