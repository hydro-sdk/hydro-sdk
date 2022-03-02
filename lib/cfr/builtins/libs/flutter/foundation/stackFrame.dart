import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/stack_frame.dart' as _0e62;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStackFrame extends _36c2.VMManagedBox<_0e62.StackFrame> {VMManagedStackFrame({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'source'
] = vmObject.source;
table  [
'number'
] = vmObject.number;
table  [
'packageScheme'
] = vmObject.packageScheme;
table  [
'package'
] = vmObject.package;
table  [
'packagePath'
] = vmObject.packagePath;
table  [
'line'
] = vmObject.line;
table  [
'column'
] = vmObject.column;
table  [
'className'
] = vmObject.className;
table  [
'method'
] = vmObject.method;
table  [
'isConstructor'
] = vmObject.isConstructor;
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _0e62.StackFrame vmObject;

 }

class RTManagedStackFrame extends _0e62.StackFrame implements _36c2.Box<_0e62.StackFrame> {RTManagedStackFrame({required _fac9.String className, required _fac9.bool isConstructor, required _fac9.int column, required _fac9.int line, required _fac9.String method, required _fac9.int number, required _fac9.String package, required _fac9.String packagePath, required _fac9.String packageScheme, required _fac9.String source, required this.table, required this.hydroState}) : super(className: className,isConstructor: isConstructor,column: column,line: line,method: method,number: number,package: package,packagePath: packagePath,packageScheme: packageScheme,source: source) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'source'
] = _36c2.maybeBoxObject(object: this.source, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'number'
] = _36c2.maybeBoxObject(object: this.number, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'packageScheme'
] = _36c2.maybeBoxObject(object: this.packageScheme, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'package'
] = _36c2.maybeBoxObject(object: this.package, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'packagePath'
] = _36c2.maybeBoxObject(object: this.packagePath, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'line'
] = _36c2.maybeBoxObject(object: this.line, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'column'
] = _36c2.maybeBoxObject(object: this.column, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'className'
] = _36c2.maybeBoxObject(object: this.className, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'method'
] = _36c2.maybeBoxObject(object: this.method, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isConstructor'
] = _36c2.maybeBoxObject(object: this.isConstructor, hydroState: hydroState, table: _36c2.HydroTable());
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

_0e62.StackFrame unwrap() => this;
_0e62.StackFrame get vmObject => this;
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadStackFrame({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'stackFrame'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 









return  [RTManagedStackFrame(table: luaCallerArguments  [
0
], hydroState: hydroState, className: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'className'
] : null, isConstructor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'isConstructor'
] : null, column: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'column'
] : null, line: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'line'
] : null, method: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'method'
] : null, number: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'number'
] : null, package: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'package'
] : null, packagePath: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'packagePath'
] : null, packageScheme: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'packageScheme'
] : null, source: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'source'
] : null)]; } );
table  [
'stackFrameFromStackTrace'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: _0e62.StackFrame.fromStackTrace(_36c2.maybeUnBoxAndBuildArgument<_fac9.StackTrace, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_0e62.StackFrame>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'stackFrameFromStackString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: _0e62.StackFrame.fromStackString(luaCallerArguments  [
1
]).map((x) => _36c2.maybeBoxObject<_0e62.StackFrame>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'stackFrameFromStackTraceLine'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = _0e62.StackFrame.fromStackTraceLine(luaCallerArguments  [
1
]);if(returnValue!= null){return [_36c2.maybeBoxObject<_0e62.StackFrame?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_0e62.StackFrame>(boxer: ({required _0e62.StackFrame vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedStackFrame(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
