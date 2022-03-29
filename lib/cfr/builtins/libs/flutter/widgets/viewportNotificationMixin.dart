import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_notification.dart' as _593c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedViewportNotificationMixin
    extends _36c2.VMManagedBox<_593c.ViewportNotificationMixin> {
  VMManagedViewportNotificationMixin(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['visitAncestor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.visitAncestor(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['debugFillDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_fac9.String>,
          _fac9.String>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _593c.ViewportNotificationMixin vmObject;
}

void loadViewportNotificationMixin(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_593c.ViewportNotificationMixin>(boxer: (
      {required _593c.ViewportNotificationMixin vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedViewportNotificationMixin(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
