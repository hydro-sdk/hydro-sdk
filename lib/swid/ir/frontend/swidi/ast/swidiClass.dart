import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidiClass.freezed.dart';

@freezed
abstract class SwidiClass with _$SwidiClass {
  const factory SwidiClass({
    @required String name,
  }) = _$SwidiClassCtor;
}
