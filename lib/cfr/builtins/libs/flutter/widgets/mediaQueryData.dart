import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/gesture_settings.dart' as _352d;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/media_query.dart' as _e0b9;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedMediaQueryData extends _36c2.VMManagedBox<_e0b9.MediaQueryData> {VMManagedMediaQueryData({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'size'
] = _36c2.maybeBoxObject<_a643.Size>(object: vmObject.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'devicePixelRatio'
] = vmObject.devicePixelRatio;
table  [
'textScaleFactor'
] = vmObject.textScaleFactor;
table  [
'platformBrightness'
] = _a643.Brightness.values.indexWhere((x) { return x == vmObject.platformBrightness; } );
table  [
'viewInsets'
] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.viewInsets, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'padding'
] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.padding, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'viewPadding'
] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.viewPadding, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'systemGestureInsets'
] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.systemGestureInsets, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'alwaysUse24HourFormat'
] = vmObject.alwaysUse24HourFormat;
table  [
'accessibleNavigation'
] = vmObject.accessibleNavigation;
table  [
'invertColors'
] = vmObject.invertColors;
table  [
'highContrast'
] = vmObject.highContrast;
table  [
'disableAnimations'
] = vmObject.disableAnimations;
table  [
'boldText'
] = vmObject.boldText;
table  [
'navigationMode'
] = _e0b9.NavigationMode.values.indexWhere((x) { return x == vmObject.navigationMode; } );
table  [
'gestureSettings'
] = _36c2.maybeBoxObject<_352d.DeviceGestureSettings>(object: vmObject.gestureSettings, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getOrientation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_e0b9.Orientation.values.indexWhere((x) { return x == vmObject.orientation; } ),]; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 














return [_36c2.maybeBoxObject<_e0b9.MediaQueryData>(object: vmObject.copyWith(accessibleNavigation: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'accessibleNavigation'
] : null, alwaysUse24HourFormat: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alwaysUse24HourFormat'
] : null, boldText: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'boldText'
] : null, devicePixelRatio: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'devicePixelRatio'
] : null?.toDouble(), disableAnimations: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'disableAnimations'
] : null, gestureSettings: _36c2.maybeUnBoxAndBuildArgument<_352d.DeviceGestureSettings?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'gestureSettings'
] : null, parentState: hydroState), highContrast: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'highContrast'
] : null, invertColors: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'invertColors'
] : null, navigationMode: _36c2.maybeUnBoxEnum(values: _e0b9.NavigationMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'navigationMode'
] : null), padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'padding'
] : null, parentState: hydroState), platformBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'platformBrightness'
] : null), size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'size'
] : null, parentState: hydroState), systemGestureInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'systemGestureInsets'
] : null, parentState: hydroState), textScaleFactor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textScaleFactor'
] : null?.toDouble(), viewInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewInsets'
] : null, parentState: hydroState), viewPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewPadding'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'removePadding'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_e0b9.MediaQueryData>(object: vmObject.removePadding(removeBottom: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeBottom'
] : null, removeLeft: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeLeft'
] : null, removeRight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeRight'
] : null, removeTop: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeTop'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'removeViewInsets'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_e0b9.MediaQueryData>(object: vmObject.removeViewInsets(removeBottom: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeBottom'
] : null, removeLeft: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeLeft'
] : null, removeRight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeRight'
] : null, removeTop: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeTop'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'removeViewPadding'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_e0b9.MediaQueryData>(object: vmObject.removeViewPadding(removeBottom: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeBottom'
] : null, removeLeft: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeLeft'
] : null, removeRight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeRight'
] : null, removeTop: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'removeTop'
] : null), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _e0b9.MediaQueryData vmObject;

 }

