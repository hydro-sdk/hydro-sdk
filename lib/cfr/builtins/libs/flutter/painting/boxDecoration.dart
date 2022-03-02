import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/border_radius.dart' as _9d8a;
import 'package:flutter/src/painting/box_border.dart' as _250a;
import 'package:flutter/src/painting/box_decoration.dart' as _51e4;
import 'package:flutter/src/painting/box_shadow.dart' as _9068;
import 'package:flutter/src/painting/decoration.dart' as _13a5;
import 'package:flutter/src/painting/decoration_image.dart' as _48c4;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/gradient.dart' as _8a60;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBoxDecoration extends _36c2.VMManagedBox<_51e4.BoxDecoration> {VMManagedBoxDecoration({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'color'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'image'
] = _36c2.maybeBoxObject<_48c4.DecorationImage?>(object: vmObject.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'border'
] = _36c2.maybeBoxObject<_250a.BoxBorder?>(object: vmObject.border, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'borderRadius'
] = _36c2.maybeBoxObject<_9d8a.BorderRadiusGeometry?>(object: vmObject.borderRadius, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'boxShadow'
] = _36c2.maybeBoxObject<_fac9.List<_9068.BoxShadow>?>(object: vmObject.boxShadow, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'gradient'
] = _36c2.maybeBoxObject<_8a60.Gradient?>(object: vmObject.gradient, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'backgroundBlendMode'
] = _a643.BlendMode.values.indexWhere((x) { return x == vmObject.backgroundBlendMode; } );
table  [
'shape'
] = _250a.BoxShape.values.indexWhere((x) { return x == vmObject.shape; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 






return [_36c2.maybeBoxObject<_51e4.BoxDecoration>(object: vmObject.copyWith(backgroundBlendMode: _36c2.maybeUnBoxEnum(values: _a643.BlendMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'backgroundBlendMode'
] : null), border: _36c2.maybeUnBoxAndBuildArgument<_250a.BoxBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'border'
] : null, parentState: hydroState), borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadiusGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'borderRadius'
] : null, parentState: hydroState), boxShadow: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9068.BoxShadow>?, _9068.BoxShadow>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'boxShadow'
] : null, parentState: hydroState), color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'color'
] : null, parentState: hydroState), gradient: _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'gradient'
] : null, parentState: hydroState), image: _36c2.maybeUnBoxAndBuildArgument<_48c4.DecorationImage?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, parentState: hydroState), shape: _36c2.maybeUnBoxEnum(values: _250a.BoxShape.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'shape'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugAssertIsValid'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugAssertIsValid(),]; } );
table  [
'getPadding'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.padding;if(returnValue!= null){return [_36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getClipPath'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Path>(object: vmObject.getClipPath(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
2
])), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'scale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_51e4.BoxDecoration>(object: vmObject.scale(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getIsComplex'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isComplex,]; } );
table  [
'lerpFrom'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.lerpFrom(_36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_51e4.BoxDecoration?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'lerpTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.lerpTo(_36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_51e4.BoxDecoration?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'hitTest'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [vmObject.hitTest(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'textDirection'
] : null)),]; } );
table  [
'createBoxPainter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedonChanged=luaCallerArguments  [
1
];return [_36c2.maybeBoxObject<_13a5.BoxPainter>(object: vmObject.createBoxPainter(unpackedonChanged != null ? () => unpackedonChanged.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null ), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
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

final _51e4.BoxDecoration vmObject;

 }

class RTManagedBoxDecoration extends _51e4.BoxDecoration implements _36c2.Box<_51e4.BoxDecoration> {RTManagedBoxDecoration({_a643.BlendMode? backgroundBlendMode, _250a.BoxBorder? border, _9d8a.BorderRadiusGeometry? borderRadius, _fac9.List<_9068.BoxShadow>? boxShadow, _a643.Color? color, _8a60.Gradient? gradient, _48c4.DecorationImage? image, required _250a.BoxShape shape, required this.table, required this.hydroState}) : super(backgroundBlendMode: backgroundBlendMode,border: border,borderRadius: borderRadius,boxShadow: boxShadow,color: color,gradient: gradient,image: image,shape: shape) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'color'
] = _36c2.maybeBoxObject(object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'image'
] = _36c2.maybeBoxObject(object: this.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'border'
] = _36c2.maybeBoxObject(object: this.border, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'borderRadius'
] = _36c2.maybeBoxObject(object: this.borderRadius, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'boxShadow'
] = _36c2.maybeBoxObject(object: this.boxShadow, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'gradient'
] = _36c2.maybeBoxObject(object: this.gradient, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'backgroundBlendMode'
] = _a643.BlendMode.values.indexWhere((x) { return x == this.backgroundBlendMode; } );
table  [
'shape'
] = _250a.BoxShape.values.indexWhere((x) { return x == this.shape; } );
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            backgroundBlendMode: _36c2.maybeUnBoxEnum(
                values: _a643.BlendMode.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['backgroundBlendMode']
                    : null),
            border: _36c2.maybeUnBoxAndBuildArgument<_250a.BoxBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['border'] : null,
                parentState: hydroState),
            borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadiusGeometry?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['borderRadius']
                    : null,
                parentState: hydroState),
            boxShadow: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9068.BoxShadow>?, _9068.BoxShadow>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['boxShadow'] : null,
                parentState: hydroState),
            color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState),
            gradient: _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['gradient'] : null, parentState: hydroState),
            image: _36c2.maybeUnBoxAndBuildArgument<_48c4.DecorationImage?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['image'] : null, parentState: hydroState),
            shape: _36c2.maybeUnBoxEnum(values: _250a.BoxShape.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugAssertIsValid'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugAssertIsValid(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getPadding'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.padding];
});
table['_dart_getClipPath'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getClipPath(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments[2])),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_scale'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.scale(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getIsComplex'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isComplex];
});
table['_dart_lerpFrom'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.lerpFrom(
            _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_lerpTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.lerpTo(
            _36c2.maybeUnBoxAndBuildArgument<_13a5.Decoration?, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_hitTest'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.hitTest(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            textDirection: _36c2.maybeUnBoxEnum(
                values: _a643.TextDirection.values,
                boxedEnum: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['textDirection']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_createBoxPainter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedonChanged = luaCallerArguments[1];
  return [
    _36c2.maybeBoxObject(
        object: super.createBoxPainter(unpackedonChanged != null
            ? () => unpackedonChanged.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )
            : null),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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

_51e4.BoxDecoration unwrap() => this;
_51e4.BoxDecoration get vmObject => this;
@_fac9.override _51e4.BoxDecoration copyWith({_a643.BlendMode? backgroundBlendMode, _250a.BoxBorder? border, _9d8a.BorderRadiusGeometry? borderRadius, _fac9.List? boxShadow, _a643.Color? color, _8a60.Gradient? gradient, _48c4.DecorationImage? image, _250a.BoxShape? shape}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool debugAssertIsValid() { 
_36c2.Closure closure = table["debugAssertIsValid"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _96d1.EdgeInsetsGeometry? get padding { 
_36c2.Closure closure = table["getPadding"];
return _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Path getClipPath(rect, textDirection) { 
_36c2.Closure closure = table["getClipPath"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Path, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _51e4.BoxDecoration scale(factor) { 
_36c2.Closure closure = table["scale"];
return _36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get isComplex { 
_36c2.Closure closure = table["getIsComplex"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _51e4.BoxDecoration? lerpFrom(a, t) { 
_36c2.Closure closure = table["lerpFrom"];
return _36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _51e4.BoxDecoration? lerpTo(b, t) { 
_36c2.Closure closure = table["lerpTo"];
return _36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool hitTest(size, position, {_a643.TextDirection? textDirection}) { 
_36c2.Closure closure = table["hitTest"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _13a5.BoxPainter createBoxPainter([void Function()? onChanged]) { 
_36c2.Closure closure = table["createBoxPainter"];
return _36c2.maybeUnBoxAndBuildArgument<_13a5.BoxPainter, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadBoxDecoration({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'boxDecoration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 







return  [RTManagedBoxDecoration(table: luaCallerArguments  [
0
], hydroState: hydroState, backgroundBlendMode: _36c2.maybeUnBoxEnum(values: _a643.BlendMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'backgroundBlendMode'
] : null), border: _36c2.maybeUnBoxAndBuildArgument<_250a.BoxBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'border'
] : null, parentState: hydroState), borderRadius: _36c2.maybeUnBoxAndBuildArgument<_9d8a.BorderRadiusGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'borderRadius'
] : null, parentState: hydroState), boxShadow: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_9068.BoxShadow>?, _9068.BoxShadow>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'boxShadow'
] : null, parentState: hydroState), color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'color'
] : null, parentState: hydroState), gradient: _36c2.maybeUnBoxAndBuildArgument<_8a60.Gradient?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'gradient'
] : null, parentState: hydroState), image: _36c2.maybeUnBoxAndBuildArgument<_48c4.DecorationImage?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, parentState: hydroState), shape: _36c2.maybeUnBoxEnum(values: _250a.BoxShape.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'shape'
] : null))]; } );
table  [
'boxDecorationLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _51e4.BoxDecoration.lerp(_36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_51e4.BoxDecoration?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_51e4.BoxDecoration?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_51e4.BoxDecoration>(boxer: ({required _51e4.BoxDecoration vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBoxDecoration(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
