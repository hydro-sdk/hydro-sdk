import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/box_fit.dart' as _fb77;
import 'package:flutter/src/painting/decoration_image.dart' as _48c4;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/painting/image_stream.dart' as _f25c;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/image.dart' as _2059;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedImage extends _36c2.VMManagedBox<_2059.Image> {VMManagedImage({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'image'
] = _36c2.maybeBoxObject<_61fa.ImageProvider>(object: vmObject.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'width'
] = vmObject.width;
table  [
'height'
] = vmObject.height;
table  [
'color'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'opacity'
] = _36c2.maybeBoxObject<_86ca.Animation?>(object: vmObject.opacity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'filterQuality'
] = _a643.FilterQuality.values.indexWhere((x) { return x == vmObject.filterQuality; } );
table  [
'colorBlendMode'
] = _a643.BlendMode.values.indexWhere((x) { return x == vmObject.colorBlendMode; } );
table  [
'fit'
] = _fb77.BoxFit.values.indexWhere((x) { return x == vmObject.fit; } );
table  [
'alignment'
] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(object: vmObject.alignment, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'repeat'
] = _48c4.ImageRepeat.values.indexWhere((x) { return x == vmObject.repeat; } );
table  [
'centerSlice'
] = _36c2.maybeBoxObject<_a643.Rect?>(object: vmObject.centerSlice, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'matchTextDirection'
] = vmObject.matchTextDirection;
table  [
'gaplessPlayback'
] = vmObject.gaplessPlayback;
table  [
'semanticLabel'
] = vmObject.semanticLabel;
table  [
'excludeFromSemantics'
] = vmObject.excludeFromSemantics;
table  [
'isAntiAlias'
] = vmObject.isAntiAlias;
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.State>(object: vmObject.createState(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.StatefulElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toStringShallow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.toStringShallow(joiner: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'joiner'
] : null, minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'toStringDeep'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [vmObject.toStringDeep(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null), prefixLineOne: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixLineOne'
] : null, prefixOtherLines: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixOtherLines'
] : null),]; } );
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
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _2059.Image vmObject;

 }

