// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validateSwidiClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidiClassValidationStateValid _$_$_$SwidiClassValidationStateValidFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidiClassValidationStateValid();
}

Map<String, dynamic> _$_$_$SwidiClassValidationStateValidToJson(
        _$_$SwidiClassValidationStateValid instance) =>
    <String, dynamic>{};

_$_$SwidiClassValidationStateInvalid
    _$_$_$SwidiClassValidationStateInvalidFromJson(Map<String, dynamic> json) {
  return _$_$SwidiClassValidationStateInvalid(
    swidiValidationError: SwidiValidationError.fromJson(
        json['swidiValidationError'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidiClassValidationStateInvalidToJson(
        _$_$SwidiClassValidationStateInvalid instance) =>
    <String, dynamic>{
      'swidiValidationError': instance.swidiValidationError,
    };
