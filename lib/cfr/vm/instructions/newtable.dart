import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:meta/meta.dart';

void newtable({@required Frame frame, @required int A}) {
  frame.SR(A, HydroTable());
}
