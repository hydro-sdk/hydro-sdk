import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/platform.dart' as _9164;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/services/asset_bundle.dart' as _136d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImageConfiguration extends _36c2.VMManagedBox<_61fa.ImageConfiguration> {VMManagedImageConfiguration({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'bundle'
] = _36c2.maybeBoxObject<_136d.AssetBundle?>(object: vmObject.bundle, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'devicePixelRatio'
] = vmObject.devicePixelRatio;
table  [
'locale'
] = _36c2.maybeBoxObject<_a643.Locale?>(object: vmObject.locale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textDirection'
] = _a643.TextDirection.values.indexWhere((x) { return x == vmObject.textDirection; } );
table  [
'size'
] = _36c2.maybeBoxObject<_a643.Size?>(object: vmObject.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'platform'
] = _9164.TargetPlatform.values.indexWhere((x) { return x == vmObject.platform; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return [_36c2.maybeBoxObject<_61fa.ImageConfiguration>(object: vmObject.copyWith(bundle: _36c2.maybeUnBoxAndBuildArgument<_136d.AssetBundle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'bundle'
] : null, parentState: hydroState), devicePixelRatio: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'devicePixelRatio'
] : null?.toDouble(), locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'locale'
] : null, parentState: hydroState), platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'platform'
] : null), size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'size'
] : null, parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textDirection'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _61fa.ImageConfiguration vmObject;

 }

class RTManagedImageConfiguration extends _61fa.ImageConfiguration implements _36c2.Box<_61fa.ImageConfiguration> {RTManagedImageConfiguration({_136d.AssetBundle? bundle, _fac9.double? devicePixelRatio, _a643.Locale? locale, _9164.TargetPlatform? platform, _a643.Size? size, _a643.TextDirection? textDirection, required this.table, required this.hydroState}) : super(bundle: bundle,devicePixelRatio: devicePixelRatio,locale: locale,platform: platform,size: size,textDirection: textDirection) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'bundle'
] = _36c2.maybeBoxObject(object: this.bundle, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'devicePixelRatio'
] = _36c2.maybeBoxObject(object: this.devicePixelRatio, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'locale'
] = _36c2.maybeBoxObject(object: this.locale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textDirection'
] = _a643.TextDirection.values.indexWhere((x) { return x == this.textDirection; } );
table  [
'size'
] = _36c2.maybeBoxObject(object: this.size, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'platform'
] = _9164.TargetPlatform.values.indexWhere((x) { return x == this.platform; } );
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            bundle: _36c2
                .maybeUnBoxAndBuildArgument<_136d.AssetBundle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['bundle'] : null,
                    parentState: hydroState),
            devicePixelRatio:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['devicePixelRatio']
                        : null,
                    parentState: hydroState),
            locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null,
                parentState: hydroState),
            platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platform'] : null),
            size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['size'] : null, parentState: hydroState),
            textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null)),
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

_61fa.ImageConfiguration unwrap() => this;
_61fa.ImageConfiguration get vmObject => this;
@_fac9.override _61fa.ImageConfiguration copyWith({_136d.AssetBundle? bundle, _fac9.double? devicePixelRatio, _a643.Locale? locale, _9164.TargetPlatform? platform, _a643.Size? size, _a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadImageConfiguration({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'imageConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 





return  [RTManagedImageConfiguration(table: luaCallerArguments  [
0
], hydroState: hydroState, bundle: _36c2.maybeUnBoxAndBuildArgument<_136d.AssetBundle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'bundle'
] : null, parentState: hydroState), devicePixelRatio: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'devicePixelRatio'
] : null?.toDouble(), locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'locale'
] : null, parentState: hydroState), platform: _36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'platform'
] : null), size: _36c2.maybeUnBoxAndBuildArgument<_a643.Size?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'size'
] : null, parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textDirection'
] : null))]; } );
_36c2.registerBoxer<_61fa.ImageConfiguration>(boxer: ({required _61fa.ImageConfiguration vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedImageConfiguration(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
