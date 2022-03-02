import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/services/platform_views.dart' as _40e3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextureAndroidViewController extends _36c2.VMManagedBox<_40e3.TextureAndroidViewController> {VMManagedTextureAndroidViewController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'viewId'
] = vmObject.viewId;
table  [
'getTextureId'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.textureId;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.setSize(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'create'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.create(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'sendMotionEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.sendMotionEvent(_36c2.maybeUnBoxAndBuildArgument<_40e3.AndroidMotionEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'addOnPlatformViewCreatedListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.addOnPlatformViewCreatedListener((id) => unpackedlistener.dispatch([luaCallerArguments[0],id],parentState:hydroState,));
return []; } );
table  [
'removeOnPlatformViewCreatedListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.removeOnPlatformViewCreatedListener((id) => unpackedlistener.dispatch([luaCallerArguments[0],id],parentState:hydroState,));
return []; } );
table  [
'setLayoutDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.setLayoutDirection(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
])), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'dispatchPointerEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.dispatchPointerEvent(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'clearFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.clearFocus(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.dispose(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPointTransformer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.pointTransformer,]; } );
table  [
'setPointTransformer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedtransformer=luaCallerArguments  [
1
];vmObject.pointTransformer=((position) => _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(unpackedtransformer.dispatch([luaCallerArguments[0],position],parentState:hydroState,)[0], parentState: hydroState));
return []; } );
table  [
'getIsCreated'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isCreated,]; } );
table  [
'getViewId'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.viewId,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _40e3.TextureAndroidViewController vmObject;

 }

void loadTextureAndroidViewController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_40e3.TextureAndroidViewController>(boxer: ({required _40e3.TextureAndroidViewController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextureAndroidViewController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
