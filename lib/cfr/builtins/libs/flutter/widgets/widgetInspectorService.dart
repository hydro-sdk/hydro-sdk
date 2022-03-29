import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/widgets/widget_inspector.dart' as _8c83;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWidgetInspectorService
    extends _36c2.VMManagedBox<_8c83.WidgetInspectorService> {
  VMManagedWidgetInspectorService(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['selection'] = _36c2.maybeBoxObject<_8c83.InspectorSelection>(
        object: vmObject.selection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isStructuredErrorsEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isStructuredErrorsEnabled(),
      ];
    });
    table['initServiceExtensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedregisterServiceExtensionCallback =
          luaCallerArguments[1];
      vmObject.initServiceExtensions(({required callback, required name}) =>
          unpackedregisterServiceExtensionCallback.dispatch(
            [
              luaCallerArguments[0],
              _36c2.HydroTable.fromMap({"callback": callback, "name": name}),
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['getChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getChildren(luaCallerArguments[1], luaCallerArguments[2]),
      ];
    });
    table['getChildrenSummaryTree'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getChildrenSummaryTree(
            luaCallerArguments[1], luaCallerArguments[2]),
      ];
    });
    table['getChildrenDetailsSubtree'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getChildrenDetailsSubtree(
            luaCallerArguments[1], luaCallerArguments[2]),
      ];
    });
    table['getRootWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getRootWidget(luaCallerArguments[1]),
      ];
    });
    table['getRootWidgetSummaryTree'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getRootWidgetSummaryTree(luaCallerArguments[1]),
      ];
    });
    table['getDetailsSubtree'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getDetailsSubtree(luaCallerArguments[1], luaCallerArguments[2],
            subtreeDepth: luaCallerArguments.length >= 4
                ? luaCallerArguments[3]['subtreeDepth']
                : null),
      ];
    });
    table['getSelectedSummaryWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.getSelectedSummaryWidget(
            luaCallerArguments[1], luaCallerArguments[2]),
      ];
    });
    table['isWidgetCreationTracked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isWidgetCreationTracked(),
      ];
    });
    table['performReassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performReassemble();
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c83.WidgetInspectorService vmObject;
}

void loadWidgetInspectorService(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['widgetInspectorServiceInstance'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_8c83.WidgetInspectorService>(
          object: _8c83.WidgetInspectorService.instance,
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['widgetInspectorServiceInstance='] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _8c83.WidgetInspectorService.instance = (_36c2.maybeUnBoxAndBuildArgument<
        _8c83.WidgetInspectorService,
        _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
    return [];
  });
  _36c2.registerBoxer<_8c83.WidgetInspectorService>(boxer: (
      {required _8c83.WidgetInspectorService vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedWidgetInspectorService(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
