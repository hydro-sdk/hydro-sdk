import 'dart:core' as _fac9;

import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFixedScrollMetrics
    extends _36c2.VMManagedBox<_96ae.FixedScrollMetrics> {
  VMManagedFixedScrollMetrics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['axisDirection'] = _487f.AxisDirection.values.indexWhere((x) {
      return x == vmObject.axisDirection;
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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
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

  final _96ae.FixedScrollMetrics vmObject;
}

class RTManagedFixedScrollMetrics extends _96ae.FixedScrollMetrics
    implements _36c2.Box<_96ae.FixedScrollMetrics> {
  RTManagedFixedScrollMetrics(
      {required _487f.AxisDirection axisDirection,
      _fac9.double? maxScrollExtent,
      _fac9.double? minScrollExtent,
      _fac9.double? pixels,
      _fac9.double? viewportDimension,
      required this.table,
      required this.hydroState})
      : super(
            axisDirection: axisDirection,
            maxScrollExtent: maxScrollExtent,
            minScrollExtent: minScrollExtent,
            pixels: pixels,
            viewportDimension: viewportDimension) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['axisDirection'] = _487f.AxisDirection.values.indexWhere((x) {
      return x == this.axisDirection;
    });
    table['_dart_getMinScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minScrollExtent];
    });
    table['_dart_getMaxScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maxScrollExtent];
    });
    table['_dart_getHasContentDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasContentDimensions];
    });
    table['_dart_getPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pixels];
    });
    table['_dart_getHasPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasPixels];
    });
    table['_dart_getViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.viewportDimension];
    });
    table['_dart_getHasViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasViewportDimension];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                axisDirection: _36c2.maybeUnBoxEnum(
                    values: _487f.AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['axisDirection']
                        : null),
                maxScrollExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxScrollExtent'] : null,
                    parentState: hydroState),
                minScrollExtent:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['minScrollExtent']
                            : null,
                        parentState: hydroState),
                pixels: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pixels'] : null,
                    parentState: hydroState),
                viewportDimension: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewportDimension'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAxisDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [axisDirection];
    });
    table['_dart_getAxis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.axis];
    });
    table['_dart_getOutOfRange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.outOfRange];
    });
    table['_dart_getAtEdge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.atEdge];
    });
    table['_dart_getExtentBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extentBefore];
    });
    table['_dart_getExtentInside'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extentInside];
    });
    table['_dart_getExtentAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extentAfter];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _96ae.FixedScrollMetrics unwrap() => this;
  _96ae.FixedScrollMetrics get vmObject => this;
  @_fac9.override
  _fac9.double get minScrollExtent {
    _36c2.Closure closure = table["getMinScrollExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get maxScrollExtent {
    _36c2.Closure closure = table["getMaxScrollExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get hasContentDimensions {
    _36c2.Closure closure = table["getHasContentDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get pixels {
    _36c2.Closure closure = table["getPixels"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get hasPixels {
    _36c2.Closure closure = table["getHasPixels"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get viewportDimension {
    _36c2.Closure closure = table["getViewportDimension"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get hasViewportDimension {
    _36c2.Closure closure = table["getHasViewportDimension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _96ae.ScrollMetrics copyWith(
      {_487f.AxisDirection? axisDirection,
      _fac9.double? maxScrollExtent,
      _fac9.double? minScrollExtent,
      _fac9.double? pixels,
      _fac9.double? viewportDimension}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _487f.AxisDirection get axisDirection {
    _36c2.Closure closure = table["getAxisDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _487f.AxisDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _487f.Axis get axis {
    _36c2.Closure closure = table["getAxis"];
    return _36c2.maybeUnBoxEnum(
        values: _487f.Axis.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.bool get outOfRange {
    _36c2.Closure closure = table["getOutOfRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get atEdge {
    _36c2.Closure closure = table["getAtEdge"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get extentBefore {
    _36c2.Closure closure = table["getExtentBefore"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get extentInside {
    _36c2.Closure closure = table["getExtentInside"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get extentAfter {
    _36c2.Closure closure = table["getExtentAfter"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }
}

void loadFixedScrollMetrics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['fixedScrollMetrics'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedFixedScrollMetrics(
          table: luaCallerArguments[0],
          hydroState: hydroState,
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
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_96ae.FixedScrollMetrics>(boxer: (
      {required _96ae.FixedScrollMetrics vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFixedScrollMetrics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
