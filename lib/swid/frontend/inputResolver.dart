import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'inputResolver.freezed.dart';

@freezed
class ResolvedInput with _$ResolvedInput {
  const factory ResolvedInput.fromString({
    required final String str,
  }) = _$ResolvedInputFromString;

  const factory ResolvedInput.fromList({
    required final List<String> list,
  }) = _$ResolvedInputFromList;
}

abstract class InputResolver {
  const InputResolver();

  Future<ResolvedInput> resolveInput({
    required final String input,
  });
}
