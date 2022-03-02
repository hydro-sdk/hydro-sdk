import 'dart:core' as _fac9;

import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSystemMouseCursors extends _36c2.VMManagedBox<_fd33.SystemMouseCursors> {VMManagedSystemMouseCursors({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {  }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _fd33.SystemMouseCursors vmObject;

 }

void loadSystemMouseCursors({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'systemMouseCursorsNone'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.none, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsBasic'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.basic, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsClick'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.click, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsForbidden'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.forbidden, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsWait'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.wait, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsProgress'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.progress, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsContextMenu'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.contextMenu, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsHelp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.help, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.text, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsVerticalText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.verticalText, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsCell'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.cell, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsPrecise'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.precise, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsMove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.move, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsGrab'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.grab, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsGrabbing'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.grabbing, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsNoDrop'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.noDrop, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsAlias'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.alias, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.copy, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsDisappearing'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.disappearing, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsAllScroll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.allScroll, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeLeftRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeLeftRight, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeUpDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeUpDown, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeUpLeftDownRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeUpLeftDownRight, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeUpRightDownLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeUpRightDownLeft, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeUp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeUp, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeDown, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeLeft, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeRight, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeUpLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeUpLeft, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeUpRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeUpRight, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeDownLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeDownLeft, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeDownRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeDownRight, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeColumn'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeColumn, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsResizeRow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.resizeRow, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsZoomIn'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.zoomIn, hydroState: hydroState, table: _36c2.HydroTable())]; } );
table  [
'systemMouseCursorsZoomOut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [_36c2.maybeBoxObject<_fd33.SystemMouseCursor>(object: _fd33.SystemMouseCursors.zoomOut, hydroState: hydroState, table: _36c2.HydroTable())]; } );
_36c2.registerBoxer<_fd33.SystemMouseCursors>(boxer: ({required _fd33.SystemMouseCursors vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSystemMouseCursors(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
