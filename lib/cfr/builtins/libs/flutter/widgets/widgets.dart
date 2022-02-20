import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/buildContext.dart'
    as _1ed8;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/buildOwner.dart'
    as _2ab7;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/componentElement.dart'
    as _4665;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/debugCreator.dart'
    as _00f1;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/element.dart'
    as _7c9c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/errorWidget.dart'
    as _00d2;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/globalKey.dart'
    as _47c7;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/globalObjectKey.dart'
    as _50df;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/indexedSlot.dart'
    as _5b55;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/inheritedElement.dart'
    as _134f;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/inheritedWidget.dart'
    as _37b0;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/labeledGlobalKey.dart'
    as _8035;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/leafRenderObjectElement.dart'
    as _9f28;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/leafRenderObjectWidget.dart'
    as _93e2;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/multiChildRenderObjectElement.dart'
    as _7e31;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/multiChildRenderObjectWidget.dart'
    as _1696;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/objectKey.dart'
    as _11f9;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/parentDataElement.dart'
    as _a4cd;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/parentDataWidget.dart'
    as _8638;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/proxyElement.dart'
    as _1e3c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/proxyWidget.dart'
    as _f4d8;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/renderObjectElement.dart'
    as _0784;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/renderObjectWidget.dart'
    as _9f2c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/rootRenderObjectElement.dart'
    as _89be;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/singleChildRenderObjectElement.dart'
    as _1866;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/singleChildRenderObjectWidget.dart'
    as _8446;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/state.dart'
    as _7f96;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/statefulElement.dart'
    as _49f4;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/statefulWidget.dart'
    as _16bb;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/statelessElement.dart'
    as _8b8c;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/statelessWidget.dart'
    as _1acb;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/uniqueKey.dart'
    as _8069;
import 'package:hydro_sdk/cfr/builtins/libs/flutter/widgets/widget.dart'
    as _f3b1;
import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

void loadwidgets(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  final widgets = _36c2.HydroTable();
  table['widgets'] = widgets;
  _8069.loadUniqueKey(table: widgets, hydroState: hydroState);
  _11f9.loadObjectKey(table: widgets, hydroState: hydroState);
  _47c7.loadGlobalKey(table: widgets, hydroState: hydroState);
  _8035.loadLabeledGlobalKey(table: widgets, hydroState: hydroState);
  _50df.loadGlobalObjectKey(table: widgets, hydroState: hydroState);
  _f3b1.loadWidget(table: widgets, hydroState: hydroState);
  _1acb.loadStatelessWidget(table: widgets, hydroState: hydroState);
  _16bb.loadStatefulWidget(table: widgets, hydroState: hydroState);
  _7f96.loadState(table: widgets, hydroState: hydroState);
  _f4d8.loadProxyWidget(table: widgets, hydroState: hydroState);
  _8638.loadParentDataWidget(table: widgets, hydroState: hydroState);
  _37b0.loadInheritedWidget(table: widgets, hydroState: hydroState);
  _9f2c.loadRenderObjectWidget(table: widgets, hydroState: hydroState);
  _93e2.loadLeafRenderObjectWidget(table: widgets, hydroState: hydroState);
  _8446.loadSingleChildRenderObjectWidget(
      table: widgets, hydroState: hydroState);
  _1696.loadMultiChildRenderObjectWidget(
      table: widgets, hydroState: hydroState);
  _1ed8.loadBuildContext(table: widgets, hydroState: hydroState);
  _2ab7.loadBuildOwner(table: widgets, hydroState: hydroState);
  _7c9c.loadElement(table: widgets, hydroState: hydroState);
  _00d2.loadErrorWidget(table: widgets, hydroState: hydroState);
  _4665.loadComponentElement(table: widgets, hydroState: hydroState);
  _8b8c.loadStatelessElement(table: widgets, hydroState: hydroState);
  _49f4.loadStatefulElement(table: widgets, hydroState: hydroState);
  _1e3c.loadProxyElement(table: widgets, hydroState: hydroState);
  _a4cd.loadParentDataElement(table: widgets, hydroState: hydroState);
  _134f.loadInheritedElement(table: widgets, hydroState: hydroState);
  _0784.loadRenderObjectElement(table: widgets, hydroState: hydroState);
  _89be.loadRootRenderObjectElement(table: widgets, hydroState: hydroState);
  _9f28.loadLeafRenderObjectElement(table: widgets, hydroState: hydroState);
  _1866.loadSingleChildRenderObjectElement(
      table: widgets, hydroState: hydroState);
  _7e31.loadMultiChildRenderObjectElement(
      table: widgets, hydroState: hydroState);
  _00f1.loadDebugCreator(table: widgets, hydroState: hydroState);
  _5b55.loadIndexedSlot(table: widgets, hydroState: hydroState);
}
