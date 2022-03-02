import 'dart:core' as _fac9;

import 'package:flutter/src/widgets/editable_text.dart' as _d800;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionGestureDetectorBuilderDelegate extends _36c2.VMManagedBox<_578c.TextSelectionGestureDetectorBuilderDelegate> {VMManagedTextSelectionGestureDetectorBuilderDelegate({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'getEditableTextKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.GlobalKey>(object: vmObject.editableTextKey, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getForcePressEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.forcePressEnabled,]; } );
table  [
'getSelectionEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.selectionEnabled,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _578c.TextSelectionGestureDetectorBuilderDelegate vmObject;

 }

void loadTextSelectionGestureDetectorBuilderDelegate({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
_36c2.registerBoxer<_578c.TextSelectionGestureDetectorBuilderDelegate>(boxer: ({required _578c.TextSelectionGestureDetectorBuilderDelegate vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextSelectionGestureDetectorBuilderDelegate(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
