import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsEnum.dart';
import 'package:meta/meta.dart';

part 'tsir.freezed.dart';

@freezed
abstract class TsIr with _$TsIr {
  factory TsIr.fromTsEnum({@required TsEnum tsEnum}) = _$FromTsEnum;
}

extension TsIrMethods on TsIr {
  String toTsSource() => when(fromTsEnum: (val) => val.toTsSource());
}
