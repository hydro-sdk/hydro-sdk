import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartMethodBindingImplementation.dart';
import 'package:hydro_sdk/swid/backend/dart/util/luaDartBinding.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/transforms/transformToPascalCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

import 'package:code_builder/code_builder.dart'
    show refer, literalString, Code, DartEmitter;

part 'dartStaticMethodNamespaceSymbolDeclaration.freezed.dart';

@freezed
class DartStaticMethodNamespaceSymbolDeclaration
    with
        _$DartStaticMethodNamespaceSymbolDeclaration,
        HashKeyMixin<DartStaticMethodNamespaceSymbolDeclaration>,
        HashComparableMixin<DartStaticMethodNamespaceSymbolDeclaration>,
        SwarsTransformMixin<
            DartStaticMethodNamespaceSymbolDeclaration,
            $DartStaticMethodNamespaceSymbolDeclarationCopyWith<
                DartStaticMethodNamespaceSymbolDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  DartStaticMethodNamespaceSymbolDeclaration._();

  factory DartStaticMethodNamespaceSymbolDeclaration({
    required final SwidClass swidClass,
    required final SwidFunctionType swidFunctionType,
  }) = _$DartStaticMethodNamespaceSymbolDeclarationCtor;

  @override
  String get cacheGroup => "dartStaticMethodNamespaceSymbolDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  DartStaticMethodNamespaceSymbolDeclaration clone({
    final SwidClass? swidClass,
    final SwidFunctionType? swidFunctionType,
  }) =>
      DartStaticMethodNamespaceSymbolDeclaration(
        swidClass: swidClass ?? this.swidClass.clone(),
        swidFunctionType: swidFunctionType ?? this.swidFunctionType.clone(),
      );

  Code toCode({
    required final ISwarsPipeline pipeline,
  }) =>
      swidFunctionType.isTransformIgnored(
        transformName: "dartStaticMethodNamespaceSymbolDeclaration",
      )
          ? refer("table")
              .index(
                literalString(
                  transformToCamelCase(str: swidClass.name) +
                      transformToPascalCase(str: swidFunctionType.name),
                ),
              )
              .assign(
                luaDartBinding(
                  code: Code(
                    pipeline.reduceFromTerm(
                      DartMethodBindingImplementation(
                        swidFunctionType: SwidFunctionType.clone(
                          swidFunctionType: swidFunctionType,
                          name: [
                            swidClass.name,
                            swidFunctionType.name,
                          ].join("."),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .statement
          : Code("");

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidFunctionType.declarationModifiers.ignoredTransforms
                    .firstWhereOrNull((x) =>
                        x == "dartStaticMethodNamespaceSymbolDeclaration") ==
                null
            ? toCode(
                pipeline: pipeline,
              )
                .accept(
                  DartEmitter(
                    useNullSafetySyntax: true,
                  ),
                )
                .toString()
            : "",
      );
}
