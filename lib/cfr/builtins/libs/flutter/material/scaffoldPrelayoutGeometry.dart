import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/scaffold.dart' as _ece7;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScaffoldPrelayoutGeometry
    extends _36c2.VMManagedBox<_ece7.ScaffoldPrelayoutGeometry> {
  VMManagedScaffoldPrelayoutGeometry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['floatingActionButtonSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.floatingActionButtonSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomSheetSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.bottomSheetSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentBottom'] = vmObject.contentBottom;
    table['contentTop'] = vmObject.contentTop;
    table['minInsets'] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(
        object: vmObject.minInsets,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minViewPadding'] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(
        object: vmObject.minViewPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scaffoldSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.scaffoldSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['snackBarSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.snackBarSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialBannerSize'] = _36c2.maybeBoxObject<_a643.Size>(
        object: vmObject.materialBannerSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _ece7.ScaffoldPrelayoutGeometry vmObject;
}

class RTManagedScaffoldPrelayoutGeometry extends _ece7.ScaffoldPrelayoutGeometry
    implements _36c2.Box<_ece7.ScaffoldPrelayoutGeometry> {
  RTManagedScaffoldPrelayoutGeometry(
      {required _a643.Size bottomSheetSize,
      required _fac9.double contentBottom,
      required _fac9.double contentTop,
      required _a643.Size floatingActionButtonSize,
      required _a643.Size materialBannerSize,
      required _96d1.EdgeInsets minInsets,
      required _96d1.EdgeInsets minViewPadding,
      required _a643.Size scaffoldSize,
      required _a643.Size snackBarSize,
      required _a643.TextDirection textDirection,
      required this.table,
      required this.hydroState})
      : super(
            bottomSheetSize: bottomSheetSize,
            contentBottom: contentBottom,
            contentTop: contentTop,
            floatingActionButtonSize: floatingActionButtonSize,
            materialBannerSize: materialBannerSize,
            minInsets: minInsets,
            minViewPadding: minViewPadding,
            scaffoldSize: scaffoldSize,
            snackBarSize: snackBarSize,
            textDirection: textDirection) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['floatingActionButtonSize'] = _36c2.maybeBoxObject(
        object: this.floatingActionButtonSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bottomSheetSize'] = _36c2.maybeBoxObject(
        object: this.bottomSheetSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentBottom'] = _36c2.maybeBoxObject(
        object: this.contentBottom,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['contentTop'] = _36c2.maybeBoxObject(
        object: this.contentTop,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minInsets'] = _36c2.maybeBoxObject(
        object: this.minInsets,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minViewPadding'] = _36c2.maybeBoxObject(
        object: this.minViewPadding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scaffoldSize'] = _36c2.maybeBoxObject(
        object: this.scaffoldSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['snackBarSize'] = _36c2.maybeBoxObject(
        object: this.snackBarSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['materialBannerSize'] = _36c2.maybeBoxObject(
        object: this.materialBannerSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _ece7.ScaffoldPrelayoutGeometry unwrap() => this;
  _ece7.ScaffoldPrelayoutGeometry get vmObject => this;
}

void loadScaffoldPrelayoutGeometry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scaffoldPrelayoutGeometry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScaffoldPrelayoutGeometry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          bottomSheetSize:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bottomSheetSize'] : null,
                  parentState: hydroState),
          contentBottom: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['contentBottom']
              : null?.toDouble(),
          contentTop: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['contentTop']
              : null?.toDouble(),
          floatingActionButtonSize:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['floatingActionButtonSize']
                      : null,
                  parentState: hydroState),
          materialBannerSize:
              _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['materialBannerSize'] : null,
                  parentState: hydroState),
          minInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minInsets'] : null, parentState: hydroState),
          minViewPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minViewPadding'] : null, parentState: hydroState),
          scaffoldSize: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldSize'] : null, parentState: hydroState),
          snackBarSize: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['snackBarSize'] : null, parentState: hydroState),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null))
    ];
  });
  _36c2.registerBoxer<_ece7.ScaffoldPrelayoutGeometry>(boxer: (
      {required _ece7.ScaffoldPrelayoutGeometry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScaffoldPrelayoutGeometry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
