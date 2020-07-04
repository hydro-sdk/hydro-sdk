import 'package:hydro_sdk/cfr/builtins/flutter/widgets/align.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/animatedList.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/center.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/clipRRect.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/column.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/container.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/expanded.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/flexible.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/gestureDetector.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/globalKey.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/icon.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/iconData.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/image.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/listview.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/mediaQuery.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/navigator.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/padding.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/positioned.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/preferredSize.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/richText.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/row.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/safeArea.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/sizeTransition.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/sizedBox.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/spacer.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/stack.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/text.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/widgets/transform.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:meta/meta.dart';

void loadWidgets({@required HydroState luaState, @required HydroTable table}) {
  var widgets = HydroTable();

  table["widgets"] = widgets;

  loadText(luaState: luaState, table: widgets);
  loadCenter(luaState: luaState, table: widgets);
  loadColumn(luaState: luaState, table: widgets);
  loadIcon(luaState: luaState, table: widgets);
  loadIconData(widgets);
  loadGlobalKey(luaState: luaState, table: widgets);
  loadSizedBox(luaState: luaState, table: widgets);
  loadPadding(luaState: luaState, table: widgets);
  loadAnimatedList(luaState: luaState, table: widgets);
  loadSizeTransition(luaState: luaState, table: widgets);
  loadGestureDetector(luaState: luaState, table: widgets);
  loadPreferredSize(luaState: luaState, table: widgets);
  loadSafeArea(luaState: luaState, table: widgets);
  loadStack(luaState: luaState, table: widgets);
  loadPositioned(luaState: luaState, table: widgets);
  loadMediaQuery(luaState: luaState, table: widgets);
  loadRow(luaState: luaState, table: widgets);
  loadFlexible(luaState: luaState, table: widgets);
  loadContainer(luaState: luaState, table: widgets);
  loadSpacer(luaState: luaState, table: widgets);
  loadClipRRect(luaState: luaState, table: widgets);
  loadImage(luaState: luaState, table: widgets);
  loadRichText(luaState: luaState, table: widgets);
  loadAlign(luaState: luaState, table: widgets);
  loadListView(luaState: luaState, table: widgets);
  loadNavigator(luaState: luaState, table: widgets);
  loadExpanded(luaState: luaState, table: widgets);
  loadTransform(luaState: luaState, table: widgets);
}