class RTManagedMediaQueryData extends _e0b9.MediaQueryData implements _36c2.Box<_e0b9.MediaQueryData> {RTManagedMediaQueryData({required _fac9.bool accessibleNavigation, required _fac9.bool alwaysUse24HourFormat, required _fac9.bool boldText, required _fac9.double devicePixelRatio, required _fac9.bool disableAnimations, required _352d.DeviceGestureSettings gestureSettings, required _fac9.bool highContrast, required _fac9.bool invertColors, required _e0b9.NavigationMode navigationMode, required _96d1.EdgeInsets padding, required _a643.Brightness platformBrightness, required _a643.Size size, required _96d1.EdgeInsets systemGestureInsets, required _fac9.double textScaleFactor, required _96d1.EdgeInsets viewInsets, required _96d1.EdgeInsets viewPadding, required this.table, required this.hydroState}) : super(accessibleNavigation: accessibleNavigation,alwaysUse24HourFormat: alwaysUse24HourFormat,boldText: boldText,devicePixelRatio: devicePixelRatio,disableAnimations: disableAnimations,gestureSettings: gestureSettings,highContrast: highContrast,invertColors: invertColors,navigationMode: navigationMode,padding: padding,platformBrightness: platformBrightness,size: size,systemGestureInsets: systemGestureInsets,textScaleFactor: textScaleFactor,viewInsets: viewInsets,viewPadding: viewPadding) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'size'
] = _36c2.maybeBoxObject(object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'devicePixelRatio'
] = _36c2.maybeBoxObject(object: this.devicePixelRatio, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textScaleFactor'
] = _36c2.maybeBoxObject(object: this.textScaleFactor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'platformBrightness'
] = _a643.Brightness.values.indexWhere((x) { return x == this.platformBrightness; } );
table  [
'viewInsets'
] = _36c2.maybeBoxObject(object: this.viewInsets, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'padding'
] = _36c2.maybeBoxObject(object: this.padding, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'viewPadding'
] = _36c2.maybeBoxObject(object: this.viewPadding, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'systemGestureInsets'
] = _36c2.maybeBoxObject(object: this.systemGestureInsets, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'alwaysUse24HourFormat'
] = _36c2.maybeBoxObject(object: this.alwaysUse24HourFormat, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'accessibleNavigation'
] = _36c2.maybeBoxObject(object: this.accessibleNavigation, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'invertColors'
] = _36c2.maybeBoxObject(object: this.invertColors, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'highContrast'
] = _36c2.maybeBoxObject(object: this.highContrast, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'disableAnimations'
] = _36c2.maybeBoxObject(object: this.disableAnimations, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'boldText'
] = _36c2.maybeBoxObject(object: this.boldText, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'navigationMode'
] = _e0b9.NavigationMode.values.indexWhere((x) { return x == this.navigationMode; } );
table  [
'gestureSettings'
] = _36c2.maybeBoxObject(object: this.gestureSettings, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getOrientation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.orientation];
});
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            accessibleNavigation:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['accessibleNavigation'] : null,
                    parentState: hydroState),
            alwaysUse24HourFormat:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['alwaysUse24HourFormat']
                        : null,
                    parentState: hydroState),
            boldText: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['boldText'] : null,
                parentState: hydroState),
            devicePixelRatio: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['devicePixelRatio'] : null, parentState: hydroState),
            disableAnimations: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['disableAnimations'] : null, parentState: hydroState),
            gestureSettings: _36c2.maybeUnBoxAndBuildArgument<_352d.DeviceGestureSettings?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['gestureSettings'] : null, parentState: hydroState),
            highContrast: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['highContrast'] : null, parentState: hydroState),
            invertColors: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['invertColors'] : null, parentState: hydroState),
            navigationMode: _36c2.maybeUnBoxEnum(values: _e0b9.NavigationMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigationMode'] : null),
            padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
            platformBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platformBrightness'] : null),
            size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null, parentState: hydroState),
            systemGestureInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['systemGestureInsets'] : null, parentState: hydroState),
            textScaleFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textScaleFactor'] : null, parentState: hydroState),
            viewInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewInsets'] : null, parentState: hydroState),
            viewPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewPadding'] : null, parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_removePadding'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.removePadding(
            removeBottom: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['removeBottom']
                    : null,
                parentState: hydroState),
            removeLeft: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeLeft'] : null,
                parentState: hydroState),
            removeRight: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeRight'] : null,
                parentState: hydroState),
            removeTop: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeTop'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_removeViewInsets'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.removeViewInsets(
            removeBottom: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['removeBottom']
                    : null,
                parentState: hydroState),
            removeLeft: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeLeft'] : null,
                parentState: hydroState),
            removeRight: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeRight'] : null,
                parentState: hydroState),
            removeTop: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeTop'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_removeViewPadding'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.removeViewPadding(
            removeBottom: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['removeBottom']
                    : null,
                parentState: hydroState),
            removeLeft: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeLeft'] : null,
                parentState: hydroState),
            removeRight: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeRight'] : null,
                parentState: hydroState),
            removeTop: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['removeTop'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_e0b9.MediaQueryData unwrap() => this;
_e0b9.MediaQueryData get vmObject => this;
@_fac9.override _e0b9.Orientation get orientation { 
_36c2.Closure closure = table["getOrientation"];
return _36c2.maybeUnBoxEnum(values: _e0b9.Orientation.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _e0b9.MediaQueryData copyWith({_fac9.bool? accessibleNavigation, _fac9.bool? alwaysUse24HourFormat, _fac9.bool? boldText, _fac9.double? devicePixelRatio, _fac9.bool? disableAnimations, _352d.DeviceGestureSettings? gestureSettings, _fac9.bool? highContrast, _fac9.bool? invertColors, _e0b9.NavigationMode? navigationMode, _96d1.EdgeInsets? padding, _a643.Brightness? platformBrightness, _a643.Size? size, _96d1.EdgeInsets? systemGestureInsets, _fac9.double? textScaleFactor, _96d1.EdgeInsets? viewInsets, _96d1.EdgeInsets? viewPadding}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_e0b9.MediaQueryData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e0b9.MediaQueryData removePadding({_fac9.bool removeBottom = false, _fac9.bool removeLeft = false, _fac9.bool removeRight = false, _fac9.bool removeTop = false}) { 
_36c2.Closure closure = table["removePadding"];
return _36c2.maybeUnBoxAndBuildArgument<_e0b9.MediaQueryData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e0b9.MediaQueryData removeViewInsets({_fac9.bool removeBottom = false, _fac9.bool removeLeft = false, _fac9.bool removeRight = false, _fac9.bool removeTop = false}) { 
_36c2.Closure closure = table["removeViewInsets"];
return _36c2.maybeUnBoxAndBuildArgument<_e0b9.MediaQueryData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e0b9.MediaQueryData removeViewPadding({_fac9.bool removeBottom = false, _fac9.bool removeLeft = false, _fac9.bool removeRight = false, _fac9.bool removeTop = false}) { 
_36c2.Closure closure = table["removeViewPadding"];
return _36c2.maybeUnBoxAndBuildArgument<_e0b9.MediaQueryData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadMediaQueryData({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'mediaQueryData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 















return  [RTManagedMediaQueryData(table: luaCallerArguments  [
0
], hydroState: hydroState, accessibleNavigation: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'accessibleNavigation'
] : null, alwaysUse24HourFormat: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alwaysUse24HourFormat'
] : null, boldText: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'boldText'
] : null, devicePixelRatio: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'devicePixelRatio'
] : null?.toDouble(), disableAnimations: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'disableAnimations'
] : null, gestureSettings: _36c2.maybeUnBoxAndBuildArgument<_352d.DeviceGestureSettings, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'gestureSettings'
] : null, parentState: hydroState), highContrast: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'highContrast'
] : null, invertColors: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'invertColors'
] : null, navigationMode: _36c2.maybeUnBoxEnum(values: _e0b9.NavigationMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'navigationMode'
] : null), padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'padding'
] : null, parentState: hydroState), platformBrightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'platformBrightness'
] : null), size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'size'
] : null, parentState: hydroState), systemGestureInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'systemGestureInsets'
] : null, parentState: hydroState), textScaleFactor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textScaleFactor'
] : null?.toDouble(), viewInsets: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewInsets'
] : null, parentState: hydroState), viewPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewPadding'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_e0b9.MediaQueryData>(boxer: ({required _e0b9.MediaQueryData vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedMediaQueryData(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
