import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'dartir.freezed.dart';

@freezed
abstract class DartIr with _$DartIr {
  factory DartIr() = _$Data;
}
