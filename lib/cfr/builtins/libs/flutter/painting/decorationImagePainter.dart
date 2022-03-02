import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/decoration_image.dart' as _48c4;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDecorationImagePainter extends _36c2.VMManagedBox<_48c4.DecorationImagePainter> {VMManagedDecorationImagePainter({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'paint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


vmObject.paint(_36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Path?, _fac9.dynamic>(luaCallerArguments  [
3
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(luaCallerArguments  [
4
], parentState: hydroState));
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _48c4.DecorationImagePainter vmObject;

 }

void loadDecorationImagePainter({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_48c4.DecorationImagePainter>(boxer: ({required _48c4.DecorationImagePainter vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedDecorationImagePainter(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
