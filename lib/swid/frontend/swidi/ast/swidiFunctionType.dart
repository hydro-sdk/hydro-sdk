import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionTypeNamedArgument.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
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
        ICopyable<SwidiFunctionType,
            $SwidiFunctionTypeCopyWith<SwidiFunctionType>> {
  SwidiFunctionType._();

  factory SwidiFunctionType({
    required final SwidiInterface returnType,
    required final List<SwidiPositionalParameter> positionalParameters,
    required final List<SwidiInterface> optionalParameters,
    required final List<SwidiFunctionTypeNamedArgument> namedParameters,
    required final List<SwidiInterface> typeArguments,
    required final List<SwidiAnnotation> annotations,
  }) = _$SwidiFunctionTypeCtor;

  factory SwidiFunctionType._clone({
    required final SwidiFunctionType swidiFunctionType,
    final SwidiInterface? returnType,
    final List<SwidiPositionalParameter>? positionalParameters,
    final List<SwidiInterface>? optionalParameters,
    final List<SwidiFunctionTypeNamedArgument>? namedParameters,
    final List<SwidiInterface>? typeArguments,
    final List<SwidiAnnotation>? annotations,
  }) =>
      SwidiFunctionType(
        returnType: returnType ?? swidiFunctionType.returnType,
        positionalParameters:
            positionalParameters ?? swidiFunctionType.positionalParameters,
        optionalParameters:
            optionalParameters ?? swidiFunctionType.optionalParameters,
        namedParameters: namedParameters ?? swidiFunctionType.namedParameters,
        typeArguments: typeArguments ?? swidiFunctionType.typeArguments,
        annotations: annotations ?? swidiFunctionType.annotations,
      );

  @override
  List<int> get hashableParts => [
        ...returnType.hashableParts,
        ...positionalParameters.hashableParts,
        ...optionalParameters.hashableParts,
        ...namedParameters.hashableParts,
        ...typeArguments.hashableParts,
        ...annotations.hashableParts,
      ];

  @override
  SwidiFunctionType clone({
    final SwidiInterface? returnType,
    final List<SwidiPositionalParameter>? positionalParameters,
    final List<SwidiInterface>? optionalParameters,
    final List<SwidiFunctionTypeNamedArgument>? namedParameters,
    final List<SwidiInterface>? typeArguments,
    final List<SwidiAnnotation>? annotations,
  }) =>
      SwidiFunctionType._clone(
        swidiFunctionType: this,
        returnType: returnType,
        positionalParameters: positionalParameters,
        optionalParameters: optionalParameters,
        namedParameters: namedParameters,
        typeArguments: typeArguments,
        annotations: annotations,
      );
}
