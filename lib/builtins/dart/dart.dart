import 'package:flua/vm/context.dart';
import 'package:flua/builtins/dart/core/core.dart';
import 'package:flua/builtins/dart/ui/ui.dart';
import 'package:flua/vm/table.dart';

loadDartLib(Context ctx) {
  var dart = Table();

  ctx.env["dart"] = dart;

  loadCore(dart);
  loadUi(dart);
}
