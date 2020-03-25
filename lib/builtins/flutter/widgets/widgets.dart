import 'package:flua/builtins/flutter/widgets/animatedList.dart';
import 'package:flua/builtins/flutter/widgets/center.dart';
import 'package:flua/builtins/flutter/widgets/column.dart';
import 'package:flua/builtins/flutter/widgets/gestureDetector.dart';
import 'package:flua/builtins/flutter/widgets/globalKey.dart';
import 'package:flua/builtins/flutter/widgets/icon.dart';
import 'package:flua/builtins/flutter/widgets/iconData.dart';
import 'package:flua/builtins/flutter/widgets/padding.dart';
import 'package:flua/builtins/flutter/widgets/preferredSize.dart';
import 'package:flua/builtins/flutter/widgets/sizeTransition.dart';
import 'package:flua/builtins/flutter/widgets/sizedBox.dart';
import 'package:flua/builtins/flutter/widgets/text.dart';
import 'package:flua/vm/table.dart';

loadWidgets(HydroTable table) {
  var widgets = HydroTable();

  table["widgets"] = widgets;

  loadText(widgets);
  loadCenter(widgets);
  loadColumn(widgets);
  loadIcon(widgets);
  loadIconData(widgets);
  loadGlobalKey(widgets);
  loadSizedBox(widgets);
  loadPadding(widgets);
  loadAnimatedList(widgets);
  loadSizeTransition(widgets);
  loadGestureDetector(widgets);
  loadPreferredSize(widgets);
}
