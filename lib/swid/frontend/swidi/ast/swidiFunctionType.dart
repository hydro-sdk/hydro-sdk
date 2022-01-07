import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/iSwidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/iTypeFormals.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypePositionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiTypeFormal.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiFunctionType.freezed.dart';

@freezed
class SwidiFunctionType
    with
        _$SwidiFunctionType,
        HashKeyMixin<SwidiFunctionType>,
        HashComparableMixin<SwidiFunctionType>
    implements
        ISwidiType<SwidiFunctionType>,
        ITypeFormals<SwidiFunctionType>,
        ICopyable<SwidiFunctionType,
            $SwidiFunctionTypeCopyWith<SwidiFunctionType>> {
  SwidiFunctionType._();

  factory SwidiFunctionType({
    required final SwidiType returnType,
    required final List<SwidiFunctionTypePositionalParameter>
        positionalParameters,
    required final List<SwidiFunctionTypeOptionalParameter> optionalParameters,
    required final List<SwidiFunctionTypeNamedParameter> namedParameters,
    required final SwidiNullabilitySuffix nullabilitySuffix,
    required final List<SwidiTypeFormal> typeFormals,
    required final List<SwidiAnnotation> annotations,
  }) = _$SwidiFunctionTypeCtor;

  factory SwidiFunctionType._clone({
    required final SwidiFunctionType swidiFunctionType,
    final SwidiType? returnType,
    final List<SwidiFunctionTypePositionalParameter>? positionalParameters,
    final List<SwidiFunctionTypeOptionalParameter>? optionalParameters,
    final List<SwidiFunctionTypeNamedParameter>? namedParameters,
    final SwidiNullabilitySuffix? nullabilitySuffix,
    final List<SwidiTypeFormal>? typeFormals,
    final List<SwidiAnnotation>? annotations,
  }) =>
      SwidiFunctionType(
        returnType: returnType ?? swidiFunctionType.returnType,
        positionalParameters:
            positionalParameters ?? swidiFunctionType.positionalParameters,
        optionalParameters:
            optionalParameters ?? swidiFunctionType.optionalParameters,
        namedParameters: namedParameters ?? swidiFunctionType.namedParameters,
        nullabilitySuffix:
            nullabilitySuffix ?? swidiFunctionType.nullabilitySuffix,
        typeFormals: typeFormals ?? swidiFunctionType.typeFormals,
        annotations: annotations ?? swidiFunctionType.annotations,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* returnType.hashKey.hashableParts;
    yield* positionalParameters.hashableParts;
    yield* optionalParameters.hashableParts;
    yield* namedParameters.hashableParts;
    yield [
      nullabilitySuffix.index,
    ];
    yield* typeFormals.hashableParts;
    yield* annotations.hashableParts;
  }

  @override
  SwidiFunctionType clone({
    final SwidiType? returnType,
    final List<SwidiFunctionTypePositionalParameter>? positionalParameters,
    final List<SwidiFunctionTypeOptionalParameter>? optionalParameters,
    final List<SwidiFunctionTypeNamedParameter>? namedParameters,
    final SwidiNullabilitySuffix? nullabilitySuffix,
    final List<SwidiTypeFormal>? typeFormals,
    final List<SwidiAnnotation>? annotations,
  }) =>
      SwidiFunctionType._clone(
        swidiFunctionType: this,
        returnType: returnType,
        positionalParameters: positionalParameters,
        optionalParameters: optionalParameters,
        namedParameters: namedParameters,
        nullabilitySuffix: nullabilitySuffix,
        typeFormals: typeFormals,
        annotations: annotations,
      );
}
