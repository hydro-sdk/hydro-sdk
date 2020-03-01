import 'package:flua/5_2/context.dart';
import 'package:flua/5_2/dart/core/core.dart';
import 'package:flua/5_2/dart/ui/ui.dart';
import 'package:flua/5_2/table.dart';

loadDartLib(Context ctx) {
  var dart = Table();

  ctx.env["dart"] = dart;

  loadCore(dart);
  loadUi(dart);
}
