import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextTreeRenderer
    extends _36c2.VMManagedBox<_eaf3.TextTreeRenderer> {
  VMManagedTextTreeRenderer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['render'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.render(
            _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                    _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['parentConfiguration']
                    : null,
                parentState: hydroState),
            prefixLineOne: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['prefixOtherLines']
                : null),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _eaf3.TextTreeRenderer vmObject;
}

class RTManagedTextTreeRenderer extends _eaf3.TextTreeRenderer
    implements _36c2.Box<_eaf3.TextTreeRenderer> {
  RTManagedTextTreeRenderer(
      {required _fac9.int maxDescendentsTruncatableNode,
      required _eaf3.DiagnosticLevel minLevel,
      required _fac9.int wrapWidth,
      required _fac9.int wrapWidthProperties,
      required this.table,
      required this.hydroState})
      : super(
            maxDescendentsTruncatableNode: maxDescendentsTruncatableNode,
            minLevel: minLevel,
            wrapWidth: wrapWidth,
            wrapWidthProperties: wrapWidthProperties) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_render'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.render(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
                parentConfiguration:
                    _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['parentConfiguration']
                            : null,
                        parentState: hydroState),
                prefixLineOne: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['prefixLineOne'] : null,
                    parentState: hydroState),
                prefixOtherLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['prefixOtherLines'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _eaf3.TextTreeRenderer unwrap() => this;
  _eaf3.TextTreeRenderer get vmObject => this;
  @_fac9.override
  _fac9.String render(node,
      {_eaf3.TextTreeConfiguration? parentConfiguration,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["render"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadTextTreeRenderer(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textTreeRenderer'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextTreeRenderer(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          maxDescendentsTruncatableNode: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxDescendentsTruncatableNode']
              : null,
          minLevel: _36c2.maybeUnBoxEnum(
              values: _eaf3.DiagnosticLevel.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['minLevel']
                  : null),
          wrapWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['wrapWidth']
              : null,
          wrapWidthProperties: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['wrapWidthProperties']
              : null)
    ];
  });
  _36c2.registerBoxer<_eaf3.TextTreeRenderer>(boxer: (
      {required _eaf3.TextTreeRenderer vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextTreeRenderer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
