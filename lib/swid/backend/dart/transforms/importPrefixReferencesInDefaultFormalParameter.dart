import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/backend/dart/transforms/importPrefixReferences.dart';

import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidDefaultFormalParameterMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'importPrefixReferencesInDefaultFormalParameter.freezed.dart';

@freezed
class ImportPrefixReferencesInDefaultFormalParameter
    with
        _$ImportPrefixReferencesInDefaultFormalParameter,
        HashKeyMixin<ImportPrefixReferencesInDefaultFormalParameter>,
        HashComparableMixin<ImportPrefixReferencesInDefaultFormalParameter>,
        SwarsTransformMixin<
            ImportPrefixReferencesInDefaultFormalParameter,
            $ImportPrefixReferencesInDefaultFormalParameterCopyWith<
                ImportPrefixReferencesInDefaultFormalParameter>,
            SwidDefaultFormalParameter>,
        SwarsEphemeralTermMixin,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidDefaultFormalParameterResultMixin {
  ImportPrefixReferencesInDefaultFormalParameter._();

  factory ImportPrefixReferencesInDefaultFormalParameter({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
  }) = _$ImportPrefixReferencesInDefaultFormalParameterCtor;

  @override
  String get cacheGroup => "importPrefixReferencesInDefaultFormalParameter";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidDefaultFormalParameter.hashKey.hashableParts;
  }

  @override
  ImportPrefixReferencesInDefaultFormalParameter clone({
    final SwidDefaultFormalParameter? swidDefaultFormalParameter,
  }) =>
      ImportPrefixReferencesInDefaultFormalParameter(
        swidDefaultFormalParameter:
            swidDefaultFormalParameter ?? this.swidDefaultFormalParameter,
      );

  @override
  ISwarsTermResult<SwidDefaultFormalParameter> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidDefaultFormalParameter.clone(
          staticType: pipeline.reduceFromTerm(
            ImportPrefixReferences(
              swidType: swidDefaultFormalParameter.staticType,
            ),
          ),
          value: swidDefaultFormalParameter.value.when(
            fromSwidBooleanLiteral: (val) =>
                SwidStaticConst.fromSwidBooleanLiteral(
              swidBooleanLiteral: val,
            ),
            fromSwidStringLiteral: (val) =>
                SwidStaticConst.fromSwidStringLiteral(
              swidStringLiteral: val,
            ),
            fromSwidIntegerLiteral: (val) =>
                SwidStaticConst.fromSwidIntegerLiteral(
              swidIntegerLiteral: val,
            ),
            fromDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
              swidDoubleLiteral: val,
            ),
            fromSwidStaticConstFunctionInvocation: (val) =>
                SwidStaticConst.fromSwidStaticConstFunctionInvocation(
              staticConstFunctionInvocation: val,
            ),
            fromSwidStaticConstFieldReference: (val) =>
                SwidStaticConst.fromSwidStaticConstFieldReference(
              swidStaticConstFieldReference: val,
            ),
            fromSwidStaticConstPrefixedExpression: (val) =>
                SwidStaticConst.fromSwidStaticConstPrefixedExpression(
              swidStaticConstPrefixedExpression: val,
            ),
            fromSwidStaticConstBinaryExpression: (val) =>
                SwidStaticConst.fromSwidStaticConstBinaryExpression(
              swidStaticConstBinaryExpression: val,
            ),
            fromSwidStaticConstPrefixedIdentifier: (val) =>
                SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
              staticConstPrefixedIdentifier: val,
            ),
            fromSwidStaticConstIdentifier: (val) =>
                SwidStaticConst.fromSwidStaticConstIdentifier(
              staticConstIdentifier: val,
            ),
            fromSwidStaticConstListLiteral: (val) =>
                SwidStaticConst.fromSwidStaticConstListLiteral(
              staticConstListLiteral: val.clone(
                staticType: pipeline.reduceFromTerm(
                  ImportPrefixReferences(
                    swidType: val.staticType,
                  ),
                ),
              ),
            ),
            fromSwidStaticConstMapLiteralEntry: (val) =>
                SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
              swidStaticConstMapLiteralEntry: val,
            ),
            fromSwidStaticConstMapLiteral: (val) =>
                SwidStaticConst.fromSwidStaticConstMapLiteral(
              swidStaticConstMapLiteral: val,
            ),
            fromSwidStaticConstTopLevelVariableReference: (val) =>
                SwidStaticConst.fromSwidStaticConstTopLevelVariableReference(
              swidStaticConstTopLevelVariableReference: val,
            ),
            fromSwidStaticConstPropertyAccess: (val) =>
                SwidStaticConst.fromSwidStaticConstPropertyAccess(
              swidStaticConstPropertyAccess: val,
            ),
          ),
        ),
      );
}
