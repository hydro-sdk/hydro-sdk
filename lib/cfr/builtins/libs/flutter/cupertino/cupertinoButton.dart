import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/button.dart' as _1576;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoButton
    extends _36c2.VMManagedBox<_1576.CupertinoButton> {
  VMManagedCupertinoButton(
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
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minSize'] = vmObject.minSize;
    table['pressedOpacity'] = vmObject.pressedOpacity;
    table['borderRadius'] = _36c2.maybeBoxObject<_9d8a.BorderRadius?>(
        object: vmObject.borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(
        object: vmObject.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.enabled,
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  final _1576.CupertinoButton vmObject;
}

class RTManagedCupertinoButton extends _1576.CupertinoButton
    implements _36c2.Box<_1576.CupertinoButton> {
  RTManagedCupertinoButton(
      {required _ca85.AlignmentGeometry alignment,
      _9d8a.BorderRadius? borderRadius,
      _a643.Color? color,
      required _a643.Color disabledColor,
      _ab4a.Key? key,
      _fac9.double? minSize,
      _96d1.EdgeInsetsGeometry? padding,
      _fac9.double? pressedOpacity,
      required _e2dc.Widget child,
      void Function()? onPressed,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            borderRadius: borderRadius,
            color: color,
            disabledColor: disabledColor,
            key: key,
            minSize: minSize,
            padding: padding,
            pressedOpacity: pressedOpacity,
            child: child,
            onPressed: onPressed) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['disabledColor'] = _36c2.maybeBoxObject(
        object: this.disabledColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minSize'] = _36c2.maybeBoxObject(
        object: this.minSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pressedOpacity'] = _36c2.maybeBoxObject(
        object: this.pressedOpacity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['borderRadius'] = _36c2.maybeBoxObject(
        object: this.borderRadius,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject(
        object: this.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.enabled];
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
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

  _1576.CupertinoButton unwrap() => this;
  _1576.CupertinoButton get vmObject => this;
  @_fac9.override
  _fac9.bool get enabled {
    _36c2.Closure closure = table["getEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.State<_1576.CupertinoButton> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_1576.CupertinoButton>,
            _1576.CupertinoButton>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadCupertinoButton(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoButton'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonPressed = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onPressed']
        : null;
    return [
      RTManagedCupertinoButton(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['alignment']
                  : null,
              parentState: hydroState),
          borderRadius:
              _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['borderRadius']
                      : null,
                  parentState: hydroState),
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
              parentState: hydroState),
          disabledColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disabledColor'] : null, parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          minSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minSize'] : null?.toDouble(),
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          pressedOpacity: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pressedOpacity'] : null?.toDouble(),
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState),
          onPressed: unpackedonPressed != null
              ? () => unpackedonPressed.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  _36c2.registerBoxer<_1576.CupertinoButton>(boxer: (
      {required _1576.CupertinoButton vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoButton(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
