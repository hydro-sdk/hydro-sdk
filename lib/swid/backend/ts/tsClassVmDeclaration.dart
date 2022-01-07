import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/backend/ts/transforms/transformVmDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/tsVmDeclaration.dart';
import 'package:hydro_sdk/swid/backend/util/requiresDartBinding.dart';
import 'package:hydro_sdk/swid/ir/analyses/isInexpressibleStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferencesInFunction.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencestoInterfaceReferencesInClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassVmDeclaration.freezed.dart';

@freezed
class TsClassVmDeclaration
    with
        _$TsClassVmDeclaration,
        HashKeyMixin<TsClassVmDeclaration>,
        HashComparableMixin<TsClassVmDeclaration>,
        SwarsTransformMixin<TsClassVmDeclaration,
            $TsClassVmDeclarationCopyWith<TsClassVmDeclaration>, String>,
        SwarsTermStringResultMixin {
  TsClassVmDeclaration._();

  factory TsClassVmDeclaration({
    required final SwidClass swidClass,
  }) = _$TsClassVmDeclarationCtor;

  @override
  String get cacheGroup => "tsClassVmDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassVmDeclaration clone({
    final SwidClass? swidClass,
  }) =>
      TsClassVmDeclaration(
        swidClass: swidClass ?? this.swidClass,
      );

  TsVmDeclaration _addConstructorBindingDeclarations({
    required final TsVmDeclaration tsVmDeclaration,
  }) =>
      swidClass.constructorType != null &&
              transformPackageUri(packageUri: swidClass.originalPackagePath)
                      .split(path.separator)
                      .last ==
                  tsVmDeclaration.name
          ? TsVmDeclaration.clone(
              tsVmDeclaration: tsVmDeclaration,
              methods: [
                rewriteClassReferencesToInterfaceReferencesInFunction(
                  swidFunctionType: SwidFunctionType.MakeReceiverVoid(
                    swidFunctionType:
                        SwidFunctionType.InsertLeadingPositionalParameter(
                      typeName: transformToCamelCase(str: swidClass.name),
                      swidType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          typeArguments: swidClass.typeFormals
                              .map(
                                (x) => SwidTypeArgumentType(
                                  type: SwidType.fromSwidInterface(
                                    swidInterface: SwidInterface(
                                      declarationModifiers:
                                          SwidDeclarationModifiers.empty(),
                                      name: x.value.name,
                                      nullabilitySuffix:
                                          SwidNullabilitySuffix.none,
                                      originalPackagePath: "",
                                      referenceDeclarationKind:
                                          SwidReferenceDeclarationKind
                                              .typeParameterType,
                                      typeArguments: [],
                                    ),
                                  ),
                                  element: null,
                                ),
                              )
                              .toList(),
                          name: swidClass.name +
                              (swidClass.typeFormals.isNotEmpty
                                  ? "<" +
                                      swidClass.typeFormals
                                          .map((x) => x.value.name)
                                          .toList()
                                          .join(",") +
                                      ">"
                                  : ""),
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          nullabilitySuffix: SwidNullabilitySuffix.star,
                          originalPackagePath: "",
                        ),
                      ),
                      swidFunctionType: SwidFunctionType.clone(
                        swidFunctionType: swidClass.constructorType!,
                        typeFormals: swidClass.typeFormals,
                        name: transformToCamelCase(
                          str: swidClass.name,
                        ),
                      ),
                    ),
                  ),
                ),
                ...tsVmDeclaration.methods,
              ],
            )
          : tsVmDeclaration;
  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        requiresDartBinding(
                  pipeline: pipeline,
                  swidClass: swidClass,
                ) ||
                swidClass.isConstructible()
            ? ((SwidClass swidClass) => pipeline.reduceFromTerm(
                      TransformVmDeclarationToTs(
                        tsVmDeclaration: transformPackageUri(
                          packageUri: swidClass.originalPackagePath,
                        )
                            .split(path.separator)
                            .map(
                              (x) => TsVmDeclaration(
                                name: x,
                                methods: [],
                                children: [],
                              ),
                            )
                            .reduce(
                              (previousValue, element) => TsVmDeclaration.clone(
                                tsVmDeclaration:
                                    _addConstructorBindingDeclarations(
                                  tsVmDeclaration: previousValue,
                                ),
                                children: [
                                  _addConstructorBindingDeclarations(
                                    tsVmDeclaration: TsVmDeclaration.clone(
                                      tsVmDeclaration: element,
                                      methods: [
                                        ...swidClass.factoryConstructors,
                                        ...swidClass.staticMethods.where(
                                          (x) => x.isTransformIgnored(
                                            transformName:
                                                "tsClassVmDeclaration",
                                          ),
                                        ),
                                        ...swidClass
                                            .staticConstFieldDeclarations
                                            .where(
                                              (x) => pipeline.reduceFromTerm(
                                                IsInexpressibleStaticConst(
                                                  swidStaticConst: x.value,
                                                  parentClass: swidClass,
                                                ),
                                              ),
                                            )
                                            .map(
                                              (x) =>
                                                  rewriteClassReferencesToInterfaceReferencesInFunction(
                                                swidFunctionType:
                                                    SwidFunctionType
                                                        .MakeReceiverVoid(
                                                  swidFunctionType:
                                                      SwidFunctionType(
                                                    declarationModifiers:
                                                        SwidDeclarationModifiers
                                                            .empty(),
                                                    name: x.name,
                                                    nullabilitySuffix:
                                                        SwidNullabilitySuffix
                                                            .none,
                                                    originalPackagePath:
                                                        swidClass
                                                            .originalPackagePath,
                                                    namedParameterTypes: {},
                                                    namedDefaults: {},
                                                    normalParameterNames: [],
                                                    normalParameterTypes: [],
                                                    optionalParameterNames: [],
                                                    optionalParameterTypes: [],
                                                    returnType:
                                                        x.value.when<SwidType?>(
                                                      fromSwidStaticConstTopLevelVariableReference:
                                                          (_) => null,
                                                      fromSwidStaticConstMapLiteral:
                                                          (_) => null,
                                                      fromSwidStaticConstMapLiteralEntry:
                                                          (_) => null,
                                                      fromSwidBooleanLiteral:
                                                          (_) => null,
                                                      fromSwidStringLiteral:
                                                          (_) => null,
                                                      fromSwidIntegerLiteral:
                                                          (_) => null,
                                                      fromDoubleLiteral: (_) =>
                                                          null,
                                                      fromSwidStaticConstFunctionInvocation:
                                                          (val) =>
                                                              val.staticType,
                                                      fromSwidStaticConstFieldReference:
                                                          (_) => null,
                                                      fromSwidStaticConstPrefixedExpression:
                                                          (_) => null,
                                                      fromSwidStaticConstBinaryExpression:
                                                          (_) => null,
                                                      fromSwidStaticConstPrefixedIdentifier:
                                                          (_) => null,
                                                      fromSwidStaticConstIdentifier:
                                                          (_) => null,
                                                      fromSwidStaticConstListLiteral:
                                                          (_) => null,
                                                    )!,
                                                    isFactory: false,
                                                    typeFormals: [],
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList()
                                      ]
                                          .map(
                                            (x) => SwidFunctionType.clone(
                                              swidFunctionType: x,
                                              name: transformToCamelCase(
                                                    str: swidClass.name,
                                                  ) +
                                                  transformToPascalCase(
                                                    str: x.name,
                                                  ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ),
                    ))(
                  rewriteClassReferencesToInterfaceReferencesInClass(
                    swidClass: swidClass,
                  ),
                ) +
                ";\n"
            : "",
      );
}
