import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';

part 'swidIr.freezed.dart';
part 'swidIr.g.dart';

@freezed
abstract class SwidIr with _$SwidIr {
  const factory SwidIr.fromSwidClass({@required SwidClass swidClass}) =
      _$SwidIrFromSwidClass;

  const factory SwidIr.fromSwidEnum({@required SwidEnum swidEnum}) =
      _$SwidIrFromSwidEnum;

  factory SwidIr.fromJson(Map<String, dynamic> json) => _$SwidIrFromJson(json);
}
