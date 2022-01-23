import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/transformIllegalParameterNames.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionSelfBindingInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformPackageUri.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassConstructorImplementation.freezed.dart';

@freezed
class TsClassConstructorImplementation
    with
        _$TsClassConstructorImplementation,
        HashKeyMixin<TsClassConstructorImplementation>,
        HashComparableMixin<TsClassConstructorImplementation>,
        SwarsTransformMixin<
            TsClassConstructorImplementation,
            $TsClassConstructorImplementationCopyWith<
                TsClassConstructorImplementation>,
            String>,
        SwarsTermStringResultMixin {
  TsClassConstructorImplementation._();

  factory TsClassConstructorImplementation({
    required final SwidClass swidClass,
  }) = _$TsClassConstructorImplementationCtor;

  @override
  String get cacheGroup => "tsClassConstructorImplementation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassConstructorImplementation clone({
    final SwidClass? swidClass,
  }) =>
      TsClassConstructorImplementation(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidClass.constructorType != null
            ? "public constructor" +
                pipeline.reduceFromTerm(
                  TransformTypeDeclarationToTs(
                    parentClass: swidClass,
                    emitTrailingReturnType: false,
                    emitDefaultFormalsAsOptionalNamed: true,
                    emitTopLevelInitializersForOptionalPositionals: true,
                    swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: swidClass.constructorType!,
                    ),
                  ),
                ) +
                "{\n" +
                pipeline.reduceFromTerm(
                  TsFunctionSelfBindingInvocation(
                    functionReference: [
                      ...transformPackageUri(
                        packageUri: swidClass.originalPackagePath,
                      ).split(path.separator),
                      transformToCamelCase(
                        str: swidClass.name,
                      )
                    ].join("."),
                    swidFunctionType: transformIllegalParameterNames(
                      swidFunctionType: SwidFunctionType.clone(
                        swidFunctionType:
                            SwidFunctionType.InsertLeadingPositionalParameter(
                          swidFunctionType: swidClass.constructorType!,
                          typeName: "this",
                          swidType: SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                              //todo classes should eventually support type arguments
                              //todo should eventually be able to produce an interface from a class
                              typeArguments: [],
                              name: "this",
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind.classElement,
                              nullabilitySuffix: SwidNullabilitySuffix.star,
                              originalPackagePath: "",
                              declarationModifiers:
                                  SwidDeclarationModifiers.empty(),
                            ),
                          ),
                        ),
                        name: swidClass.name,
                      ),
                    ),
                  ),
                ) +
                "}\n"
            : "",
      );
}
