import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidiInterface.freezed.dart';

@freezed
abstract class SwidiInterface with _$SwidiInterface {
  const factory SwidiInterface({
    @required String name,
  }) = _$SwidiInterfaceCtor;
}
