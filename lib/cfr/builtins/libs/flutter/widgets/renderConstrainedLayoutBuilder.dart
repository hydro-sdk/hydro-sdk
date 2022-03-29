import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/widgets/layout_builder.dart' as _d69f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderConstrainedLayoutBuilder extends _36c2.VMManagedBox<
    _d69f.RenderConstrainedLayoutBuilder<_9742.Constraints,
        _9742.RenderObject>> {
  VMManagedRenderConstrainedLayoutBuilder(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['updateCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedvalue = luaCallerArguments[1];
      vmObject.updateCallback(unpackedvalue != null
          ? (constraints) => unpackedvalue.dispatch(
                [luaCallerArguments[0], constraints],
                parentState: hydroState,
              )
          : null);
      return [];
    });
    table['markNeedsBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsBuild();
      return [];
    });
    table['rebuildIfNecessary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rebuildIfNecessary();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _d69f
          .RenderConstrainedLayoutBuilder<_9742.Constraints, _9742.RenderObject>
      vmObject;
}

void loadRenderConstrainedLayoutBuilder(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_d69f.RenderConstrainedLayoutBuilder>(boxer: (
      {required _d69f.RenderConstrainedLayoutBuilder vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedRenderConstrainedLayoutBuilder(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
