import 'package:flua/builtins/flutter/painting/alignment.dart';
import 'package:flua/builtins/flutter/painting/borderRadius.dart';
import 'package:flua/builtins/flutter/painting/edgeInsets.dart';
import 'package:flua/builtins/flutter/painting/networkImage.dart';
import 'package:flua/vm/table.dart';

loadPainting(HydroTable table) {
  var painting = HydroTable();

  table["painting"] = painting;

  loadEdgeInsets(painting);
  loadBorderRadius(painting);
  loadNetworkImage(painting);
  loadAlignment(painting);
}
