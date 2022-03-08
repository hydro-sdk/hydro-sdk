import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/tab_controller.dart' as _f3b5;
import 'package:flutter/src/material/tabs.dart' as _d82b;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/preferred_size.dart' as _75de;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTabBar extends _36c2.VMManagedBox<_d82b.TabBar> {
  VMManagedTabBar(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['tabs'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>>(
        object: vmObject.tabs,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['controller'] = _36c2.maybeBoxObject<_f3b5.TabController?>(
        object: vmObject.controller,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isScrollable'] = vmObject.isScrollable;
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.indicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorWeight'] = vmObject.indicatorWeight;
    table['indicatorPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
        object: vmObject.indicatorPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicator'] = _36c2.maybeBoxObject<_13a5.Decoration?>(
        object: vmObject.indicator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['automaticIndicatorColorAdjustment'] =
        vmObject.automaticIndicatorColorAdjustment;
    table['indicatorSize'] = _d82b.TabBarIndicatorSize.values.indexWhere((x) {
      return x == vmObject.indicatorSize;
    });
    table['labelColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.labelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.unselectedLabelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['mouseCursor'] = _36c2.maybeBoxObject<_fd33.MouseCursor?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = vmObject.enableFeedback;
    table['physics'] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(
        object: vmObject.physics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.preferredSize,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTabHasTextAndIcon'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.tabHasTextAndIcon,
      ];
    });
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d82b.TabBar vmObject;
}

class RTManagedTabBar extends _d82b.TabBar implements _36c2.Box<_d82b.TabBar> {
  RTManagedTabBar(
      {required _fac9.bool automaticIndicatorColorAdjustment,
      _f3b5.TabController? controller,
      required _02d2.DragStartBehavior dragStartBehavior,
      _fac9.bool? enableFeedback,
      _13a5.Decoration? indicator,
      _a643.Color? indicatorColor,
      required _96d1.EdgeInsetsGeometry indicatorPadding,
      _d82b.TabBarIndicatorSize? indicatorSize,
      required _fac9.double indicatorWeight,
      required _fac9.bool isScrollable,
      _ab4a.Key? key,
      _a643.Color? labelColor,
      _96d1.EdgeInsetsGeometry? labelPadding,
      _74d0.TextStyle? labelStyle,
      _fd33.MouseCursor? mouseCursor,
      void Function(_fac9.int value)? onTap,
      _da12.MaterialStateProperty<_a643.Color?>? overlayColor,
      _96d1.EdgeInsetsGeometry? padding,
      _dbad.ScrollPhysics? physics,
      _a643.Color? unselectedLabelColor,
      _74d0.TextStyle? unselectedLabelStyle,
      required _fac9.List<_e2dc.Widget> tabs,
      required this.table,
      required this.hydroState})
      : super(
            automaticIndicatorColorAdjustment:
                automaticIndicatorColorAdjustment,
            controller: controller,
            dragStartBehavior: dragStartBehavior,
            enableFeedback: enableFeedback,
            indicator: indicator,
            indicatorColor: indicatorColor,
            indicatorPadding: indicatorPadding,
            indicatorSize: indicatorSize,
            indicatorWeight: indicatorWeight,
            isScrollable: isScrollable,
            key: key,
            labelColor: labelColor,
            labelPadding: labelPadding,
            labelStyle: labelStyle,
            mouseCursor: mouseCursor,
            onTap: onTap,
            overlayColor: overlayColor,
            padding: padding,
            physics: physics,
            unselectedLabelColor: unselectedLabelColor,
            unselectedLabelStyle: unselectedLabelStyle,
            tabs: tabs) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['tabs'] = _36c2.maybeBoxObject(
        object: this.tabs, hydroState: hydroState, table: _36c2.HydroTable());
    table['controller'] = _36c2.maybeBoxObject(
        object: this.controller,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isScrollable'] = _36c2.maybeBoxObject(
        object: this.isScrollable,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorColor'] = _36c2.maybeBoxObject(
        object: this.indicatorColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorWeight'] = _36c2.maybeBoxObject(
        object: this.indicatorWeight,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorPadding'] = _36c2.maybeBoxObject(
        object: this.indicatorPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicator'] = _36c2.maybeBoxObject(
        object: this.indicator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['automaticIndicatorColorAdjustment'] = _36c2.maybeBoxObject(
        object: this.automaticIndicatorColorAdjustment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['indicatorSize'] = _d82b.TabBarIndicatorSize.values.indexWhere((x) {
      return x == this.indicatorSize;
    });
    table['labelColor'] = _36c2.maybeBoxObject(
        object: this.labelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelColor'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelStyle'] = _36c2.maybeBoxObject(
        object: this.labelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['labelPadding'] = _36c2.maybeBoxObject(
        object: this.labelPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['unselectedLabelStyle'] = _36c2.maybeBoxObject(
        object: this.unselectedLabelStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject(
        object: this.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.dragStartBehavior;
    });
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['physics'] = _36c2.maybeBoxObject(
        object: this.physics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getPreferredSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.preferredSize];
    });
    table['_dart_getTabHasTextAndIcon'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.tabHasTextAndIcon];
    });
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _d82b.TabBar unwrap() => this;
  _d82b.TabBar get vmObject => this;
  @_fac9.override
  _a643.Size get preferredSize {
    _36c2.Closure closure = table["getPreferredSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get tabHasTextAndIcon {
    _36c2.Closure closure = table["getTabHasTextAndIcon"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.State<_d82b.TabBar> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.State<_d82b.TabBar>, _d82b.TabBar>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTabBar(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['tabBar'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonTap =
        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;

    return [
      RTManagedTabBar(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          automaticIndicatorColorAdjustment: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['automaticIndicatorColorAdjustment']
              : null,
          controller:
              _36c2.maybeUnBoxAndBuildArgument<_f3b5.TabController?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['controller']
                      : null,
                  parentState: hydroState),
          dragStartBehavior: _36c2.maybeUnBoxEnum(
              values: _02d2.DragStartBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dragStartBehavior']
                  : null),
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          indicator:
              _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicator'] : null,
                  parentState: hydroState),
          indicatorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorColor'] : null,
              parentState: hydroState),
          indicatorPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorPadding'] : null, parentState: hydroState),
          indicatorSize: _36c2.maybeUnBoxEnum(values: _d82b.TabBarIndicatorSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorSize'] : null),
          indicatorWeight: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['indicatorWeight'] : null?.toDouble(),
          isScrollable: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isScrollable'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          labelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelColor'] : null, parentState: hydroState),
          labelPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelPadding'] : null, parentState: hydroState),
          labelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['labelStyle'] : null, parentState: hydroState),
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
          onTap: unpackedonTap != null
              ? (value) => unpackedonTap.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['physics'] : null, parentState: hydroState),
          unselectedLabelColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelColor'] : null, parentState: hydroState),
          unselectedLabelStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['unselectedLabelStyle'] : null, parentState: hydroState),
          tabs: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tabs'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_d82b.TabBar>(boxer: (
      {required _d82b.TabBar vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTabBar(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