class RTManagedImage extends _2059.Image implements _36c2.Box<_2059.Image> {RTManagedImage({required _ca85.AlignmentGeometry alignment, _a643.Rect? centerSlice, _a643.Color? color, _a643.BlendMode? colorBlendMode, _e2dc.Widget Function(_e2dc.BuildContext context, _fac9.Object error, _fac9.StackTrace? stackTrace)? errorBuilder, required _fac9.bool excludeFromSemantics, required _a643.FilterQuality filterQuality, _fb77.BoxFit? fit, _e2dc.Widget Function(_e2dc.BuildContext context, _e2dc.Widget child, _fac9.int? frame, _fac9.bool wasSynchronouslyLoaded)? frameBuilder, required _fac9.bool gaplessPlayback, _fac9.double? height, required _fac9.bool isAntiAlias, _ab4a.Key? key, _e2dc.Widget Function(_e2dc.BuildContext context, _e2dc.Widget child, _f25c.ImageChunkEvent? loadingProgress)? loadingBuilder, required _fac9.bool matchTextDirection, _86ca.Animation<_fac9.double>? opacity, required _48c4.ImageRepeat repeat, _fac9.String? semanticLabel, _fac9.double? width, required _61fa.ImageProvider<_fac9.Object> image, required this.table, required this.hydroState}) : super(alignment: alignment,centerSlice: centerSlice,color: color,colorBlendMode: colorBlendMode,errorBuilder: errorBuilder,excludeFromSemantics: excludeFromSemantics,filterQuality: filterQuality,fit: fit,frameBuilder: frameBuilder,gaplessPlayback: gaplessPlayback,height: height,isAntiAlias: isAntiAlias,key: key,loadingBuilder: loadingBuilder,matchTextDirection: matchTextDirection,opacity: opacity,repeat: repeat,semanticLabel: semanticLabel,width: width,image: image) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'image'
] = _36c2.maybeBoxObject(object: this.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'width'
] = _36c2.maybeBoxObject(object: this.width, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'height'
] = _36c2.maybeBoxObject(object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'color'
] = _36c2.maybeBoxObject(object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'opacity'
] = _36c2.maybeBoxObject(object: this.opacity, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'filterQuality'
] = _a643.FilterQuality.values.indexWhere((x) { return x == this.filterQuality; } );
table  [
'colorBlendMode'
] = _a643.BlendMode.values.indexWhere((x) { return x == this.colorBlendMode; } );
table  [
'fit'
] = _fb77.BoxFit.values.indexWhere((x) { return x == this.fit; } );
table  [
'alignment'
] = _36c2.maybeBoxObject(object: this.alignment, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'repeat'
] = _48c4.ImageRepeat.values.indexWhere((x) { return x == this.repeat; } );
table  [
'centerSlice'
] = _36c2.maybeBoxObject(object: this.centerSlice, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'matchTextDirection'
] = _36c2.maybeBoxObject(object: this.matchTextDirection, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'gaplessPlayback'
] = _36c2.maybeBoxObject(object: this.gaplessPlayback, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticLabel'
] = _36c2.maybeBoxObject(object: this.semanticLabel, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'excludeFromSemantics'
] = _36c2.maybeBoxObject(object: this.excludeFromSemantics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isAntiAlias'
] = _36c2.maybeBoxObject(object: this.isAntiAlias, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_createState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createState(),
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
table['_dart_createElement'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createElement(),
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
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toStringShallow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShallow(
            joiner:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['joiner']
                        : null,
                    parentState: hydroState),
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toStringDeep'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['prefixLineOne']
                        : null,
                    parentState: hydroState),
            prefixOtherLines:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['prefixOtherLines']
                        : null,
                    parentState: hydroState)),
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
table['_dart_debugDescribeChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugDescribeChildren(),
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_2059.Image unwrap() => this;
_2059.Image get vmObject => this;
@_fac9.override _e2dc.State<_2059.Image> createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_2059.Image>, _2059.Image>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.StatefulElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShallow({_fac9.String joiner = ', ', _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) { 
_36c2.Closure closure = table["toStringShallow"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringDeep({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug, _fac9.String prefixLineOne = '', _fac9.String? prefixOtherLines}) { 
_36c2.Closure closure = table["toStringDeep"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadImage({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'image'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



_36c2.Closure? unpackederrorBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'errorBuilder'
] : null;



_36c2.Closure? unpackedframeBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'frameBuilder'
] : null;




_36c2.Closure? unpackedloadingBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'loadingBuilder'
] : null;






return  [RTManagedImage(table: luaCallerArguments  [
0
], hydroState: hydroState, alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alignment'
] : null, parentState: hydroState), centerSlice: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'centerSlice'
] : null, parentState: hydroState), color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'color'
] : null, parentState: hydroState), colorBlendMode: _36c2.maybeUnBoxEnum(values: _a643.BlendMode.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'colorBlendMode'
] : null), errorBuilder: unpackederrorBuilder != null ? (context, error, stackTrace) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackederrorBuilder.dispatch([luaCallerArguments[0],context,error,stackTrace],parentState:hydroState,)[0], parentState: hydroState) : null , excludeFromSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'excludeFromSemantics'
] : null, filterQuality: _36c2.maybeUnBoxEnum(values: _a643.FilterQuality.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'filterQuality'
] : null), fit: _36c2.maybeUnBoxEnum(values: _fb77.BoxFit.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fit'
] : null), frameBuilder: unpackedframeBuilder != null ? (context, child, frame, wasSynchronouslyLoaded) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedframeBuilder.dispatch([luaCallerArguments[0],context,child,frame,wasSynchronouslyLoaded],parentState:hydroState,)[0], parentState: hydroState) : null , gaplessPlayback: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'gaplessPlayback'
] : null, height: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'height'
] : null?.toDouble(), isAntiAlias: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'isAntiAlias'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), loadingBuilder: unpackedloadingBuilder != null ? (context, child, loadingProgress) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedloadingBuilder.dispatch([luaCallerArguments[0],context,child,loadingProgress],parentState:hydroState,)[0], parentState: hydroState) : null , matchTextDirection: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'matchTextDirection'
] : null, opacity: _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>?, _fac9.double>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'opacity'
] : null, parentState: hydroState), repeat: _36c2.maybeUnBoxEnum(values: _48c4.ImageRepeat.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'repeat'
] : null), semanticLabel: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'semanticLabel'
] : null, width: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'width'
] : null?.toDouble(), image: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageProvider<_fac9.Object>, _fac9.Object>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_2059.Image>(boxer: ({required _2059.Image vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedImage(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
