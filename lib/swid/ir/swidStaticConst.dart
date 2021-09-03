import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteralEntry.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstTopLevelVariableReference.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidStaticConst.freezed.dart';
part 'swidStaticConst.g.dart';

@freezed
class SwidStaticConst
    with
        _$SwidStaticConst,
        HashKeyMixin<SwidStaticConst>,
        HashComparableMixin<SwidStaticConst> {
  SwidStaticConst._();

  factory SwidStaticConst.fromSwidBooleanLiteral({
    required final SwidBooleanLiteral swidBooleanLiteral,
  }) = _$FromSwidBooleanLiteral;

  factory SwidStaticConst.fromSwidStringLiteral({
    required final SwidStringLiteral swidStringLiteral,
  }) = _$FromSwidStringLiteral;

  factory SwidStaticConst.fromSwidIntegerLiteral({
    required final SwidIntegerLiteral swidIntegerLiteral,
  }) = _$FromSwidIntegerLiteral;

  factory SwidStaticConst.fromDoubleLiteral({
    required final SwidDoubleLiteral swidDoubleLiteral,
  }) = _$FromSwidDoubleLiteral;

  factory SwidStaticConst.fromSwidStaticConstFunctionInvocation({
    required final SwidStaticConstFunctionInvocation
        staticConstFunctionInvocation,
  }) = _$FromSwidStaticConstFunctionInvocation;

  factory SwidStaticConst.fromSwidStaticConstFieldReference({
    required final SwidStaticConstFieldReference swidStaticConstFieldReference,
  }) = _$FromSwidStaticConstFieldReference;

  factory SwidStaticConst.fromSwidStaticConstPrefixedExpression({
    required final SwidStaticConstPrefixedExpression
        swidStaticConstPrefixedExpression,
  }) = _$FromSwidStaticConstPrefixedExpression;

  factory SwidStaticConst.fromSwidStaticConstBinaryExpression({
    required final SwidStaticConstBinaryExpression
        swidStaticConstBinaryExpression,
  }) = _$FromSwidStaticConstBinaryExpression;

  factory SwidStaticConst.fromSwidStaticConstPrefixedIdentifier({
    required final SwidStaticConstPrefixedIdentifier
        staticConstPrefixedIdentifier,
  }) = _$FromSwidStaticConstPrefixedIdentifier;

  factory SwidStaticConst.fromSwidStaticConstIdentifier({
    required final SwidStaticConstIdentifier staticConstIdentifier,
  }) = _$FromSwidStaticConstIdentifier;

  factory SwidStaticConst.fromSwidStaticConstListLiteral({
    required final SwidStaticConstListLiteral staticConstListLiteral,
  }) = _$FromSwidStaticConstListLiteral;

  factory SwidStaticConst.fromSwidStaticConstMapLiteralEntry({
    required final SwidStaticConstMapLiteralEntry
        swidStaticConstMapLiteralEntry,
  }) = _$FromSwidStaticConstMapLiteralEntry;

  factory SwidStaticConst.fromSwidStaticConstMapLiteral({
    required final SwidStaticConstMapLiteral swidStaticConstMapLiteral,
  }) = _$FromSwidStaticConstMapLiteral;

  factory SwidStaticConst.fromSwidStaticConstTopLevelVariableReference({
    required final SwidStaticConstTopLevelVariableReference
        swidStaticConstTopLevelVariableReference,
  }) = _$FromSwidStaticConstTopLevelVariableReference;

  factory SwidStaticConst.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFromJson(json);

  factory SwidStaticConst.clone({
    required final SwidStaticConst swidStaticConst,
  }) =>
      swidStaticConst.when(
        fromSwidBooleanLiteral: (val) => SwidStaticConst.fromSwidBooleanLiteral(
          swidBooleanLiteral: val.clone(),
        ),
        fromSwidStringLiteral: (val) => SwidStaticConst.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral.clone(
            swidStringLiteral: val,
          ),
        ),
        fromSwidIntegerLiteral: (val) => SwidStaticConst.fromSwidIntegerLiteral(
          swidIntegerLiteral: SwidIntegerLiteral.clone(
            swidIntegerLiteral: val,
          ),
        ),
        fromDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
          swidDoubleLiteral: SwidDoubleLiteral.clone(
            swidDoubleLiteral: val,
          ),
        ),
        fromSwidStaticConstFunctionInvocation: (val) =>
            SwidStaticConst.fromSwidStaticConstFunctionInvocation(
          staticConstFunctionInvocation:
              SwidStaticConstFunctionInvocation.clone(
            swidStaticConstFunctionInvocation: val,
          ),
        ),
        fromSwidStaticConstFieldReference: (val) =>
            SwidStaticConst.fromSwidStaticConstFieldReference(
          swidStaticConstFieldReference: SwidStaticConstFieldReference.clone(
            swidStaticConstFieldReference: val,
          ),
        ),
        fromSwidStaticConstPrefixedExpression: (val) =>
            SwidStaticConst.fromSwidStaticConstPrefixedExpression(
          swidStaticConstPrefixedExpression:
              SwidStaticConstPrefixedExpression.clone(
            swidStaticConstPrefixedExpression: val,
          ),
        ),
        fromSwidStaticConstBinaryExpression: (val) =>
            SwidStaticConst.fromSwidStaticConstBinaryExpression(
          swidStaticConstBinaryExpression:
              SwidStaticConstBinaryExpression.clone(
            swidStaticConstBinaryExpression: val,
          ),
        ),
        fromSwidStaticConstPrefixedIdentifier: (val) =>
            SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
          staticConstPrefixedIdentifier:
              SwidStaticConstPrefixedIdentifier.clone(
            swidStaticConstPrefixedIdentifier: val,
          ),
        ),
        fromSwidStaticConstIdentifier: (val) =>
            SwidStaticConst.fromSwidStaticConstIdentifier(
          staticConstIdentifier: SwidStaticConstIdentifier.clone(
            swidStaticConstIdentifier: val,
          ),
        ),
        fromSwidStaticConstListLiteral: (val) =>
            SwidStaticConst.fromSwidStaticConstListLiteral(
          staticConstListLiteral: SwidStaticConstListLiteral.clone(
            swidStaticConstListLiteral: val,
          ),
        ),
        fromSwidStaticConstMapLiteral: (val) =>
            SwidStaticConst.fromSwidStaticConstMapLiteral(
          swidStaticConstMapLiteral: val.clone(),
        ),
        fromSwidStaticConstMapLiteralEntry: (val) =>
            SwidStaticConst.fromSwidStaticConstMapLiteralEntry(
          swidStaticConstMapLiteralEntry: val.clone(),
        ),
        fromSwidStaticConstTopLevelVariableReference: (val) =>
            SwidStaticConst.fromSwidStaticConstTopLevelVariableReference(
          swidStaticConstTopLevelVariableReference:
              SwidStaticConstTopLevelVariableReference.clone(
            swidStaticConstTopLevelVariableReference: val,
          ),
        ),
      );

  @override
  List<int> get hashableParts => when(
        fromSwidBooleanLiteral: (val) => val.hashableParts,
        fromSwidStringLiteral: (val) => val.hashableParts,
        fromSwidIntegerLiteral: (val) => val.hashableParts,
        fromDoubleLiteral: (val) => val.hashableParts,
        fromSwidStaticConstFunctionInvocation: (val) => val.hashableParts,
        fromSwidStaticConstFieldReference: (val) => val.hashableParts,
        fromSwidStaticConstPrefixedExpression: (val) => val.hashableParts,
        fromSwidStaticConstBinaryExpression: (val) => val.hashableParts,
        fromSwidStaticConstPrefixedIdentifier: (val) => val.hashableParts,
        fromSwidStaticConstIdentifier: (val) => val.hashableParts,
        fromSwidStaticConstListLiteral: (val) => val.hashableParts,
        fromSwidStaticConstMapLiteralEntry: (val) => val.hashableParts,
        fromSwidStaticConstMapLiteral: (val) => val.hashableParts,
        fromSwidStaticConstTopLevelVariableReference: (val) =>
            val.hashableParts,
      );

  @override
  SwidStaticConst clone() => SwidStaticConst.clone(
        swidStaticConst: this,
      );
}
