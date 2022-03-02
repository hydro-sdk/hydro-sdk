import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_style.dart' as _74d0;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedStrutStyle extends _36c2.VMManagedBox<_ced4.StrutStyle> {VMManagedStrutStyle({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'fontFamily'
] = vmObject.fontFamily;
table  [
'fontSize'
] = vmObject.fontSize;
table  [
'height'
] = vmObject.height;
table  [
'leadingDistribution'
] = _a643.TextLeadingDistribution.values.indexWhere((x) { return x == vmObject.leadingDistribution; } );
table  [
'fontWeight'
] = _36c2.maybeBoxObject<_a643.FontWeight?>(object: vmObject.fontWeight, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fontStyle'
] = _a643.FontStyle.values.indexWhere((x) { return x == vmObject.fontStyle; } );
table  [
'leading'
] = vmObject.leading;
table  [
'forceStrutHeight'
] = vmObject.forceStrutHeight;
table  [
'debugLabel'
] = vmObject.debugLabel;
table  [
'getFontFamilyFallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.fontFamilyFallback;if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.List<_fac9.String>?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'compareTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.RenderComparison.values.indexWhere((x) { return x == vmObject.compareTo(_36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)); } ),]; } );
table  [
'inheritFromTextStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_ced4.StrutStyle>(object: vmObject.inheritFromTextStyle(_36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), prefix: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'prefix'
] : null);
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'toDiagnosticsNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.toDiagnosticsNode(name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _ced4.StrutStyle vmObject;

 }

class RTManagedStrutStyle extends _ced4.StrutStyle implements _36c2.Box<_ced4.StrutStyle> {RTManagedStrutStyle({_fac9.String? debugLabel, _fac9.String? fontFamily, _fac9.List<_fac9.String>? fontFamilyFallback, _fac9.double? fontSize, _a643.FontStyle? fontStyle, _a643.FontWeight? fontWeight, _fac9.bool? forceStrutHeight, _fac9.double? height, _fac9.double? leading, _a643.TextLeadingDistribution? leadingDistribution, _fac9.String? package, required this.table, required this.hydroState}) : super(debugLabel: debugLabel,fontFamily: fontFamily,fontFamilyFallback: fontFamilyFallback,fontSize: fontSize,fontStyle: fontStyle,fontWeight: fontWeight,forceStrutHeight: forceStrutHeight,height: height,leading: leading,leadingDistribution: leadingDistribution,package: package) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'fontFamily'
] = _36c2.maybeBoxObject(object: this.fontFamily, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fontSize'
] = _36c2.maybeBoxObject(object: this.fontSize, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'height'
] = _36c2.maybeBoxObject(object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'leadingDistribution'
] = _a643.TextLeadingDistribution.values.indexWhere((x) { return x == this.leadingDistribution; } );
table  [
'fontWeight'
] = _36c2.maybeBoxObject(object: this.fontWeight, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fontStyle'
] = _a643.FontStyle.values.indexWhere((x) { return x == this.fontStyle; } );
table  [
'leading'
] = _36c2.maybeBoxObject(object: this.leading, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'forceStrutHeight'
] = _36c2.maybeBoxObject(object: this.forceStrutHeight, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugLabel'
] = _36c2.maybeBoxObject(object: this.debugLabel, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getFontFamilyFallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.fontFamilyFallback];
});
table['_dart_compareTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _487f.RenderComparison.values.indexWhere((x) {
      return x ==
          super.compareTo(
              _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState));
    })
  ];
});
table['_dart_inheritFromTextStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.inheritFromTextStyle(
            _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toStringShort'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShort(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(
      _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      prefix: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['prefix']
              : null,
          parentState: hydroState));
  return [];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toDiagnosticsNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toDiagnosticsNode(
            name:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['name']
                        : null,
                    parentState: hydroState),
            style: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticsTreeStyle.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['style']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_ced4.StrutStyle unwrap() => this;
_ced4.StrutStyle get vmObject => this;
@_fac9.override _fac9.List<_fac9.String>? get fontFamilyFallback { 
_36c2.Closure closure = table["getFontFamilyFallback"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _487f.RenderComparison compareTo(other) { 
_36c2.Closure closure = table["compareTo"];
return _36c2.maybeUnBoxEnum(values: _487f.RenderComparison.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _ced4.StrutStyle inheritFromTextStyle(other) { 
_36c2.Closure closure = table["inheritFromTextStyle"];
return _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties, {_fac9.String prefix = ''}) { super.debugFillProperties(properties, prefix: prefix);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadStrutStyle({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'strutStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 










return  [RTManagedStrutStyle(table: luaCallerArguments  [
0
], hydroState: hydroState, debugLabel: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'debugLabel'
] : null, fontFamily: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontFamily'
] : null, fontFamilyFallback: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>?, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontFamilyFallback'
] : null, parentState: hydroState), fontSize: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontSize'
] : null?.toDouble(), fontStyle: _36c2.maybeUnBoxEnum(values: _a643.FontStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontStyle'
] : null), fontWeight: _36c2.maybeUnBoxAndBuildArgument<_a643.FontWeight?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fontWeight'
] : null, parentState: hydroState), forceStrutHeight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'forceStrutHeight'
] : null, height: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'height'
] : null?.toDouble(), leading: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'leading'
] : null?.toDouble(), leadingDistribution: _36c2.maybeUnBoxEnum(values: _a643.TextLeadingDistribution.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'leadingDistribution'
] : null), package: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'package'
] : null)]; } );
_36c2.registerBoxer<_ced4.StrutStyle>(boxer: ({required _ced4.StrutStyle vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedStrutStyle(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
