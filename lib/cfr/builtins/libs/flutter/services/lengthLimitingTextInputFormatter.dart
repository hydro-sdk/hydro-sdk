import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/platform.dart' as _9164;
import 'package:flutter/src/services/text_formatter.dart' as _86aa;
import 'package:flutter/src/services/text_input.dart' as _8577;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedLengthLimitingTextInputFormatter extends _36c2.VMManagedBox<_86aa.LengthLimitingTextInputFormatter> {VMManagedLengthLimitingTextInputFormatter({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'maxLength'
] = vmObject.maxLength;
table  [
'maxLengthEnforcement'
] = _86aa.MaxLengthEnforcement.values.indexWhere((x) { return x == vmObject.maxLengthEnforcement; } );
table  [
'formatEditUpdate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_8577.TextEditingValue>(object: vmObject.formatEditUpdate(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _86aa.LengthLimitingTextInputFormatter vmObject;

 }

class RTManagedLengthLimitingTextInputFormatter extends _86aa.LengthLimitingTextInputFormatter implements _36c2.Box<_86aa.LengthLimitingTextInputFormatter> {RTManagedLengthLimitingTextInputFormatter(_fac9.int? maxLength$, {_86aa.MaxLengthEnforcement? maxLengthEnforcement, required this.table, required this.hydroState}) : super(maxLength$,maxLengthEnforcement: maxLengthEnforcement) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'maxLength'
] = _36c2.maybeBoxObject(object: this.maxLength, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'maxLengthEnforcement'
] = _86aa.MaxLengthEnforcement.values.indexWhere((x) { return x == this.maxLengthEnforcement; } );
table['_dart_formatEditUpdate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.formatEditUpdate(
            _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_86aa.LengthLimitingTextInputFormatter unwrap() => this;
_86aa.LengthLimitingTextInputFormatter get vmObject => this;
@_fac9.override _8577.TextEditingValue formatEditUpdate(oldValue, newValue) { 
_36c2.Closure closure = table["formatEditUpdate"];
return _36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadLengthLimitingTextInputFormatter({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'lengthLimitingTextInputFormatter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedLengthLimitingTextInputFormatter(luaCallerArguments  [
1
], table: luaCallerArguments  [
0
], hydroState: hydroState, maxLengthEnforcement: _36c2.maybeUnBoxEnum(values: _86aa.MaxLengthEnforcement.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'maxLengthEnforcement'
] : null))]; } );
table  [
'lengthLimitingTextInputFormatterGetDefaultMaxLengthEnforcement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_86aa.MaxLengthEnforcement.values.indexWhere((x) { return x == _86aa.LengthLimitingTextInputFormatter.getDefaultMaxLengthEnforcement(_36c2.maybeUnBoxEnum(values: _9164.TargetPlatform.values, boxedEnum: luaCallerArguments  [
1
])); } ),]; } );
table  [
'lengthLimitingTextInputFormatterTruncate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_8577.TextEditingValue>(object: _86aa.LengthLimitingTextInputFormatter.truncate(_36c2.maybeUnBoxAndBuildArgument<_8577.TextEditingValue, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
_36c2.registerBoxer<_86aa.LengthLimitingTextInputFormatter>(boxer: ({required _86aa.LengthLimitingTextInputFormatter vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedLengthLimitingTextInputFormatter(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
