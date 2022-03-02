import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/widgets/animated_cross_fade.dart' as _b11c;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAnimatedCrossFade
    extends _36c2.VMManagedBox<_b11c.AnimatedCrossFade> {
  VMManagedAnimatedCrossFade(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['firstChild'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.firstChild,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondChild'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.secondChild,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossFadeState'] = _b11c.CrossFadeState.values.indexWhere((x) {
      return x == vmObject.crossFadeState;
    });
    table['duration'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['reverseDuration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.reverseDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['firstCurve'] = _36c2.maybeBoxObject<_8c47.Curve>(
        object: vmObject.firstCurve,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondCurve'] = _36c2.maybeBoxObject<_8c47.Curve>(
        object: vmObject.secondCurve,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sizeCurve'] = _36c2.maybeBoxObject<_8c47.Curve>(
        object: vmObject.sizeCurve,
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

  final _b11c.AnimatedCrossFade vmObject;
}

class RTManagedAnimatedCrossFade extends _b11c.AnimatedCrossFade
    implements _36c2.Box<_b11c.AnimatedCrossFade> {
  RTManagedAnimatedCrossFade(
      {required _ca85.AlignmentGeometry alignment,
      required _8c47.Curve firstCurve,
      _ab4a.Key? key,
      required _e2dc.Widget Function(
              _e2dc.Widget topChild,
              _ab4a.Key topChildKey,
              _e2dc.Widget bottomChild,
              _ab4a.Key bottomChildKey)
          layoutBuilder,
      _fac9.Duration? reverseDuration,
      required _8c47.Curve secondCurve,
      required _8c47.Curve sizeCurve,
      required _b11c.CrossFadeState crossFadeState,
      required _fac9.Duration duration,
      required _e2dc.Widget firstChild,
      required _e2dc.Widget secondChild,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            firstCurve: firstCurve,
            key: key,
            layoutBuilder: layoutBuilder,
            reverseDuration: reverseDuration,
            secondCurve: secondCurve,
            sizeCurve: sizeCurve,
            crossFadeState: crossFadeState,
            duration: duration,
            firstChild: firstChild,
            secondChild: secondChild) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['firstChild'] = _36c2.maybeBoxObject(
        object: this.firstChild,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondChild'] = _36c2.maybeBoxObject(
        object: this.secondChild,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossFadeState'] = _b11c.CrossFadeState.values.indexWhere((x) {
      return x == this.crossFadeState;
    });
    table['duration'] = _36c2.maybeBoxObject(
        object: this.duration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['reverseDuration'] = _36c2.maybeBoxObject(
        object: this.reverseDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['firstCurve'] = _36c2.maybeBoxObject(
        object: this.firstCurve,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['secondCurve'] = _36c2.maybeBoxObject(
        object: this.secondCurve,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['sizeCurve'] = _36c2.maybeBoxObject(
        object: this.sizeCurve,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject(
        object: this.alignment,
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

  _b11c.AnimatedCrossFade unwrap() => this;
  _b11c.AnimatedCrossFade get vmObject => this;
  @_fac9.override
  _e2dc.State<_b11c.AnimatedCrossFade> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_b11c.AnimatedCrossFade>, _b11c.AnimatedCrossFade>(
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

void loadAnimatedCrossFade(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['animatedCrossFade'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure unpackedlayoutBuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['layoutBuilder']
        : null;

    return [
      RTManagedAnimatedCrossFade(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['alignment'] : null,
              parentState: hydroState),
          firstCurve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['firstCurve']
                  : null,
              parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) =>
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedlayoutBuilder.dispatch(
                    [
                      luaCallerArguments[0],
                      topChild,
                      topChildKey,
                      bottomChild,
                      bottomChildKey
                    ],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState),
          reverseDuration:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['reverseDuration'] : null,
                  parentState: hydroState),
          secondCurve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondCurve'] : null, parentState: hydroState),
          sizeCurve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['sizeCurve'] : null, parentState: hydroState),
          crossFadeState: _36c2.maybeUnBoxEnum(values: _b11c.CrossFadeState.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['crossFadeState'] : null),
          duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['duration'] : null, parentState: hydroState),
          firstChild: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['firstChild'] : null, parentState: hydroState),
          secondChild: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['secondChild'] : null, parentState: hydroState))
    ];
  });
  table['animatedCrossFadeDefaultLayoutBuilder'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_e2dc.Widget>(
          object: _b11c.AnimatedCrossFade.defaultLayoutBuilder(
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  luaCallerArguments[3],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key, _fac9.dynamic>(
                  luaCallerArguments[4],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_b11c.AnimatedCrossFade>(boxer: (
      {required _b11c.AnimatedCrossFade vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAnimatedCrossFade(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
