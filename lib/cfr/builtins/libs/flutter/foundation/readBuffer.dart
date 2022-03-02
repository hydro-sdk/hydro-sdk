import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;

import 'package:flutter/src/foundation/serialization.dart' as _6ccc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedReadBuffer extends _36c2.VMManagedBox<_6ccc.ReadBuffer> {VMManagedReadBuffer({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'data'
] = _36c2.maybeBoxObject<_7537.ByteData>(object: vmObject.data, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getHasRemaining'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasRemaining,]; } );
table  [
'getUint8'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getUint8(),]; } );
table  [
'getUint16'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getUint16(endian: _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endian'
] : null, parentState: hydroState)),]; } );
table  [
'getUint32'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getUint32(endian: _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endian'
] : null, parentState: hydroState)),]; } );
table  [
'getInt32'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getInt32(endian: _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endian'
] : null, parentState: hydroState)),]; } );
table  [
'getInt64'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getInt64(endian: _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endian'
] : null, parentState: hydroState)),]; } );
table  [
'getFloat64'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getFloat64(endian: _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endian'
] : null, parentState: hydroState)),]; } );
table  [
'getUint8List'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7537.Uint8List>(object: vmObject.getUint8List(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getInt32List'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7537.Int32List>(object: vmObject.getInt32List(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getInt64List'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7537.Int64List>(object: vmObject.getInt64List(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getFloat32List'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7537.Float32List>(object: vmObject.getFloat32List(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getFloat64List'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7537.Float64List>(object: vmObject.getFloat64List(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _6ccc.ReadBuffer vmObject;

 }

class RTManagedReadBuffer extends _6ccc.ReadBuffer implements _36c2.Box<_6ccc.ReadBuffer> {RTManagedReadBuffer(_7537.ByteData data$, {required this.table, required this.hydroState}) : super(data$,) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'data'
] = _36c2.maybeBoxObject(object: this.data, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getHasRemaining'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasRemaining];
});
table['_dart_getUint8'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getUint8(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getUint16'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getUint16(
            endian:
                _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['endian']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getUint32'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getUint32(
            endian:
                _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['endian']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getInt32'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getInt32(
            endian:
                _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['endian']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getInt64'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getInt64(
            endian:
                _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['endian']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getFloat64'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getFloat64(
            endian:
                _36c2.maybeUnBoxAndBuildArgument<_7537.Endian?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['endian']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getUint8List'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getUint8List(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getInt32List'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getInt32List(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getInt64List'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getInt64List(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getFloat32List'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getFloat32List(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getFloat64List'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getFloat64List(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_6ccc.ReadBuffer unwrap() => this;
_6ccc.ReadBuffer get vmObject => this;
@_fac9.override _fac9.bool get hasRemaining { 
_36c2.Closure closure = table["getHasRemaining"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int getUint8() { 
_36c2.Closure closure = table["getUint8"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int getUint16({_7537.Endian? endian}) { 
_36c2.Closure closure = table["getUint16"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int getUint32({_7537.Endian? endian}) { 
_36c2.Closure closure = table["getUint32"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int getInt32({_7537.Endian? endian}) { 
_36c2.Closure closure = table["getInt32"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int getInt64({_7537.Endian? endian}) { 
_36c2.Closure closure = table["getInt64"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double getFloat64({_7537.Endian? endian}) { 
_36c2.Closure closure = table["getFloat64"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _7537.Uint8List getUint8List(length) { 
_36c2.Closure closure = table["getUint8List"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7537.Int32List getInt32List(length) { 
_36c2.Closure closure = table["getInt32List"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.Int32List, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7537.Int64List getInt64List(length) { 
_36c2.Closure closure = table["getInt64List"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.Int64List, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7537.Float32List getFloat32List(length) { 
_36c2.Closure closure = table["getFloat32List"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.Float32List, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7537.Float64List getFloat64List(length) { 
_36c2.Closure closure = table["getFloat64List"];
return _36c2.maybeUnBoxAndBuildArgument<_7537.Float64List, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadReadBuffer({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'readBuffer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedReadBuffer(_36c2.maybeUnBoxAndBuildArgument<_7537.ByteData, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_6ccc.ReadBuffer>(boxer: ({required _6ccc.ReadBuffer vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedReadBuffer(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
