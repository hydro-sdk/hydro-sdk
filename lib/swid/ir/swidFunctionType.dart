import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidFunctionType.freezed.dart';
part 'swidFunctionType.g.dart';

@freezed
class SwidFunctionType
    with
        _$SwidFunctionType,
        SwidTypeMixin<SwidFunctionType>,
        HashKeyMixin<SwidFunctionType>,
        HashComparableMixin<SwidFunctionType>
    implements
        ICopyable<SwidFunctionType,
            $SwidFunctionTypeCopyWith<SwidFunctionType>>,
        IJsonTransformable {
  SwidFunctionType._();

  factory SwidFunctionType({
    required final String name,
    required final SwidNullabilitySuffix nullabilitySuffix,
    required final String originalPackagePath,
    required final Map<String, SwidType> namedParameterTypes,
    required final Map<String, SwidDefaultFormalParameter> namedDefaults,
    required final List<String> normalParameterNames,
    required final List<SwidType> normalParameterTypes,
    required final List<String> optionalParameterNames,
    required final List<SwidType> optionalParameterTypes,
    required final SwidType returnType,
    required final bool isFactory,
    required final List<SwidTypeFormal> typeFormals,
    required final SwidDeclarationModifiers declarationModifiers,
    final SwidType? element,
  }) = _$Data;

  factory SwidFunctionType.fromJson(Map<String, dynamic> json) =>
      _$SwidFunctionTypeFromJson(json);

  @override
  SwidFunctionType fromJson(Map<String, dynamic> json) =>
      SwidFunctionType.fromJson(json);

  factory SwidFunctionType.MakeReceiverVoid({
    required final SwidFunctionType swidFunctionType,
  }) =>
      SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        normalParameterNames: [
          "this",
          ...swidFunctionType.normalParameterNames
        ],
        normalParameterTypes: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              typeArguments: [],
              name: "void",
              referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          ...swidFunctionType.normalParameterTypes
        ],
      );

  factory SwidFunctionType.InsertLeadingPositionalParameter({
    required final SwidFunctionType swidFunctionType,
    required final String typeName,
    required final SwidType swidType,
  }) =>
      SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        normalParameterNames: [
          typeName,
          ...swidFunctionType.normalParameterNames
        ],
        normalParameterTypes: [
          swidType,
          ...swidFunctionType.normalParameterTypes
        ],
      );

  factory SwidFunctionType.clone({
    required final SwidFunctionType swidFunctionType,
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final Map<String, SwidType>? namedParameterTypes,
    final Map<String, SwidDefaultFormalParameter>? namedDefaults,
    final List<String>? normalParameterNames,
    final List<SwidType>? normalParameterTypes,
    final List<String>? optionalParameterNames,
    final List<SwidType>? optionalParameterTypes,
    final SwidType? returnType,
    final bool? isFactory,
    final List<SwidTypeFormal>? typeFormals,
    final SwidDeclarationModifiers? declarationModifiers,
    final SwidType? element,
  }) =>
      SwidFunctionType(
        name: name ?? swidFunctionType.name,
        nullabilitySuffix:
            nullabilitySuffix ?? swidFunctionType.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidFunctionType.originalPackagePath,
        declarationModifiers:
            declarationModifiers ?? swidFunctionType.declarationModifiers,
        namedParameterTypes:
            namedParameterTypes ?? swidFunctionType.namedParameterTypes,
        namedDefaults: namedDefaults ?? swidFunctionType.namedDefaults,
        normalParameterNames:
            normalParameterNames ?? swidFunctionType.normalParameterNames,
        normalParameterTypes:
            normalParameterTypes ?? swidFunctionType.normalParameterTypes,
        optionalParameterNames:
            optionalParameterNames ?? swidFunctionType.optionalParameterNames,
        optionalParameterTypes:
            optionalParameterTypes ?? swidFunctionType.optionalParameterTypes,
        returnType: returnType ?? swidFunctionType.returnType,
        isFactory: isFactory ?? swidFunctionType.isFactory,
        typeFormals: typeFormals ?? swidFunctionType.typeFormals,
        element: element ?? swidFunctionType.element,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* name.hashableParts;
    yield [
      nullabilitySuffix.index,
    ];
    yield* originalPackagePath.hashableParts;
    yield* namedParameterTypes.hashableParts;
    yield* namedDefaults.hashableParts;
    yield* normalParameterNames.hashableParts;
    yield* normalParameterTypes.hashableParts;
    yield* optionalParameterNames.hashableParts;
    yield* optionalParameterTypes.hashableParts;
    yield* returnType.hashKey.hashableParts;
    yield [
      ...isFactory.hashableParts,
    ];
    yield* typeFormals.hashableParts;
    yield* declarationModifiers.hashKey.hashableParts;
    yield* element?.hashKey.hashableParts ?? [];
  })();

  Map<String, SwidDefaultFormalParameter> get namedDefaultParameters =>
      Map.fromEntries(
        ([
          ...namedDefaults.entries
              .where((x) =>
                  namedParameterTypes.entries
                      .firstWhereOrNull((k) => k.key == x.key) !=
                  null)
              .toList(),
        ]),
      );

  Map<String, SwidDefaultFormalParameter> get positionalDefaultParameters =>
      Map.fromEntries(
        ([
          ...namedDefaults.entries
              .where((x) =>
                  optionalParameterNames.firstWhereOrNull((k) => k == x.key) !=
                  null)
              .toList(),
        ]),
      );

  @override
  SwidFunctionType clone({
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final Map<String, SwidType>? namedParameterTypes,
    final Map<String, SwidDefaultFormalParameter>? namedDefaults,
    final List<String>? normalParameterNames,
    final List<SwidType>? normalParameterTypes,
    final List<String>? optionalParameterNames,
    final List<SwidType>? optionalParameterTypes,
    final SwidType? returnType,
    final bool? isFactory,
    final List<SwidTypeFormal>? typeFormals,
    final SwidDeclarationModifiers? declarationModifiers,
    final SwidType? element,
  }) =>
      SwidFunctionType.clone(
        swidFunctionType: this,
        name: name,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        namedParameterTypes: namedParameterTypes,
        namedDefaults: namedDefaults,
        normalParameterNames: normalParameterNames,
        normalParameterTypes: normalParameterTypes,
        optionalParameterNames: optionalParameterNames,
        optionalParameterTypes: optionalParameterTypes,
        returnType: returnType,
        isFactory: isFactory,
        typeFormals: typeFormals,
        declarationModifiers: declarationModifiers,
        element: element,
      );

  String get displayName => [
        returnType.displayName,
        " ",
        "Function",
        ...(typeFormals.isNotEmpty
            ? [
                "<",
                typeFormals
                    .map(
                      (x) => x.value.displayName,
                    )
                    .toList()
                    .join(","),
                ">"
              ]
            : []),
        "(",
        normalParameterTypes
            .mapIndexed(
              (i, x) => [
                x.displayName,
                (normalParameterNames.length > i
                    ? normalParameterNames.elementAt(i)
                    : ""),
              ].join(" "),
            )
            .join(", "),
        (optionalParameterTypes.isNotEmpty ? "," : ""),
        (optionalParameterTypes.isNotEmpty ? "[" : ""),
        optionalParameterTypes
            .mapIndexed(
              (i, x) => [
                x.displayName,
                (optionalParameterNames.length > i
                    ? optionalParameterNames.elementAt(i)
                    : "")
              ].join(" "),
            )
            .join(", "),
        (optionalParameterTypes.isNotEmpty ? "]" : ""),
        (namedParameterTypes.isNotEmpty ? "," : ""),
        (namedParameterTypes.isNotEmpty ? "{" : ""),
        namedParameterTypes.entries
            .map(
              (x) => [
                (x.value.nullabilitySuffix == SwidNullabilitySuffix.question
                    ? "required"
                    : ""),
                x.value.displayName,
                x.key,
              ],
            )
            .join(", "),
        (namedParameterTypes.isNotEmpty ? "}" : ""),
        ")",
      ].join("");
}
