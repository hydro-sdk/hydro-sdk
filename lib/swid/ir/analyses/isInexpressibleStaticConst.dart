import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermBoolResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'isInexpressibleStaticConst.freezed.dart';

@freezed
class IsInexpressibleStaticConst
    with
        _$IsInexpressibleStaticConst,
        HashKeyMixin<IsInexpressibleStaticConst>,
        HashComparableMixin<IsInexpressibleStaticConst>,
        SwarsAnalysisMixin<
            IsInexpressibleStaticConst,
            $IsInexpressibleStaticConstCopyWith<IsInexpressibleStaticConst>,
            bool>,
        SwarsTermBoolResultMixin {
  IsInexpressibleStaticConst._();

  factory IsInexpressibleStaticConst({
    required final SwidClass? parentClass,
    required final SwidStaticConst swidStaticConst,
  }) = _$IsInexpressibleStaticConstCtor;

  @override
  String get cacheGroup => "isInexpressibleStaticConst";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parentClass?.hashKey.hashableParts ?? [];
    yield* swidStaticConst.hashKey.hashableParts;
  }

  @override
  IsInexpressibleStaticConst clone({
    final SwidClass? parentClass,
    final SwidStaticConst? swidStaticConst,
  }) =>
      IsInexpressibleStaticConst(
        parentClass: parentClass ?? this.parentClass,
        swidStaticConst: swidStaticConst ?? this.swidStaticConst,
      );

  @override
  ISwarsTermResult<bool> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromBool(
        swidStaticConst.when(
          fromSwidBooleanLiteral: (_) => false,
          fromSwidStringLiteral: (_) => false,
          fromSwidIntegerLiteral: (_) => false,
          fromDoubleLiteral: (_) => false,
          fromSwidStaticConstIdentifier: (_) => false,
          fromSwidStaticConstTopLevelVariableReference: (_) => false,
          fromSwidStaticConstFunctionInvocation: (val) =>
              val.value[0] == "_" ||
              val.staticType.displayName[0] == "_" ||
              !val.value.split(".").every((x) => !(x[0] == "_")) ||
              !val.normalParameters.every(
                (x) => !pipeline.reduceFromTerm(
                  IsInexpressibleStaticConst(
                    parentClass: parentClass,
                    swidStaticConst: x,
                  ),
                ),
              ) ||
              !val.namedParameters.entries.every(
                (x) => !pipeline.reduceFromTerm(
                  IsInexpressibleStaticConst(
                    parentClass: parentClass,
                    swidStaticConst: x.value,
                  ),
                ),
              ),
          fromSwidStaticConstFieldReference: (val) =>
              !(val.name[0] != "_") &&
              (({SwidStaticConstFieldDeclaration? declarationOnParent}) =>
                  declarationOnParent != null
                      ? pipeline.reduceFromTerm(
                          IsInexpressibleStaticConst(
                            parentClass: parentClass,
                            swidStaticConst: declarationOnParent.value,
                          ),
                        )
                      : false)(
                declarationOnParent:
                    parentClass?.staticConstFieldDeclarations.firstWhereOrNull(
                  (x) => x.name == val.name,
                ),
              ),
          fromSwidStaticConstPrefixedExpression: (val) =>
              pipeline.reduceFromTerm(
            IsInexpressibleStaticConst(
              parentClass: parentClass,
              swidStaticConst: val.expression,
            ),
          ),
          fromSwidStaticConstBinaryExpression: (val) =>
              pipeline.reduceFromTerm(
                IsInexpressibleStaticConst(
                  parentClass: parentClass,
                  swidStaticConst: val.leftOperand,
                ),
              ) ||
              pipeline.reduceFromTerm(
                IsInexpressibleStaticConst(
                  parentClass: parentClass,
                  swidStaticConst: val.rightOperand,
                ),
              ),
          fromSwidStaticConstPrefixedIdentifier: (val) =>
              pipeline.reduceFromTerm(
            IsInexpressibleStaticConst(
              parentClass: parentClass,
              swidStaticConst:
                  SwidStaticConst.fromSwidStaticConstFieldReference(
                swidStaticConstFieldReference: val.staticConstFieldReference,
              ),
            ),
          ),
          fromSwidStaticConstListLiteral: (val) => val.elements.any(
            (x) => pipeline.reduceFromTerm(
              IsInexpressibleStaticConst(
                parentClass: parentClass,
                swidStaticConst: x,
              ),
            ),
          ),
          fromSwidStaticConstMapLiteralEntry: (val) =>
              pipeline.reduceFromTerm(
                IsInexpressibleStaticConst(
                  parentClass: parentClass,
                  swidStaticConst: val.key,
                ),
              ) ||
              pipeline.reduceFromTerm(
                IsInexpressibleStaticConst(
                  parentClass: parentClass,
                  swidStaticConst: val.value,
                ),
              ),
          fromSwidStaticConstMapLiteral: (val) => val.elements.any(
            (x) => pipeline.reduceFromTerm(
              IsInexpressibleStaticConst(
                parentClass: parentClass,
                swidStaticConst:
                    SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
                  swidStaticConstMapLiteralEntry: x,
                ),
              ),
            ),
          ),
        ),
      );
}
