import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidFunctionType.freezed.dart';
part 'swidFunctionType.g.dart';

@freezed
class SwidFunctionType
    with _$SwidFunctionType
    implements ISwidType<SwidFunctionType>, ICloneable<SwidFunctionType> {
  const SwidFunctionType._();

  const factory SwidFunctionType({
    required String name,
    required SwidNullabilitySuffix nullabilitySuffix,
    required String originalPackagePath,
    required Map<String, SwidType> namedParameterTypes,
    required Map<String, SwidDefaultFormalParameter> namedDefaults,
    required List<String> normalParameterNames,
    required List<SwidType> normalParameterTypes,
    required List<String> optionalParameterNames,
    required List<SwidType> optionalParameterTypes,
    required SwidType returnType,
    required bool isFactory,
    required List<SwidTypeFormal> typeFormals,
    required SwidDeclarationModifiers declarationModifiers,
  }) = _$Data;

  factory SwidFunctionType.fromJson(Map<String, dynamic> json) =>
      _$SwidFunctionTypeFromJson(json);

  factory SwidFunctionType.MakeReceiverVoid({
    required SwidFunctionType swidFunctionType,
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
    required SwidFunctionType swidFunctionType,
    required String typeName,
    required SwidType swidType,
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
    required SwidFunctionType swidFunctionType,
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    Map<String, SwidType>? namedParameterTypes,
    Map<String, SwidDefaultFormalParameter>? namedDefaults,
    List<String>? normalParameterNames,
    List<SwidType>? normalParameterTypes,
    List<String>? optionalParameterNames,
    List<SwidType>? optionalParameterTypes,
    SwidType? returnType,
    bool? isFactory,
    List<SwidTypeFormal>? typeFormals,
    SwidDeclarationModifiers? declarationModifiers,
  }) =>
      SwidFunctionType(
        name: name ?? swidFunctionType.name,
        nullabilitySuffix:
            nullabilitySuffix ?? swidFunctionType.nullabilitySuffix,
        originalPackagePath: nullabilitySuffix as String? ??
            swidFunctionType.originalPackagePath,
        declarationModifiers: declarationModifiers ??
            SwidDeclarationModifiers.clone(
              declarationModifiers: swidFunctionType.declarationModifiers,
            ),
        namedParameterTypes: namedParameterTypes ??
            Map.from(swidFunctionType.namedParameterTypes),
        namedDefaults:
            namedDefaults ?? Map.from(swidFunctionType.namedDefaults),
        normalParameterNames: normalParameterNames ??
            List.from(swidFunctionType.normalParameterNames),
        normalParameterTypes: normalParameterTypes ??
            List.from(swidFunctionType.normalParameterTypes),
        optionalParameterNames: optionalParameterNames ??
            List.from(swidFunctionType.optionalParameterNames),
        optionalParameterTypes: optionalParameterTypes ??
            List.from(swidFunctionType.optionalParameterTypes),
        returnType:
            returnType ?? cloneSwidType(swidType: swidFunctionType.returnType),
        isFactory: isFactory ?? swidFunctionType.isFactory,
        typeFormals: typeFormals ?? List.from(swidFunctionType.typeFormals),
      );

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
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    Map<String, SwidType>? namedParameterTypes,
    Map<String, SwidDefaultFormalParameter>? namedDefaults,
    List<String>? normalParameterNames,
    List<SwidType>? normalParameterTypes,
    List<String>? optionalParameterNames,
    List<SwidType>? optionalParameterTypes,
    SwidType? returnType,
    bool? isFactory,
    List<SwidTypeFormal>? typeFormals,
    SwidDeclarationModifiers? declarationModifiers,
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
      );
}
