import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/foundation.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/widgets.dart';
import 'package:hydro_sdk/cfr/runtimeSupport.dart';

void loadflutter({required HydroState hydroState, required Context context}) {
  final flutter = HydroTable();
  context.env['flutter'] = flutter;
  loadfoundation(table: flutter, hydroState: hydroState);
  loadwidgets(table: flutter, hydroState: hydroState);
}
