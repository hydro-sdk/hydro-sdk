import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/tab_indicator.dart' as _abb2;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedUnderlineTabIndicator
    extends _36c2.VMManagedBox<_abb2.UnderlineTabIndicator> {
  VMManagedUnderlineTabIndicator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['borderSide'] = _36c2.maybeBoxObject<_6be9.BorderSide>(
        object: vmObject.borderSide,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['insets'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
        object: vmObject.insets,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lerpFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lerpFrom(
          _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_13a5.Decoration?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['lerpTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lerpTo(
          _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_13a5.Decoration?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['createBoxPainter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedonChanged = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_13a5.BoxPainter>(
            object: vmObject.createBoxPainter(unpackedonChanged != null
                ? () => unpackedonChanged.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )
                : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getClipPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Path>(
            object: vmObject.getClipPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments[2])),
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
    table['debugAssertIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertIsValid(),
      ];
    });
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hitTest(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            textDirection: _36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['textDirection']
                    : null)),
      ];
    });
    table['getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.padding;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getIsComplex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isComplex,
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _abb2.UnderlineTabIndicator vmObject;
}

class RTManagedUnderlineTabIndicator extends _abb2.UnderlineTabIndicator
    implements _36c2.Box<_abb2.UnderlineTabIndicator> {
  RTManagedUnderlineTabIndicator(
      {required _6be9.BorderSide borderSide,
      required _96d1.EdgeInsetsGeometry insets,
      required this.table,
      required this.hydroState})
      : super(borderSide: borderSide, insets: insets) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['borderSide'] = _36c2.maybeBoxObject(
        object: this.borderSide,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['insets'] = _36c2.maybeBoxObject(
        object: this.insets, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_lerpFrom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.lerpFrom(
                _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_lerpTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.lerpTo(
                _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createBoxPainter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedonChanged = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.createBoxPainter(unpackedonChanged != null
                ? () => unpackedonChanged.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )
                : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getClipPath'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getClipPath(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments[2])),
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
    table['_dart_debugAssertIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugAssertIsValid(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hitTest(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(
                    values: _a643.TextDirection.values,
                    boxedEnum: luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['textDirection']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.padding];
    });
    table['_dart_getIsComplex'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isComplex];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _abb2.UnderlineTabIndicator unwrap() => this;
  _abb2.UnderlineTabIndicator get vmObject => this;
  @_fac9.override
  _13a5.Decoration? lerpFrom(a, t) {
    _36c2.Closure closure = table["lerpFrom"];
    return _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _13a5.Decoration? lerpTo(b, t) {
    _36c2.Closure closure = table["lerpTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _13a5.BoxPainter createBoxPainter([void Function()? onChanged]) {
    _36c2.Closure closure = table["createBoxPainter"];
    return _36c2.maybeUnBoxAndBuildArgument<_13a5.BoxPainter, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Path getClipPath(rect, textDirection) {
    _36c2.Closure closure = table["getClipPath"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool debugAssertIsValid() {
    _36c2.Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hitTest(size, position, {_a643.TextDirection? textDirection}) {
    _36c2.Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry? get padding {
    _36c2.Closure closure = table["getPadding"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isComplex {
    _36c2.Closure closure = table["getIsComplex"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
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
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadUnderlineTabIndicator(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['underlineTabIndicator'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedUnderlineTabIndicator(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          borderSide:
              _36c2.maybeUnBoxAndBuildArgument<_6be9.BorderSide, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['borderSide']
                      : null,
                  parentState: hydroState),
          insets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry,
                  _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['insets']
                  : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_abb2.UnderlineTabIndicator>(boxer: (
      {required _abb2.UnderlineTabIndicator vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedUnderlineTabIndicator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
