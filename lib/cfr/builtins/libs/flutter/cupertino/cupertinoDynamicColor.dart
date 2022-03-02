import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/colors.dart' as _0a3b;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoDynamicColor extends _36c2.VMManagedBox<_0a3b.CupertinoDynamicColor> {VMManagedCupertinoDynamicColor({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'color'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.darkColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'highContrastColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.highContrastColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkHighContrastColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.darkHighContrastColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'elevatedColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.elevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkElevatedColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.darkElevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'highContrastElevatedColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.highContrastElevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkHighContrastElevatedColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.darkHighContrastElevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'value'
] = vmObject.value;
table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.value,]; } );
table  [
'resolveFrom'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_0a3b.CupertinoDynamicColor>(object: vmObject.resolveFrom(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
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
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withAlpha'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withAlpha(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withOpacity'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withOpacity(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withRed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withRed(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withGreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withGreen(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'withBlue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Color>(object: vmObject.withBlue(luaCallerArguments  [
1
]), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'computeLuminance'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeLuminance(),]; } );
table  [
'getAlpha'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.alpha,]; } );
table  [
'getOpacity'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.opacity,]; } );
table  [
'getRed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.red,]; } );
table  [
'getGreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.green,]; } );
table  [
'getBlue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.blue,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _0a3b.CupertinoDynamicColor vmObject;

 }

class RTManagedCupertinoDynamicColor extends _0a3b.CupertinoDynamicColor implements _36c2.Box<_0a3b.CupertinoDynamicColor> {RTManagedCupertinoDynamicColor({_fac9.String? debugLabel, required _a643.Color color, required _a643.Color darkColor, required _a643.Color darkElevatedColor, required _a643.Color darkHighContrastColor, required _a643.Color darkHighContrastElevatedColor, required _a643.Color elevatedColor, required _a643.Color highContrastColor, required _a643.Color highContrastElevatedColor, required this.table, required this.hydroState}) : super(debugLabel: debugLabel,color: color,darkColor: darkColor,darkElevatedColor: darkElevatedColor,darkHighContrastColor: darkHighContrastColor,darkHighContrastElevatedColor: darkHighContrastElevatedColor,elevatedColor: elevatedColor,highContrastColor: highContrastColor,highContrastElevatedColor: highContrastElevatedColor) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'color'
] = _36c2.maybeBoxObject(object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkColor'
] = _36c2.maybeBoxObject(object: this.darkColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'highContrastColor'
] = _36c2.maybeBoxObject(object: this.highContrastColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkHighContrastColor'
] = _36c2.maybeBoxObject(object: this.darkHighContrastColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'elevatedColor'
] = _36c2.maybeBoxObject(object: this.elevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkElevatedColor'
] = _36c2.maybeBoxObject(object: this.darkElevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'highContrastElevatedColor'
] = _36c2.maybeBoxObject(object: this.highContrastElevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'darkHighContrastElevatedColor'
] = _36c2.maybeBoxObject(object: this.darkHighContrastElevatedColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'value'
] = _36c2.maybeBoxObject(object: value, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.value];
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
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
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
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
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
});
table['_dart_withAlpha'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withAlpha(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withOpacity'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withOpacity(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withRed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withRed(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withGreen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withGreen(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_withBlue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.withBlue(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeLuminance'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeLuminance(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getAlpha'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.alpha];
});
table['_dart_getOpacity'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.opacity];
});
table['_dart_getRed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.red];
});
table['_dart_getGreen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.green];
});
table['_dart_getBlue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.blue];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_0a3b.CupertinoDynamicColor unwrap() => this;
_0a3b.CupertinoDynamicColor get vmObject => this;
@_fac9.override _fac9.int get value { 
_36c2.Closure closure = table["getValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _0a3b.CupertinoDynamicColor resolveFrom(context) { 
_36c2.Closure closure = table["resolveFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_0a3b.CupertinoDynamicColor, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withAlpha(a) { 
_36c2.Closure closure = table["withAlpha"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withOpacity(opacity) { 
_36c2.Closure closure = table["withOpacity"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withRed(r) { 
_36c2.Closure closure = table["withRed"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withGreen(g) { 
_36c2.Closure closure = table["withGreen"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Color withBlue(b) { 
_36c2.Closure closure = table["withBlue"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double computeLuminance() { 
_36c2.Closure closure = table["computeLuminance"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.int get alpha { 
_36c2.Closure closure = table["getAlpha"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get opacity { 
_36c2.Closure closure = table["getOpacity"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.int get red { 
_36c2.Closure closure = table["getRed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get green { 
_36c2.Closure closure = table["getGreen"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get blue { 
_36c2.Closure closure = table["getBlue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadCupertinoDynamicColor({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'cupertinoDynamicColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 








return  [RTManagedCupertinoDynamicColor(table: luaCallerArguments  [
0
], hydroState: hydroState, debugLabel: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'debugLabel'
] : null, color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'color'
] : null, parentState: hydroState), darkColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'darkColor'
] : null, parentState: hydroState), darkElevatedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'darkElevatedColor'
] : null, parentState: hydroState), darkHighContrastColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'darkHighContrastColor'
] : null, parentState: hydroState), darkHighContrastElevatedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'darkHighContrastElevatedColor'
] : null, parentState: hydroState), elevatedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'elevatedColor'
] : null, parentState: hydroState), highContrastColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'highContrastColor'
] : null, parentState: hydroState), highContrastElevatedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'highContrastElevatedColor'
] : null, parentState: hydroState))]; } );
table  [
'cupertinoDynamicColorResolve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Color>(object: _0a3b.CupertinoDynamicColor.resolve(_36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'cupertinoDynamicColorMaybeResolve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = _0a3b.CupertinoDynamicColor.maybeResolve(_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Color?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_0a3b.CupertinoDynamicColor>(boxer: ({required _0a3b.CupertinoDynamicColor vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedCupertinoDynamicColor(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
