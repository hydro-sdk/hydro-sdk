import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/widgets/dismissible.dart' as _be7c;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDismissible extends _36c2.VMManagedBox<_be7c.Dismissible> {
  VMManagedDismissible(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['background'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.background,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryBackground'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.secondaryBackground,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['direction'] = _be7c.DismissDirection.values.indexWhere((x) {
      return x == vmObject.direction;
    });
    table['resizeDuration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.resizeDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dismissThresholds'] = _36c2.maybeBoxObject<_fac9.Map>(
        object: vmObject.dismissThresholds,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['movementDuration'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.movementDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisEndOffset'] = vmObject.crossAxisEndOffset;
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == vmObject.dragStartBehavior;
    });
    table['behavior'] = _bf98.HitTestBehavior.values.indexWhere((x) {
      return x == vmObject.behavior;
    });
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
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

  final _be7c.Dismissible vmObject;
}

class RTManagedDismissible extends _be7c.Dismissible
    implements _36c2.Box<_be7c.Dismissible> {
  RTManagedDismissible(
      {_e2dc.Widget? background,
      required _bf98.HitTestBehavior behavior,
      _7de1.Future<_fac9.bool?> Function(_be7c.DismissDirection direction)?
          confirmDismiss,
      required _fac9.double crossAxisEndOffset,
      required _be7c.DismissDirection direction,
      required _fac9.Map<_be7c.DismissDirection, _fac9.double>
          dismissThresholds,
      required _02d2.DragStartBehavior dragStartBehavior,
      required _fac9.Duration movementDuration,
      void Function(_be7c.DismissDirection direction)? onDismissed,
      void Function()? onResize,
      void Function(_be7c.DismissUpdateDetails details)? onUpdate,
      _fac9.Duration? resizeDuration,
      _e2dc.Widget? secondaryBackground,
      required _e2dc.Widget child,
      required _ab4a.Key key,
      required this.table,
      required this.hydroState})
      : super(
            background: background,
            behavior: behavior,
            confirmDismiss: confirmDismiss,
            crossAxisEndOffset: crossAxisEndOffset,
            direction: direction,
            dismissThresholds: dismissThresholds,
            dragStartBehavior: dragStartBehavior,
            movementDuration: movementDuration,
            onDismissed: onDismissed,
            onResize: onResize,
            onUpdate: onUpdate,
            resizeDuration: resizeDuration,
            secondaryBackground: secondaryBackground,
            child: child,
            key: key) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['background'] = _36c2.maybeBoxObject(
        object: this.background,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondaryBackground'] = _36c2.maybeBoxObject(
        object: this.secondaryBackground,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['direction'] = _be7c.DismissDirection.values.indexWhere((x) {
      return x == this.direction;
    });
    table['resizeDuration'] = _36c2.maybeBoxObject(
        object: this.resizeDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dismissThresholds'] = _36c2.maybeBoxObject(
        object: this.dismissThresholds,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['movementDuration'] = _36c2.maybeBoxObject(
        object: this.movementDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisEndOffset'] = _36c2.maybeBoxObject(
        object: this.crossAxisEndOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['dragStartBehavior'] = _02d2.DragStartBehavior.values.indexWhere((x) {
      return x == this.dragStartBehavior;
    });
    table['behavior'] = _bf98.HitTestBehavior.values.indexWhere((x) {
      return x == this.behavior;
    });
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

  _be7c.Dismissible unwrap() => this;
  _be7c.Dismissible get vmObject => this;
  @_fac9.override
  _e2dc.State<_be7c.Dismissible> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_be7c.Dismissible>,
            _be7c.Dismissible>(
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

void loadDismissible(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['dismissible'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedconfirmDismiss = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['confirmDismiss']
        : null;

    _36c2.Closure? unpackedonDismissed = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onDismissed']
        : null;
    _36c2.Closure? unpackedonResize = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onResize']
        : null;
    _36c2.Closure? unpackedonUpdate = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onUpdate']
        : null;

    return [
      RTManagedDismissible(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          background: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['background'] : null,
              parentState: hydroState),
          behavior: _36c2.maybeUnBoxEnum(
              values: _bf98.HitTestBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['behavior']
                  : null),
          confirmDismiss: unpackedconfirmDismiss != null
              ? (direction) => _36c2.maybeUnBoxAndBuildArgument<
                      _7de1.Future<_fac9.bool?>, _fac9.bool?>(
                  unpackedconfirmDismiss.dispatch(
                    [luaCallerArguments[0], direction],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          crossAxisEndOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisEndOffset']
              : null?.toDouble(),
          direction: _36c2.maybeUnBoxEnum(
              values: _be7c.DismissDirection.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['direction']
                  : null),
          dismissThresholds: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_be7c.DismissDirection, _fac9.double>, _be7c.DismissDirection>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['dismissThresholds'] : null,
              parentState: hydroState),
          dragStartBehavior: _36c2.maybeUnBoxEnum(
              values: _02d2.DragStartBehavior.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dragStartBehavior']
                  : null),
          movementDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['movementDuration'] : null,
              parentState: hydroState),
          onDismissed: unpackedonDismissed != null
              ? (direction) => unpackedonDismissed.dispatch(
                    [luaCallerArguments[0], direction],
                    parentState: hydroState,
                  )
              : null,
          onResize: unpackedonResize != null
              ? () => unpackedonResize.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )
              : null,
          onUpdate: unpackedonUpdate != null
              ? (details) => unpackedonUpdate.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          resizeDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['resizeDuration'] : null, parentState: hydroState),
          secondaryBackground: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondaryBackground'] : null, parentState: hydroState),
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_be7c.Dismissible>(boxer: (
      {required _be7c.Dismissible vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDismissible(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
