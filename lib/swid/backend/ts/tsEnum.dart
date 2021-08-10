import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformEnumToTs.dart';

class TsEnum {
  final SwidEnum? swidEnum;

  TsEnum({required final this.swidEnum});

  String toTsSource() => transformEnumToTs(swidEnum: swidEnum!);
}
