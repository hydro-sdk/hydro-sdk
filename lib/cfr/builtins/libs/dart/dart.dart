import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/collection.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/core.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/math/math.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/typed_data.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/ui.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loaddart({required HydroState hydroState, required Context context}) {
  final dart = HydroTable();
  context.env['dart'] = dart;
  loadcollection(table: dart, hydroState: hydroState);
  loadui(table: dart, hydroState: hydroState);
  loadcore(table: dart, hydroState: hydroState);
  loadmath(table: dart, hydroState: hydroState);
  loadtyped_data(hydroState: hydroState, table: dart);
}
