import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void newtable({required Frame frame, required int A}) {
  frame.SR(A, HydroTable());
}
