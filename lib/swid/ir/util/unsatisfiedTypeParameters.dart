import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

enum SwidClassTypeFormalClosureKind {
  kCloseOverTypeFormalsInStaticMembers,
  kNoCloseOverTypeFormalsInStaticMembers,
}

List<SwidTypeFormal> unsatisfiedTypeParameters({
  required final SwidType swidType,
  SwidClassTypeFormalClosureKind classTypeFormalClosureKind =
      SwidClassTypeFormalClosureKind.kNoCloseOverTypeFormalsInStaticMembers,
  List<SwidTypeFormal> ancestorTypeFormals = const [],
}) =>
    ([
      ...swidType.when(
        fromSwidInterface: (val) => ([
          (val.referenceDeclarationKind ==
                      SwidReferenceDeclarationKind.typeParameterType &&
                  !ancestorTypeFormals.any(
                    (x) => x.value.name == val.name,
                  )
              ? SwidTypeFormal(
                  value: SwidTypeFormalValue.fromString(
                    string: val.name,
                  ),
                  swidReferenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                  swidTypeFormalBound: null,
                )
              : dartUnkownTypeFormal),
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : [])(
            val.typeArguments
                .map(
                  (x) => unsatisfiedTypeParameters(
                    swidType: x.type,
                    ancestorTypeFormals: ancestorTypeFormals,
                  ),
                )
                .toList(),
          )
        ]..removeWhere((x) => x == dartUnkownTypeFormal)),
        fromSwidDefaultFormalParameter: (_) => [
          dartUnkownTypeFormal,
        ],
        fromSwidFunctionType: (val) => ([
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes
                      .reduce((value, element) => [...value, ...element])
                  : [])(val.namedParameterTypes.entries
              .map(
                (x) => unsatisfiedTypeParameters(
                  swidType: x.value,
                  ancestorTypeFormals: [
                    ...ancestorTypeFormals,
                    ...val.typeFormals,
                  ],
                ),
              )
              .toList()),
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : [])(val.normalParameterTypes
              .map(
                (x) => unsatisfiedTypeParameters(
                  swidType: x,
                  ancestorTypeFormals: [
                    ...ancestorTypeFormals,
                    ...val.typeFormals,
                  ],
                ),
              )
              .toList()),
          ...unsatisfiedTypeParameters(
            swidType: val.returnType,
            ancestorTypeFormals: [
              ...ancestorTypeFormals,
              ...val.typeFormals,
            ],
          )
        ]..removeWhere((x) => x == dartUnkownTypeFormal)),
        fromSwidClass: (val) => ([
          ...(val.constructorType != null
              ? unsatisfiedTypeParameters(
                  swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: val.constructorType!,
                  ),
                  ancestorTypeFormals: [
                    ...ancestorTypeFormals,
                    ...val.typeFormals,
                  ],
                )
              : []),
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : [])(val.factoryConstructors
              .map((x) => unsatisfiedTypeParameters(
                      swidType: SwidType.fromSwidFunctionType(
                        swidFunctionType: x,
                      ),
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...(classTypeFormalClosureKind ==
                                SwidClassTypeFormalClosureKind
                                    .kCloseOverTypeFormalsInStaticMembers
                            ? val.typeFormals
                            : []),
                      ]))
              .toList()),
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : [])(val.staticMethods
              .map((x) => unsatisfiedTypeParameters(
                      swidType: SwidType.fromSwidFunctionType(
                        swidFunctionType: x,
                      ),
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...(classTypeFormalClosureKind ==
                                SwidClassTypeFormalClosureKind
                                    .kCloseOverTypeFormalsInStaticMembers
                            ? val.typeFormals
                            : []),
                      ]))
              .toList()),
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : [])(val.methods
              .map((x) => unsatisfiedTypeParameters(
                      swidType: SwidType.fromSwidFunctionType(
                        swidFunctionType: x,
                      ),
                      ancestorTypeFormals: [
                        ...ancestorTypeFormals,
                        ...val.typeFormals,
                      ]))
              .toList()),
          ...((List<List<SwidTypeFormal>> unsatisfiedTypes) =>
              unsatisfiedTypes.isNotEmpty
                  ? unsatisfiedTypes.reduce((value, element) => [
                        ...value,
                        ...element,
                      ])
                  : [])(val.instanceFieldDeclarations.entries
              .map(
                (x) => unsatisfiedTypeParameters(
                  swidType: x.value,
                  ancestorTypeFormals: [
                    ...ancestorTypeFormals,
                    ...val.typeFormals,
                  ],
                ),
              )
              .toList()),
        ]..removeWhere((x) => x == dartUnkownTypeFormal)),
      )
    ])
      ..removeWhere((x) => x == dartUnkownTypeFormal);
