import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/async/async.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/collection/collection.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/convert/convert.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/core.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/developer/developer.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/math/math.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/typed_data/typed_data.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/ui.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loaddart({@required HydroState hydroState, @required Context context}) {
  var dart = HydroTable();

  context.env["dart"] = dart;

  loadCore(table: dart, luaState: hydroState);
  loadUi(table: dart, luaState: hydroState);
  loadDeveloper(dart);
  loadAsync(table: dart, hydroState: hydroState);
  loadConvert(table: dart, hydroState: hydroState);
  loadCollection(hydroState: hydroState, table: dart);
  loadmath(hydroState: hydroState, table: dart);
  loadtyped_data(table: dart, hydroState: hydroState);
}
