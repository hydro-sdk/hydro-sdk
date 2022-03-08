import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/flex.dart' as _7374;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/widgets/basic.dart' as _3960;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRow extends _36c2.VMManagedBox<_3960.Row> {
  VMManagedRow(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['direction'] = _487f.Axis.values.indexWhere((x) {
      return x == vmObject.direction;
    });
    table['mainAxisAlignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == vmObject.mainAxisAlignment;
    });
    table['mainAxisSize'] = _7374.MainAxisSize.values.indexWhere((x) {
      return x == vmObject.mainAxisSize;
    });
    table['crossAxisAlignment'] =
        _7374.CrossAxisAlignment.values.indexWhere((x) {
      return x == vmObject.crossAxisAlignment;
    });
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['verticalDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == vmObject.verticalDirection;
    });
    table['textBaseline'] = _a643.TextBaseline.values.indexWhere((x) {
      return x == vmObject.textBaseline;
    });
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['children'] = _36c2.maybeBoxObject<_fac9.List<_e2dc.Widget>>(
        object: vmObject.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7374.RenderFlex>(
            object: vmObject.createRenderObject(_36c2
                .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['updateRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_7374.RenderFlex, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
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
        _36c2.maybeBoxObject<_e2dc.MultiChildRenderObjectElement>(
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

  final _3960.Row vmObject;
}

class RTManagedRow extends _3960.Row implements _36c2.Box<_3960.Row> {
  RTManagedRow(
      {required _fac9.List<_e2dc.Widget> children,
      required _7374.CrossAxisAlignment crossAxisAlignment,
      _ab4a.Key? key,
      required _7374.MainAxisAlignment mainAxisAlignment,
      required _7374.MainAxisSize mainAxisSize,
      _a643.TextBaseline? textBaseline,
      _a643.TextDirection? textDirection,
      required _487f.VerticalDirection verticalDirection,
      required this.table,
      required this.hydroState})
      : super(
            children: children,
            crossAxisAlignment: crossAxisAlignment,
            key: key,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            textBaseline: textBaseline,
            textDirection: textDirection,
            verticalDirection: verticalDirection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['direction'] = _487f.Axis.values.indexWhere((x) {
      return x == direction;
    });
    table['mainAxisAlignment'] = _7374.MainAxisAlignment.values.indexWhere((x) {
      return x == this.mainAxisAlignment;
    });
    table['mainAxisSize'] = _7374.MainAxisSize.values.indexWhere((x) {
      return x == this.mainAxisSize;
    });
    table['crossAxisAlignment'] =
        _7374.CrossAxisAlignment.values.indexWhere((x) {
      return x == this.crossAxisAlignment;
    });
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['verticalDirection'] = _487f.VerticalDirection.values.indexWhere((x) {
      return x == this.verticalDirection;
    });
    table['textBaseline'] = _a643.TextBaseline.values.indexWhere((x) {
      return x == this.textBaseline;
    });
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == clipBehavior;
    });
    table['children'] = _36c2.maybeBoxObject(
        object: this.children,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getEffectiveTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.TextDirection.values.indexWhere((x) {
          return x ==
              super.getEffectiveTextDirection(_36c2.maybeUnBoxAndBuildArgument<
                      _e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        })
      ];
    });
    table['_dart_createRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createRenderObject(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_updateRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_7374.RenderFlex, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
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
    table['_dart_didUnmountRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUnmountRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
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

  _3960.Row unwrap() => this;
  _3960.Row get vmObject => this;
  @_fac9.override
  _a643.TextDirection? getEffectiveTextDirection(context) {
    _36c2.Closure closure = table["getEffectiveTextDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _7374.RenderFlex createRenderObject(context) {
    _36c2.Closure closure = table["createRenderObject"];
    return _36c2.maybeUnBoxAndBuildArgument<_7374.RenderFlex, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void updateRenderObject(context, renderObject) {
    _36c2.Closure closure = table["updateRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.MultiChildRenderObjectElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.MultiChildRenderObjectElement,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void didUnmountRenderObject(renderObject) {
    _36c2.Closure closure = table["didUnmountRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
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

void loadRow(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['row'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedRow(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['children']
                  : null,
              parentState: hydroState),
          crossAxisAlignment: _36c2.maybeUnBoxEnum(
              values: _7374.CrossAxisAlignment.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['crossAxisAlignment']
                  : null),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null,
              parentState: hydroState),
          mainAxisAlignment: _36c2.maybeUnBoxEnum(
              values: _7374.MainAxisAlignment.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['mainAxisAlignment']
                  : null),
          mainAxisSize: _36c2.maybeUnBoxEnum(
              values: _7374.MainAxisSize.values,
              boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisSize'] : null),
          textBaseline: _36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textBaseline'] : null),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          verticalDirection: _36c2.maybeUnBoxEnum(values: _487f.VerticalDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['verticalDirection'] : null))
    ];
  });
  _36c2.registerBoxer<_3960.Row>(boxer: (
      {required _3960.Row vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRow(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
