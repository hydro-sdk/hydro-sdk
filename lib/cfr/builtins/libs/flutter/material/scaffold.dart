import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/material/floating_action_button_location.dart'
    as _b2ee;
import 'package:flutter/src/material/scaffold.dart' as _ece7;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/preferred_size.dart' as _75de;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaffold extends _36c2.VMManagedBox<_ece7.Scaffold> {
  VMManagedScaffold(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['extendBody'] = vmObject.extendBody;
    table['extendBodyBehindAppBar'] = vmObject.extendBodyBehindAppBar;
    table['appBar'] = _36c2.maybeBoxObject<_75de.PreferredSizeWidget?>(
        object: vmObject.appBar,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['body'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.body,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingActionButton'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.floatingActionButton,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingActionButtonLocation'] =
        _36c2.maybeBoxObject<_b2ee.FloatingActionButtonLocation?>(
            object: vmObject.floatingActionButtonLocation,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['floatingActionButtonAnimator'] =
        _36c2.maybeBoxObject<_b2ee.FloatingActionButtonAnimator?>(
            object: vmObject.floatingActionButtonAnimator,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['persistentFooterButtons'] =
        _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>?>(
            object: vmObject.persistentFooterButtons,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['drawer'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.drawer,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['endDrawer'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.endDrawer,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['drawerScrimColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.drawerScrimColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomNavigationBar'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.bottomNavigationBar,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomSheet'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.bottomSheet,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['resizeToAvoidBottomInset'] = vmObject.resizeToAvoidBottomInset;
    table['primary'] = vmObject.primary;
    table['drawerDragStartBehavior'] =
        _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.drawerDragStartBehavior;
    });
    table['drawerEdgeDragWidth'] = vmObject.drawerEdgeDragWidth;
    table['drawerEnableOpenDragGesture'] = vmObject.drawerEnableOpenDragGesture;
    table['endDrawerEnableOpenDragGesture'] =
        vmObject.endDrawerEnableOpenDragGesture;
    table['restorationId'] = vmObject.restorationId;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_ece7.ScaffoldState>(
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

  final _ece7.Scaffold vmObject;
}

class RTManagedScaffold extends _ece7.Scaffold
    implements _36c2.Box<_ece7.Scaffold> {
  RTManagedScaffold(
      {_75de.PreferredSizeWidget? appBar,
      _a643.Color? backgroundColor,
      _e2dc.Widget? body,
      _e2dc.Widget? bottomNavigationBar,
      _e2dc.Widget? bottomSheet,
      _e2dc.Widget? drawer,
      required _02d2.DragStartBehavior drawerDragStartBehavior,
      _fac9.double? drawerEdgeDragWidth,
      required _fac9.bool drawerEnableOpenDragGesture,
      _a643.Color? drawerScrimColor,
      _e2dc.Widget? endDrawer,
      required _fac9.bool endDrawerEnableOpenDragGesture,
      required _fac9.bool extendBody,
      required _fac9.bool extendBodyBehindAppBar,
      _e2dc.Widget? floatingActionButton,
      _b2ee.FloatingActionButtonAnimator? floatingActionButtonAnimator,
      _b2ee.FloatingActionButtonLocation? floatingActionButtonLocation,
      _ab4a.Key? key,
      void Function(_fac9.bool isOpened)? onDrawerChanged,
      void Function(_fac9.bool isOpened)? onEndDrawerChanged,
      _fac9.List<_e2dc.Widget>? persistentFooterButtons,
      required _fac9.bool primary,
      _fac9.bool? resizeToAvoidBottomInset,
      _fac9.String? restorationId,
      required this.table,
      required this.hydroState})
      : super(
            appBar: appBar,
            backgroundColor: backgroundColor,
            body: body,
            bottomNavigationBar: bottomNavigationBar,
            bottomSheet: bottomSheet,
            drawer: drawer,
            drawerDragStartBehavior: drawerDragStartBehavior,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            drawerScrimColor: drawerScrimColor,
            endDrawer: endDrawer,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            floatingActionButton: floatingActionButton,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            floatingActionButtonLocation: floatingActionButtonLocation,
            key: key,
            onDrawerChanged: onDrawerChanged,
            onEndDrawerChanged: onEndDrawerChanged,
            persistentFooterButtons: persistentFooterButtons,
            primary: primary,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            restorationId: restorationId) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['extendBody'] = _36c2.maybeBoxObject(
        object: this.extendBody,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['extendBodyBehindAppBar'] = _36c2.maybeBoxObject(
        object: this.extendBodyBehindAppBar,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['appBar'] = _36c2.maybeBoxObject(
        object: this.appBar, hydroState: hydroState, table: _36c2.HydroTable());
    table['body'] = _36c2.maybeBoxObject(
        object: this.body, hydroState: hydroState, table: _36c2.HydroTable());
    table['floatingActionButton'] = _36c2.maybeBoxObject(
        object: this.floatingActionButton,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingActionButtonLocation'] = _36c2.maybeBoxObject(
        object: this.floatingActionButtonLocation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['floatingActionButtonAnimator'] = _36c2.maybeBoxObject(
        object: this.floatingActionButtonAnimator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['persistentFooterButtons'] = _36c2.maybeBoxObject(
        object: this.persistentFooterButtons,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['drawer'] = _36c2.maybeBoxObject(
        object: this.drawer, hydroState: hydroState, table: _36c2.HydroTable());
    table['endDrawer'] = _36c2.maybeBoxObject(
        object: this.endDrawer,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['drawerScrimColor'] = _36c2.maybeBoxObject(
        object: this.drawerScrimColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomNavigationBar'] = _36c2.maybeBoxObject(
        object: this.bottomNavigationBar,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomSheet'] = _36c2.maybeBoxObject(
        object: this.bottomSheet,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['resizeToAvoidBottomInset'] = _36c2.maybeBoxObject(
        object: this.resizeToAvoidBottomInset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['primary'] = _36c2.maybeBoxObject(
        object: this.primary,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['drawerDragStartBehavior'] =
        _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.drawerDragStartBehavior;
    });
    table['drawerEdgeDragWidth'] = _36c2.maybeBoxObject(
        object: this.drawerEdgeDragWidth,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['drawerEnableOpenDragGesture'] = _36c2.maybeBoxObject(
        object: this.drawerEnableOpenDragGesture,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['endDrawerEnableOpenDragGesture'] = _36c2.maybeBoxObject(
        object: this.endDrawerEnableOpenDragGesture,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['restorationId'] = _36c2.maybeBoxObject(
        object: this.restorationId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
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

  _ece7.Scaffold unwrap() => this;
  _ece7.Scaffold get vmObject => this;
  @_fac9.override
  _ece7.ScaffoldState createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_ece7.ScaffoldState, _fac9.dynamic>(
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

void loadScaffold(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scaffold'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonDrawerChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDrawerChanged']
        : null;
    _36c2.Closure? unpackedonEndDrawerChanged = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onEndDrawerChanged']
        : null;

    return [
      RTManagedScaffold(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          appBar: _36c2.maybeUnBoxAndBuildArgument<_75de.PreferredSizeWidget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['appBar']
                  : null,
              parentState: hydroState),
          backgroundColor:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['backgroundColor']
                      : null,
                  parentState: hydroState),
          body: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['body'] : null,
              parentState: hydroState),
          bottomNavigationBar: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomNavigationBar'] : null, parentState: hydroState),
          bottomSheet: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomSheet'] : null, parentState: hydroState),
          drawer: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawer'] : null, parentState: hydroState),
          drawerDragStartBehavior: _36c2.maybeUnBoxEnum(values: _02d2.DragStartBehavior.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawerDragStartBehavior'] : null),
          drawerEdgeDragWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawerEdgeDragWidth'] : null?.toDouble(),
          drawerEnableOpenDragGesture: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawerEnableOpenDragGesture'] : null,
          drawerScrimColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['drawerScrimColor'] : null, parentState: hydroState),
          endDrawer: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['endDrawer'] : null, parentState: hydroState),
          endDrawerEnableOpenDragGesture: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['endDrawerEnableOpenDragGesture'] : null,
          extendBody: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendBody'] : null,
          extendBodyBehindAppBar: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['extendBodyBehindAppBar'] : null,
          floatingActionButton: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingActionButton'] : null, parentState: hydroState),
          floatingActionButtonAnimator: _36c2.maybeUnBoxAndBuildArgument<_b2ee.FloatingActionButtonAnimator?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingActionButtonAnimator'] : null, parentState: hydroState),
          floatingActionButtonLocation: _36c2.maybeUnBoxAndBuildArgument<_b2ee.FloatingActionButtonLocation?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['floatingActionButtonLocation'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          onDrawerChanged: unpackedonDrawerChanged != null
              ? (isOpened) => unpackedonDrawerChanged.dispatch(
                    [luaCallerArguments[0], isOpened],
                    parentState: hydroState,
                  )
              : null,
          onEndDrawerChanged: unpackedonEndDrawerChanged != null
              ? (isOpened) => unpackedonEndDrawerChanged.dispatch(
                    [luaCallerArguments[0], isOpened],
                    parentState: hydroState,
                  )
              : null,
          persistentFooterButtons: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>?, _e2dc.Widget>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['persistentFooterButtons'] : null, parentState: hydroState),
          primary: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primary'] : null,
          resizeToAvoidBottomInset: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['resizeToAvoidBottomInset'] : null,
          restorationId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['restorationId'] : null)
    ];
  });
  table['scaffoldOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_ece7.ScaffoldState>(
          object: _ece7.Scaffold.of(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['scaffoldMaybeOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _ece7.Scaffold.maybeOf(
        _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState));
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_ece7.ScaffoldState?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  table['scaffoldGeometryOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_e644.ValueListenable>(
          object: _ece7.Scaffold.geometryOf(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['scaffoldHasDrawer'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _ece7.Scaffold.hasDrawer(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          registerForUpdates: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['registerForUpdates']
              : null),
    ];
  });
  _36c2.registerBoxer<_ece7.Scaffold>(boxer: (
      {required _ece7.Scaffold vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScaffold(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
