import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidiValidationError.freezed.dart';
part 'swidiValidationError.g.dart';

@freezed
class SwidiValidationError
    with _$SwidiValidationError
    implements IJsonTransformable {
  const SwidiValidationError._();

  const factory SwidiValidationError({
    required final String message,
  }) = _$SwidiValidationErrorCtor;

  factory SwidiValidationError.fromJson(Map<String, dynamic> json) =>
      _$SwidiValidationErrorFromJson(json);

  @override
  SwidiValidationError fromJson(Map<String, dynamic> json) =>
      SwidiValidationError.fromJson(json);

  static const e1 = SwidiValidationError(
    message: "Empty annotation on declaration",
  );

  static const e2 = SwidiValidationError(
    message: "Number used as an annotation",
  );

  static const e3 = SwidiValidationError(
    message: "String used as an annotation",
  );

  static const e4 = SwidiValidationError(
    message: "Annotations can't have named parameters",
  );

  static const e5 = SwidiValidationError(
    message: "Annotations must have a positional parameter",
  );

  static const e6 = SwidiValidationError(
    message: "Annotations must have a single positional parameter",
  );

  static const e7 = SwidiValidationError(
    message: "Number used as a parameter in an annotation",
  );

  static const e8 = SwidiValidationError(
    message: "Function used as a parameter in an annotation",
  );

  static const e9 = SwidiValidationError(
    message: "Map used as a parameter in an annotation",
  );

  static const e10 = SwidiValidationError(
    message: "Map used as an annotation",
  );

  static const e11 = SwidiValidationError(
    message: "Number used as a method short hand override",
  );

  static const e12 = SwidiValidationError(
    message: "String used as a method short hand override",
  );

  static const e13 = SwidiValidationError(
    message: "Function used as a method short hand override",
  );

  static const e14 = SwidiValidationError(
    message: "Number used as a key in a method short hand override",
  );

  static const e15 = SwidiValidationError(
    message: "Function used as a key in a method short hand override",
  );

  static const e16 = SwidiValidationError(
    message: "Map used as a key in a method short hand override",
  );

  static const e17 = SwidiValidationError(
    message: "Key is not a valid short hand override key",
  );

  static const e18 = SwidiValidationError(
    message: "Invalid annotation name",
  );

  static const e19 = SwidiValidationError(
    message: "Invalid annotation parameter",
  );

  static const e20 = SwidiValidationError(
    message: "Boolean used as an annotation",
  );

  static const e21 = SwidiValidationError(
    message: "Boolean used as a parameter in an annotation",
  );

  static const e22 = SwidiValidationError(
    message: "Boolean used as a method short hand override",
  );

  static const e23 = SwidiValidationError(
    message: "Boolean used as a key in a method short hand override",
  );

  static const e24 = SwidiValidationError(
    message: "Number used as a value in a method short hand override",
  );

  static const e25 = SwidiValidationError(
    message: "Function used as a value in a method short hand override",
  );

  static const e26 = SwidiValidationError(
    message: "Map used as a value in a method short hand override",
  );
}
