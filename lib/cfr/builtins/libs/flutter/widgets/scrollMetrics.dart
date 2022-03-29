import 'dart:core' as _fac9;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollMetrics extends _36c2.VMManagedBox<_96ae.ScrollMetrics> {
  VMManagedScrollMetrics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96ae.ScrollMetrics>(
            object: vmObject.copyWith(
                axisDirection: _36c2.maybeUnBoxEnum(
                    values: _487f.AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['axisDirection']
                        : null),
                maxScrollExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxScrollExtent']
                    : null?.toDouble(),
                minScrollExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minScrollExtent']
                    : null?.toDouble(),
                pixels: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['pixels']
                    : null?.toDouble(),
                viewportDimension: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['viewportDimension']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMinScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minScrollExtent,
      ];
    });
    table['getMaxScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maxScrollExtent,
      ];
    });
    table['getHasContentDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasContentDimensions,
      ];
    });
    table['getPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pixels,
      ];
    });
    table['getHasPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasPixels,
      ];
    });
    table['getViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.viewportDimension,
      ];
    });
    table['getHasViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasViewportDimension,
      ];
    });
    table['getAxisDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.AxisDirection.values.indexWhere((x) {
          return x == vmObject.axisDirection;
        }),
      ];
    });
    table['getAxis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.Axis.values.indexWhere((x) {
          return x == vmObject.axis;
        }),
      ];
    });
    table['getOutOfRange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.outOfRange,
      ];
    });
    table['getAtEdge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.atEdge,
      ];
    });
    table['getExtentBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.extentBefore,
      ];
    });
    table['getExtentInside'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.extentInside,
      ];
    });
    table['getExtentAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.extentAfter,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _96ae.ScrollMetrics vmObject;
}

void loadScrollMetrics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_96ae.ScrollMetrics>(boxer: (
      {required _96ae.ScrollMetrics vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollMetrics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
