import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'inputResolver.freezed.dart';

@freezed
abstract class ResolvedInput with _$ResolvedInput {
  const factory ResolvedInput.fromString({
    required String str,
  }) = _$ResolvedInputFromString;

  const factory ResolvedInput.fromList({
    required List<String> list,
  }) = _$ResolvedInputFromList;
}

abstract class InputResolver {
  const InputResolver();

  Future<ResolvedInput> resolveInput({
    required String input,
  });
}
