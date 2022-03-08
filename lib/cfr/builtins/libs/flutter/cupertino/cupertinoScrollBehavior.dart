import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/app.dart' as _5490;
import 'package:flutter/src/foundation/platform.dart' as _9164;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/velocity_tracker.dart' as _10cb;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_configuration.dart' as _b028;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/scrollable.dart' as _538d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoScrollBehavior
    extends _36c2.VMManagedBox<_5490.CupertinoScrollBehavior> {
  VMManagedCupertinoScrollBehavior(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['buildScrollbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildScrollbar(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_538d.ScrollableDetails,
                        _fac9.dynamic>(luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildOverscrollIndicator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildOverscrollIndicator(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_538d.ScrollableDetails,
                        _fac9.dynamic>(luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getScrollPhysics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_dbad.ScrollPhysics>(
            object: vmObject.getScrollPhysics(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_b028.ScrollBehavior>(
            object: vmObject.copyWith(
                androidOverscrollIndicator: _36c2.maybeUnBoxEnum(
                    values: _b028.AndroidOverscrollIndicator.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['androidOverscrollIndicator']
                        : null),
                dragDevices: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Set<_a643.PointerDeviceKind>?, _a643.PointerDeviceKind>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['dragDevices']
                            : null,
                        parentState: hydroState),
                overscroll: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['overscroll']
                    : null,
                physics:
                    _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['physics'] : null,
                        parentState: hydroState),
                platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
                scrollbars: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollbars'] : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPlatform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _9164.TargetPlatform.values.indexWhere((x) {
          return x ==
              vmObject.getPlatform(_36c2.maybeUnBoxAndBuildArgument<
                      _e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        }),
      ];
    });
    table['buildViewportChrome'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildViewportChrome(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _487f.AxisDirection.values,
                    boxedEnum: luaCallerArguments[3])),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['velocityTrackerBuilder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.velocityTrackerBuilder(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['shouldNotify'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldNotify(_36c2.maybeUnBoxAndBuildArgument<
            _b028.ScrollBehavior,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getAndroidOverscrollIndicator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _b028.AndroidOverscrollIndicator.values.indexWhere((x) {
          return x == vmObject.androidOverscrollIndicator;
        }),
      ];
    });
    table['getDragDevices'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Set>(
            object: vmObject.dragDevices,
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

  final _5490.CupertinoScrollBehavior vmObject;
}

class RTManagedCupertinoScrollBehavior extends _5490.CupertinoScrollBehavior
    implements _36c2.Box<_5490.CupertinoScrollBehavior> {
  RTManagedCupertinoScrollBehavior(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_buildScrollbar'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildScrollbar(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_538d.ScrollableDetails,
                        _fac9.dynamic>(luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildOverscrollIndicator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildOverscrollIndicator(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_538d.ScrollableDetails,
                        _fac9.dynamic>(luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getScrollPhysics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getScrollPhysics(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                androidOverscrollIndicator: _36c2.maybeUnBoxEnum(
                    values: _b028.AndroidOverscrollIndicator.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['androidOverscrollIndicator']
                        : null),
                dragDevices:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_a643.PointerDeviceKind>?, _a643.PointerDeviceKind>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['dragDevices']
                            : null,
                        parentState: hydroState),
                overscroll: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overscroll'] : null,
                    parentState: hydroState),
                physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['physics'] : null,
                    parentState: hydroState),
                platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
                scrollbars: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollbars'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getPlatform'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _9164.TargetPlatform.values.indexWhere((x) {
          return x ==
              super.getPlatform(_36c2.maybeUnBoxAndBuildArgument<
                      _e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments[1],
                  parentState: hydroState));
        })
      ];
    });
    table['_dart_buildViewportChrome'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildViewportChrome(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _487f.AxisDirection.values,
                    boxedEnum: luaCallerArguments[3])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldNotify'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldNotify(_36c2.maybeUnBoxAndBuildArgument<
                _b028.ScrollBehavior,
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
    table['_dart_getAndroidOverscrollIndicator'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.androidOverscrollIndicator];
    });
    table['_dart_getDragDevices'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dragDevices];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _5490.CupertinoScrollBehavior unwrap() => this;
  _5490.CupertinoScrollBehavior get vmObject => this;
  @_fac9.override
  _e2dc.Widget buildScrollbar(context, child, details) {
    _36c2.Closure closure = table["buildScrollbar"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.Widget buildOverscrollIndicator(context, child, details) {
    _36c2.Closure closure = table["buildOverscrollIndicator"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _dbad.ScrollPhysics getScrollPhysics(context) {
    _36c2.Closure closure = table["getScrollPhysics"];
    return _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _b028.ScrollBehavior copyWith(
      {_b028.AndroidOverscrollIndicator? androidOverscrollIndicator,
      _fac9.Set? dragDevices,
      _fac9.bool? overscroll,
      _dbad.ScrollPhysics? physics,
      _9164.TargetPlatform? platform,
      _fac9.bool? scrollbars}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_b028.ScrollBehavior, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _9164.TargetPlatform getPlatform(context) {
    _36c2.Closure closure = table["getPlatform"];
    return _36c2.maybeUnBoxEnum(
        values: _9164.TargetPlatform.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _e2dc.Widget buildViewportChrome(context, child, axisDirection) {
    _36c2.Closure closure = table["buildViewportChrome"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool shouldNotify(oldDelegate) {
    _36c2.Closure closure = table["shouldNotify"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b028.AndroidOverscrollIndicator get androidOverscrollIndicator {
    _36c2.Closure closure = table["getAndroidOverscrollIndicator"];
    return _36c2.maybeUnBoxEnum(
        values: _b028.AndroidOverscrollIndicator.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.Set<_a643.PointerDeviceKind> get dragDevices {
    _36c2.Closure closure = table["getDragDevices"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_a643.PointerDeviceKind>,
            _a643.PointerDeviceKind>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadCupertinoScrollBehavior(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['cupertinoScrollBehavior'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedCupertinoScrollBehavior(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_5490.CupertinoScrollBehavior>(boxer: (
      {required _5490.CupertinoScrollBehavior vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedCupertinoScrollBehavior(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
