import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/material/ink_well.dart' as _cd32;
import 'package:flutter/src/material/material.dart' as _e5b9;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/rendering/box.dart' as _be2e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInteractiveInkFeatureFactory
    extends _36c2.VMManagedBox<_cd32.InteractiveInkFeatureFactory> {
  VMManagedInteractiveInkFeatureFactory(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['create'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedonRemoved = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['onRemoved']
          : null;

      _36c2.Closure? unpackedrectCallback = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['rectCallback']
          : null;

      return [
        _36c2.maybeBoxObject<_cd32.InteractiveInkFeature>(
            object: vmObject.create(
                borderRadius: _36c2
                    .maybeUnBoxAndBuildArgument<_9d8a.BorderRadius?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['borderRadius']
                            : null,
                        parentState: hydroState),
                containedInkWell: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['containedInkWell']
                    : null,
                customBorder:
                    _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['customBorder']
                            : null,
                        parentState: hydroState),
                onRemoved: unpackedonRemoved != null
                    ? () => unpackedonRemoved.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )
                    : null,
                radius: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['radius']
                    : null?.toDouble(),
                rectCallback: unpackedrectCallback != null
                    ? () => _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                        unpackedrectCallback.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null,
                color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState),
                controller: _36c2.maybeUnBoxAndBuildArgument<_e5b9.MaterialInkController, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['controller'] : null, parentState: hydroState),
                position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['position'] : null, parentState: hydroState),
                referenceBox: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['referenceBox'] : null, parentState: hydroState),
                textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _cd32.InteractiveInkFeatureFactory vmObject;
}

void loadInteractiveInkFeatureFactory(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  _36c2.registerBoxer<_cd32.InteractiveInkFeatureFactory>(boxer: (
      {required _cd32.InteractiveInkFeatureFactory vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInteractiveInkFeatureFactory(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
