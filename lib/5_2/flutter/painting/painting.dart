import 'package:flua/5_2/flutter/package/textStyle.dart';
import 'package:flua/5_2/flutter/painting/edgeInsets.dart';
import 'package:flua/5_2/table.dart';

loadPainting(Table table) {
  var painting = Table();

  table["painting"] = painting;

  loadEdgeInsets(painting);
}
