import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/box_fit.dart' as _fb77;
import 'package:flutter/src/painting/decoration_image.dart' as _48c4;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/widgets/fade_in_image.dart' as _4885;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFadeInImage extends _36c2.VMManagedBox<_4885.FadeInImage> {VMManagedFadeInImage({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'placeholder'
] = _36c2.maybeBoxObject<_61fa.ImageProvider>(object: vmObject.placeholder, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'image'
] = _36c2.maybeBoxObject<_61fa.ImageProvider>(object: vmObject.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeOutDuration'
] = _36c2.maybeBoxObject<_fac9.Duration>(object: vmObject.fadeOutDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeOutCurve'
] = _36c2.maybeBoxObject<_8c47.Curve>(object: vmObject.fadeOutCurve, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeInDuration'
] = _36c2.maybeBoxObject<_fac9.Duration>(object: vmObject.fadeInDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeInCurve'
] = _36c2.maybeBoxObject<_8c47.Curve>(object: vmObject.fadeInCurve, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'width'
] = vmObject.width;
table  [
'height'
] = vmObject.height;
table  [
'fit'
] = _fb77.BoxFit.values.indexWhere((x) { return x == vmObject.fit; } );
table  [
'placeholderFit'
] = _fb77.BoxFit.values.indexWhere((x) { return x == vmObject.placeholderFit; } );
table  [
'alignment'
] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry>(object: vmObject.alignment, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'repeat'
] = _48c4.ImageRepeat.values.indexWhere((x) { return x == vmObject.repeat; } );
table  [
'matchTextDirection'
] = vmObject.matchTextDirection;
table  [
'excludeFromSemantics'
] = vmObject.excludeFromSemantics;
table  [
'imageSemanticLabel'
] = vmObject.imageSemanticLabel;
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.State>(object: vmObject.createState(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.StatefulElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
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

final _4885.FadeInImage vmObject;

 }

class RTManagedFadeInImage extends _4885.FadeInImage implements _36c2.Box<_4885.FadeInImage> {RTManagedFadeInImage({required _ca85.AlignmentGeometry alignment, required _fac9.bool excludeFromSemantics, required _8c47.Curve fadeInCurve, required _fac9.Duration fadeInDuration, required _8c47.Curve fadeOutCurve, required _fac9.Duration fadeOutDuration, _fb77.BoxFit? fit, _fac9.double? height, _e2dc.Widget Function(_e2dc.BuildContext context, _fac9.Object error, _fac9.StackTrace? stackTrace)? imageErrorBuilder, _fac9.String? imageSemanticLabel, _ab4a.Key? key, required _fac9.bool matchTextDirection, _e2dc.Widget Function(_e2dc.BuildContext context, _fac9.Object error, _fac9.StackTrace? stackTrace)? placeholderErrorBuilder, _fb77.BoxFit? placeholderFit, required _48c4.ImageRepeat repeat, _fac9.double? width, required _61fa.ImageProvider<_fac9.Object> image, required _61fa.ImageProvider<_fac9.Object> placeholder, required this.table, required this.hydroState}) : super(alignment: alignment,excludeFromSemantics: excludeFromSemantics,fadeInCurve: fadeInCurve,fadeInDuration: fadeInDuration,fadeOutCurve: fadeOutCurve,fadeOutDuration: fadeOutDuration,fit: fit,height: height,imageErrorBuilder: imageErrorBuilder,imageSemanticLabel: imageSemanticLabel,key: key,matchTextDirection: matchTextDirection,placeholderErrorBuilder: placeholderErrorBuilder,placeholderFit: placeholderFit,repeat: repeat,width: width,image: image,placeholder: placeholder) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'placeholder'
] = _36c2.maybeBoxObject(object: this.placeholder, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'image'
] = _36c2.maybeBoxObject(object: this.image, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeOutDuration'
] = _36c2.maybeBoxObject(object: this.fadeOutDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeOutCurve'
] = _36c2.maybeBoxObject(object: this.fadeOutCurve, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeInDuration'
] = _36c2.maybeBoxObject(object: this.fadeInDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeInCurve'
] = _36c2.maybeBoxObject(object: this.fadeInCurve, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'width'
] = _36c2.maybeBoxObject(object: this.width, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'height'
] = _36c2.maybeBoxObject(object: this.height, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fit'
] = _fb77.BoxFit.values.indexWhere((x) { return x == this.fit; } );
table  [
'placeholderFit'
] = _fb77.BoxFit.values.indexWhere((x) { return x == this.placeholderFit; } );
table  [
'alignment'
] = _36c2.maybeBoxObject(object: this.alignment, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'repeat'
] = _48c4.ImageRepeat.values.indexWhere((x) { return x == this.repeat; } );
table  [
'matchTextDirection'
] = _36c2.maybeBoxObject(object: this.matchTextDirection, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'excludeFromSemantics'
] = _36c2.maybeBoxObject(object: this.excludeFromSemantics, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'imageSemanticLabel'
] = _36c2.maybeBoxObject(object: this.imageSemanticLabel, hydroState: hydroState, table: _36c2.HydroTable());
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
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
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

_4885.FadeInImage unwrap() => this;
_4885.FadeInImage get vmObject => this;
@_fac9.override _e2dc.State<_4885.FadeInImage> createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_4885.FadeInImage>, _4885.FadeInImage>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.StatefulElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
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
void loadFadeInImage({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'fadeInImage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 







_36c2.Closure? unpackedimageErrorBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'imageErrorBuilder'
] : null;



_36c2.Closure? unpackedplaceholderErrorBuilder=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'placeholderErrorBuilder'
] : null;





return  [RTManagedFadeInImage(table: luaCallerArguments  [
0
], hydroState: hydroState, alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alignment'
] : null, parentState: hydroState), excludeFromSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'excludeFromSemantics'
] : null, fadeInCurve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fadeInCurve'
] : null, parentState: hydroState), fadeInDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fadeInDuration'
] : null, parentState: hydroState), fadeOutCurve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fadeOutCurve'
] : null, parentState: hydroState), fadeOutDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fadeOutDuration'
] : null, parentState: hydroState), fit: _36c2.maybeUnBoxEnum(values: _fb77.BoxFit.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fit'
] : null), height: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'height'
] : null?.toDouble(), imageErrorBuilder: unpackedimageErrorBuilder != null ? (context, error, stackTrace) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedimageErrorBuilder.dispatch([luaCallerArguments[0],context,error,stackTrace],parentState:hydroState,)[0], parentState: hydroState) : null , imageSemanticLabel: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'imageSemanticLabel'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), matchTextDirection: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'matchTextDirection'
] : null, placeholderErrorBuilder: unpackedplaceholderErrorBuilder != null ? (context, error, stackTrace) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(unpackedplaceholderErrorBuilder.dispatch([luaCallerArguments[0],context,error,stackTrace],parentState:hydroState,)[0], parentState: hydroState) : null , placeholderFit: _36c2.maybeUnBoxEnum(values: _fb77.BoxFit.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'placeholderFit'
] : null), repeat: _36c2.maybeUnBoxEnum(values: _48c4.ImageRepeat.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'repeat'
] : null), width: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'width'
] : null?.toDouble(), image: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageProvider<_fac9.Object>, _fac9.Object>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, parentState: hydroState), placeholder: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageProvider<_fac9.Object>, _fac9.Object>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'placeholder'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_4885.FadeInImage>(boxer: ({required _4885.FadeInImage vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedFadeInImage(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
