import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidiFunctionDeclaration.freezed.dart';

@freezed
abstract class SwidiFunctionDeclaration with _$SwidiFunctionDeclaration {
  const factory SwidiFunctionDeclaration({
    @required String name,
    @required String returnType,
  }) = _$SwidiFunctionDeclarationCtor;
}
