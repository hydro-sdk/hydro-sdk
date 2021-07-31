import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidiValidationError.freezed.dart';

@freezed
class SwidiValidationError with _$SwidiValidationError {
  const SwidiValidationError._();

  const factory SwidiValidationError({
    required String message,
  }) = _$SwidiValidationErrorCtor;

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
}
