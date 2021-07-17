import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';

part 'swidiTypeFormal.freezed.dart';

@freezed
class SwidiTypeFormal with _$SwidiTypeFormal {
  const SwidiTypeFormal._();

  const factory SwidiTypeFormal({
    required String name,
    required SwidiInterface bound,
  }) = _$SwidiTypeFormalCtor;

  static const empty = const SwidiTypeFormal(
    name: "",
    bound: SwidiInterface.empty,
  );

  factory SwidiTypeFormal.clone({
    required SwidiTypeFormal swidiTypeFormal,
    String? name,
    SwidiInterface? bound,
  }) =>
      SwidiTypeFormal(
        name: name ?? swidiTypeFormal.name,
        bound: bound ??
            SwidiInterface.clone(
              swidiInterface: swidiTypeFormal.bound,
            ),
      );
}
