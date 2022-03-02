import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/text_theme.dart' as _1bc7;
import 'package:flutter/src/cupertino/theme.dart' as _2b5f;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedNoDefaultCupertinoThemeData extends _36c2.VMManagedBox<_2b5f.NoDefaultCupertinoThemeData> {VMManagedNoDefaultCupertinoThemeData({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'brightness'
] = _a643.Brightness.values.indexWhere((x) { return x == vmObject.brightness; } );
table  [
'primaryColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.primaryColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryContrastingColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.primaryContrastingColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textTheme'
] = _36c2.maybeBoxObject<_1bc7.CupertinoTextThemeData?>(object: vmObject.textTheme, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'barBackgroundColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.barBackgroundColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scaffoldBackgroundColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.scaffoldBackgroundColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'noDefault'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_2b5f.NoDefaultCupertinoThemeData>(object: vmObject.noDefault(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




return [_36c2.maybeBoxObject<_2b5f.NoDefaultCupertinoThemeData>(object: vmObject.copyWith(barBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'barBackgroundColor'
] : null, parentState: hydroState), brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'brightness'
] : null), primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryColor'
] : null, parentState: hydroState), primaryContrastingColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryContrastingColor'
] : null, parentState: hydroState), scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scaffoldBackgroundColor'
] : null, parentState: hydroState), textTheme: _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textTheme'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2b5f.NoDefaultCupertinoThemeData vmObject;

 }

class RTManagedNoDefaultCupertinoThemeData extends _2b5f.NoDefaultCupertinoThemeData implements _36c2.Box<_2b5f.NoDefaultCupertinoThemeData> {RTManagedNoDefaultCupertinoThemeData({_a643.Color? barBackgroundColor, _a643.Brightness? brightness, _a643.Color? primaryColor, _a643.Color? primaryContrastingColor, _a643.Color? scaffoldBackgroundColor, _1bc7.CupertinoTextThemeData? textTheme, required this.table, required this.hydroState}) : super(barBackgroundColor: barBackgroundColor,brightness: brightness,primaryColor: primaryColor,primaryContrastingColor: primaryContrastingColor,scaffoldBackgroundColor: scaffoldBackgroundColor,textTheme: textTheme) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'brightness'
] = _a643.Brightness.values.indexWhere((x) { return x == this.brightness; } );
table  [
'primaryColor'
] = _36c2.maybeBoxObject(object: this.primaryColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'primaryContrastingColor'
] = _36c2.maybeBoxObject(object: this.primaryContrastingColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textTheme'
] = _36c2.maybeBoxObject(object: this.textTheme, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'barBackgroundColor'
] = _36c2.maybeBoxObject(object: this.barBackgroundColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scaffoldBackgroundColor'
] = _36c2.maybeBoxObject(object: this.scaffoldBackgroundColor, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_noDefault'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.noDefault(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_resolveFrom'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.resolveFrom(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            barBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['barBackgroundColor']
                    : null,
                parentState: hydroState),
            brightness: _36c2.maybeUnBoxEnum(
                values: _a643.Brightness.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['brightness']
                    : null),
            primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryColor'] : null,
                parentState: hydroState),
            primaryContrastingColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['primaryContrastingColor'] : null,
                parentState: hydroState),
            scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaffoldBackgroundColor'] : null, parentState: hydroState),
            textTheme: _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textTheme'] : null, parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_2b5f.NoDefaultCupertinoThemeData unwrap() => this;
_2b5f.NoDefaultCupertinoThemeData get vmObject => this;
@_fac9.override _2b5f.NoDefaultCupertinoThemeData noDefault() { 
_36c2.Closure closure = table["noDefault"];
return _36c2.maybeUnBoxAndBuildArgument<_2b5f.NoDefaultCupertinoThemeData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _2b5f.NoDefaultCupertinoThemeData resolveFrom(context) { 
_36c2.Closure closure = table["resolveFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_2b5f.NoDefaultCupertinoThemeData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _2b5f.NoDefaultCupertinoThemeData copyWith({_a643.Color? barBackgroundColor, _a643.Brightness? brightness, _a643.Color? primaryColor, _a643.Color? primaryContrastingColor, _a643.Color? scaffoldBackgroundColor, _1bc7.CupertinoTextThemeData? textTheme}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_2b5f.NoDefaultCupertinoThemeData, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadNoDefaultCupertinoThemeData({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'noDefaultCupertinoThemeData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 





return  [RTManagedNoDefaultCupertinoThemeData(table: luaCallerArguments  [
0
], hydroState: hydroState, barBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'barBackgroundColor'
] : null, parentState: hydroState), brightness: _36c2.maybeUnBoxEnum(values: _a643.Brightness.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'brightness'
] : null), primaryColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryColor'
] : null, parentState: hydroState), primaryContrastingColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'primaryContrastingColor'
] : null, parentState: hydroState), scaffoldBackgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scaffoldBackgroundColor'
] : null, parentState: hydroState), textTheme: _36c2.maybeUnBoxAndBuildArgument<_1bc7.CupertinoTextThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textTheme'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_2b5f.NoDefaultCupertinoThemeData>(boxer: ({required _2b5f.NoDefaultCupertinoThemeData vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedNoDefaultCupertinoThemeData(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
