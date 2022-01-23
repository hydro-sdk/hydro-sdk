import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermBoolResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'isUnrepresentableStaticConst.freezed.dart';

@freezed
class IsUnrepresentableStaticConst
    with
        _$IsUnrepresentableStaticConst,
        HashKeyMixin<IsUnrepresentableStaticConst>,
        HashComparableMixin<IsUnrepresentableStaticConst>,
        SwarsAnalysisMixin<
            IsUnrepresentableStaticConst,
            $IsUnrepresentableStaticConstCopyWith<IsUnrepresentableStaticConst>,
            bool>,
        SwarsTermBoolResultMixin {
  IsUnrepresentableStaticConst._();

  factory IsUnrepresentableStaticConst({
    required final SwidClass? parentClass,
    required final SwidStaticConst staticConst,
  }) = _$IsUnrepresentableStaticConstCtor;

  @override
  String get cacheGroup => "isUnrepresentableStaticConst";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parentClass?.hashKey.hashableParts ?? [];
    yield* staticConst.hashKey.hashableParts;
  }

  @override
  IsUnrepresentableStaticConst clone({
    final SwidClass? parentClass,
    final SwidStaticConst? staticConst,
  }) =>
      IsUnrepresentableStaticConst(
        parentClass: parentClass ?? this.parentClass,
        staticConst: staticConst ?? this.staticConst,
      );

  @override
  ISwarsTermResult<bool> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromBool(
        staticConst.when(
          fromSwidBooleanLiteral: (_) => false,
          fromSwidStringLiteral: (_) => false,
          fromSwidIntegerLiteral: (_) => false,
          fromDoubleLiteral: (_) => false,
          fromSwidStaticConstFunctionInvocation: (val) =>
              val.staticType.name[0] == "_",
          fromSwidStaticConstFieldReference: (_) => false,
          fromSwidStaticConstTopLevelVariableReference: (val) =>
              val.topLevelReference.name[0] != "_",
          fromSwidStaticConstPrefixedExpression: (val) =>
              pipeline.reduceFromTerm(
            IsUnrepresentableStaticConst(
              parentClass: parentClass,
              staticConst: val.expression,
            ),
          ),
          fromSwidStaticConstBinaryExpression: (val) =>
              pipeline.reduceFromTerm(
                IsUnrepresentableStaticConst(
                  parentClass: parentClass,
                  staticConst: val.leftOperand,
                ),
              ) ||
              pipeline.reduceFromTerm(
                IsUnrepresentableStaticConst(
                  parentClass: parentClass,
                  staticConst: val.rightOperand,
                ),
              ),
          fromSwidStaticConstPrefixedIdentifier: (val) =>
              val.prefix.name[0] == "_" ||
              pipeline.reduceFromTerm(
                IsUnrepresentableStaticConst(
                  parentClass: parentClass,
                  staticConst:
                      SwidStaticConst.fromSwidStaticConstFieldReference(
                    swidStaticConstFieldReference:
                        val.staticConstFieldReference,
                  ),
                ),
              ),
          fromSwidStaticConstIdentifier: (val) =>
              val.enclosingType.name[0] == "_",
          fromSwidStaticConstListLiteral: (val) =>
              val.staticType.displayName[0] == "_" ||
              val.elements.any(
                (x) => pipeline.reduceFromTerm(
                  IsUnrepresentableStaticConst(
                    parentClass: parentClass,
                    staticConst: x,
                  ),
                ),
              ),
          fromSwidStaticConstMapLiteralEntry: (val) =>
              pipeline.reduceFromTerm(
                IsUnrepresentableStaticConst(
                  parentClass: parentClass,
                  staticConst: val.key,
                ),
              ) ||
              pipeline.reduceFromTerm(
                IsUnrepresentableStaticConst(
                  parentClass: parentClass,
                  staticConst: val.value,
                ),
              ),
          fromSwidStaticConstMapLiteral: (val) =>
              val.staticType.displayName[0] == "_" ||
              val.elements.any(
                (x) => pipeline.reduceFromTerm(
                  IsUnrepresentableStaticConst(
                    parentClass: parentClass,
                    staticConst:
                        SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
                      swidStaticConstMapLiteralEntry: x,
                    ),
                  ),
                ),
              ),
        ),
      );
}
