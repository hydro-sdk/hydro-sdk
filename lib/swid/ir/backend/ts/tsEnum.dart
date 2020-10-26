import 'package:hydro_sdk/swid/ir/frontend/dart/swidEnum.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/TsIr.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformEnumToTs.dart';
import 'package:meta/meta.dart';

class TsEnum implements TsIr {
  final SwidEnum swidEnum;

  TsEnum({@required this.swidEnum});

  factory TsEnum.fromEnum({@required SwidEnum swidEnum}) =>
      TsEnum(swidEnum: swidEnum);

  String toTsSource() => transformEnumToTs(swidEnum: swidEnum);
}
