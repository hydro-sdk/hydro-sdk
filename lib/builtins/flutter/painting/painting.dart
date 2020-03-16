import 'package:flua/builtins/flutter/painting/edgeInsets.dart';
import 'package:flua/vm/table.dart';

loadPainting(Table table) {
  var painting = Table();

  table["painting"] = painting;

  loadEdgeInsets(painting);
}
