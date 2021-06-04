import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

enum SwidClassTypeFormalClosureKind {
  kCloseOverTypeFormalsInStaticMembers,
  kNoCloseOverTypeFormalsInStaticMembers,
}

List<SwidTypeFormal?> unsatisfiedTypeParameters({
  required SwidType swidType,
  SwidClassTypeFormalClosureKind classTypeFormalClosureKind =
      SwidClassTypeFormalClosureKind.kNoCloseOverTypeFormalsInStaticMembers,
  List<SwidTypeFormal?> ancestorTypeFormals = const [],
}) =>
    ([
      ...swidType.when(
        fromSwidInterface: (val) => ([
          (val.referenceDeclarationKind ==
                      SwidReferenceDeclarationKind.typeParameterType &&
                  !ancestorTypeFormals.any((x) => x!.value.name == val.name)
              ? SwidTypeFormal(
                  value: SwidTypeFormalValue.fromString(string: val.name),
                  swidReferenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType)
              : null),
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.typeArguments
              .map((x) => unsatisfiedTypeParameters(
                    swidType: x!,
                    ancestorTypeFormals: ancestorTypeFormals,
                  ))
              .toList()) as Iterable<SwidTypeFormal?>
        ]..removeWhere((x) => x == null)),
        fromSwidDefaultFormalParameter: ((_) => null) as Iterable<SwidTypeFormal?> Function(SwidDefaultFormalParameter),
        fromSwidFunctionType: (val) => ([
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.namedParameterTypes.entries
              .map((x) => unsatisfiedTypeParameters(
                    swidType: x.value!,
                    ancestorTypeFormals: [
                      ...ancestorTypeFormals,
                      ...val.typeFormals,
                    ],
                  ))
              .toList()) as Iterable<SwidTypeFormal?>,
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.normalParameterTypes
              .map((x) => unsatisfiedTypeParameters(
                    swidType: x!,
                    ancestorTypeFormals: [
                      ...ancestorTypeFormals,
                      ...val.typeFormals,
                    ],
                  ))
              .toList()) as Iterable<SwidTypeFormal?>,
          ...unsatisfiedTypeParameters(
            swidType: val.returnType,
            ancestorTypeFormals: [
              ...ancestorTypeFormals,
              ...val.typeFormals,
            ],
          )
        ]..removeWhere((x) => x == null)),
        fromSwidClass: (val) => ([
          ...(val.constructorType != null
              ? unsatisfiedTypeParameters(
                  swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: val.constructorType!),
                  ancestorTypeFormals: [
                      ...ancestorTypeFormals,
                      ...val.typeFormals,
                    ])
              : []),
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.factoryConstructors
              .map((x) => unsatisfiedTypeParameters(
                      swidType:
                          SwidType.fromSwidFunctionType(swidFunctionType: x!),
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...(classTypeFormalClosureKind ==
                                SwidClassTypeFormalClosureKind
                                    .kCloseOverTypeFormalsInStaticMembers
                            ? val.typeFormals
                            : []),
                      ]))
              .toList()) as Iterable<SwidTypeFormal?>,
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.staticMethods
              .map((x) => unsatisfiedTypeParameters(
                      swidType:
                          SwidType.fromSwidFunctionType(swidFunctionType: x!),
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...(classTypeFormalClosureKind ==
                                SwidClassTypeFormalClosureKind
                                    .kCloseOverTypeFormalsInStaticMembers
                            ? val.typeFormals
                            : []),
                      ]))
              .toList()) as Iterable<SwidTypeFormal?>,
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.methods
              .map((x) => unsatisfiedTypeParameters(
                      swidType:
                          SwidType.fromSwidFunctionType(swidFunctionType: x!),
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...val.typeFormals,
                      ]))
              .toList()) as Iterable<SwidTypeFormal?>,
          ...((List<List<SwidTypeFormal?>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.instanceFieldDeclarations.entries
              .map((x) => unsatisfiedTypeParameters(
                      swidType: x.value!,
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...val.typeFormals,
                      ]))
              .toList()) as Iterable<SwidTypeFormal?>,
        ]..removeWhere((x) => x == null)),
      )
    ])
      ..removeWhere((x) => x == null);
