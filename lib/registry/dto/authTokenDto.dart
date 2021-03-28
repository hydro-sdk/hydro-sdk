import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'authTokenDto.freezed.dart';
part 'authTokenDto.g.dart';

@freezed
abstract class AuthTokenDto with _$AuthTokenDto {
  const factory AuthTokenDto({
    @required String sub,
    @required String username,
    @required int exp,
  }) = _$AuthTokenDtoCtor;

  factory AuthTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenDtoFromJson(json);
}
