import 'dart:core' as _fac9;

import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_grid.dart' as _a3c0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverGridGeometry
    extends _36c2.VMManagedBox<_a3c0.SliverGridGeometry> {
  VMManagedSliverGridGeometry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scrollOffset'] = vmObject.scrollOffset;
    table['crossAxisOffset'] = vmObject.crossAxisOffset;
    table['mainAxisExtent'] = vmObject.mainAxisExtent;
    table['crossAxisExtent'] = vmObject.crossAxisExtent;
    table['getTrailingScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.trailingScrollOffset,
      ];
    });
    table['getBoxConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_be2e.BoxConstraints>(
            object: vmObject.getBoxConstraints(_36c2.maybeUnBoxAndBuildArgument<
                _021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a3c0.SliverGridGeometry vmObject;
}

class RTManagedSliverGridGeometry extends _a3c0.SliverGridGeometry
    implements _36c2.Box<_a3c0.SliverGridGeometry> {
  RTManagedSliverGridGeometry(
      {required _fac9.double crossAxisExtent,
      required _fac9.double crossAxisOffset,
      required _fac9.double mainAxisExtent,
      required _fac9.double scrollOffset,
      required this.table,
      required this.hydroState})
      : super(
            crossAxisExtent: crossAxisExtent,
            crossAxisOffset: crossAxisOffset,
            mainAxisExtent: mainAxisExtent,
            scrollOffset: scrollOffset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['scrollOffset'] = _36c2.maybeBoxObject(
        object: this.scrollOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisOffset'] = _36c2.maybeBoxObject(
        object: this.crossAxisOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mainAxisExtent'] = _36c2.maybeBoxObject(
        object: this.mainAxisExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['crossAxisExtent'] = _36c2.maybeBoxObject(
        object: this.crossAxisExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getTrailingScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.trailingScrollOffset];
    });
    table['_dart_getBoxConstraints'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getBoxConstraints(_36c2.maybeUnBoxAndBuildArgument<
                _021d.SliverConstraints,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _a3c0.SliverGridGeometry unwrap() => this;
  _a3c0.SliverGridGeometry get vmObject => this;
  @_fac9.override
  _fac9.double get trailingScrollOffset {
    _36c2.Closure closure = table["getTrailingScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _be2e.BoxConstraints getBoxConstraints(constraints) {
    _36c2.Closure closure = table["getBoxConstraints"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverGridGeometry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverGridGeometry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGridGeometry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          crossAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisExtent']
              : null?.toDouble(),
          crossAxisOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['crossAxisOffset']
              : null?.toDouble(),
          mainAxisExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mainAxisExtent']
              : null?.toDouble(),
          scrollOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollOffset']
              : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_a3c0.SliverGridGeometry>(boxer: (
      {required _a3c0.SliverGridGeometry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverGridGeometry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
