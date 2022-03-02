import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/image_stream.dart' as _f25c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOneFrameImageStreamCompleter extends _36c2.VMManagedBox<_f25c.OneFrameImageStreamCompleter> {VMManagedOneFrameImageStreamCompleter({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'debugLabel'
] = vmObject.debugLabel;
table  [
'addListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.addListener(_36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStreamListener, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'keepAlive'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_f25c.ImageStreamCompleterHandle>(object: vmObject.keepAlive(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'removeListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.removeListener(_36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStreamListener, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'addOnLastListenerRemovedCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedcallback=luaCallerArguments  [
1
];vmObject.addOnLastListenerRemovedCallback(() => unpackedcallback.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'removeOnLastListenerRemovedCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedcallback=luaCallerArguments  [
1
];vmObject.removeOnLastListenerRemovedCallback(() => unpackedcallback.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'reportError'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure? unpackedinformationCollector=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'informationCollector'
] : null;


vmObject.reportError(context: _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'context'
] : null, parentState: hydroState), informationCollector: unpackedinformationCollector != null ? () => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(unpackedinformationCollector.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState) : null , silent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'silent'
] : null, stack: _36c2.maybeUnBoxAndBuildArgument<_fac9.StackTrace?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'stack'
] : null, parentState: hydroState), exception: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'exception'
] : null, parentState: hydroState));
return []; } );
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
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _f25c.OneFrameImageStreamCompleter vmObject;

 }

class RTManagedOneFrameImageStreamCompleter extends _f25c.OneFrameImageStreamCompleter implements _36c2.Box<_f25c.OneFrameImageStreamCompleter> {RTManagedOneFrameImageStreamCompleter(_7de1.Future<_f25c.ImageInfo> image, {_fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector, required this.table, required this.hydroState}) : super(image,informationCollector: informationCollector) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'debugLabel'
] = _36c2.maybeBoxObject(object: debugLabel, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_addListener'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addListener(_36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStreamListener,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_keepAlive'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.keepAlive(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_removeListener'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.removeListener(_36c2.maybeUnBoxAndBuildArgument<
      _f25c.ImageStreamListener,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_addOnLastListenerRemovedCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[1];
  super.addOnLastListenerRemovedCallback(() => unpackedcallback.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_removeOnLastListenerRemovedCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[1];
  super.removeOnLastListenerRemovedCallback(() => unpackedcallback.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_setImage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.setImage(
      _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageInfo, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_reportError'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
      ? luaCallerArguments[1]['informationCollector']
      : null;

  super.reportError(
      context:
          _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['context']
                  : null,
              parentState: hydroState),
      informationCollector: unpackedinformationCollector != null
          ? () => _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.Iterable<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(
              unpackedinformationCollector.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState)
          : null,
      silent: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['silent'] : null,
          parentState: hydroState),
      stack: _36c2.maybeUnBoxAndBuildArgument<_fac9.StackTrace?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stack'] : null,
          parentState: hydroState),
      exception: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['exception'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_reportImageChunkEvent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.reportImageChunkEvent(
      _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageChunkEvent, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_getHasListeners'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasListeners];
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
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_f25c.OneFrameImageStreamCompleter unwrap() => this;
_f25c.OneFrameImageStreamCompleter get vmObject => this;
@_fac9.override void addListener(listener) { 
_36c2.Closure closure = table["addListener"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _f25c.ImageStreamCompleterHandle keepAlive() { 
_36c2.Closure closure = table["keepAlive"];
return _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStreamCompleterHandle, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void removeListener(listener) { 
_36c2.Closure closure = table["removeListener"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void addOnLastListenerRemovedCallback(callback) { 
_36c2.Closure closure = table["addOnLastListenerRemovedCallback"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void removeOnLastListenerRemovedCallback(callback) { 
_36c2.Closure closure = table["removeOnLastListenerRemovedCallback"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void setImage(image) { 
_36c2.Closure closure = table["setImage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void reportError({_eaf3.DiagnosticsNode? context, _fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector, _fac9.bool silent = false, _fac9.StackTrace? stack, required _fac9.Object exception}) { 
_36c2.Closure closure = table["reportError"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void reportImageChunkEvent(event) { 
_36c2.Closure closure = table["reportImageChunkEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(description) { super.debugFillProperties(description);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasListeners { 
_36c2.Closure closure = table["getHasListeners"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadOneFrameImageStreamCompleter({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'oneFrameImageStreamCompleter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
_36c2.Closure? unpackedinformationCollector=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'informationCollector'
] : null;
return  [RTManagedOneFrameImageStreamCompleter(_36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_f25c.ImageInfo>, _f25c.ImageInfo>(luaCallerArguments  [
1
], parentState: hydroState), table: luaCallerArguments  [
0
], hydroState: hydroState, informationCollector: unpackedinformationCollector != null ? () => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(unpackedinformationCollector.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState) : null )]; } );
_36c2.registerBoxer<_f25c.OneFrameImageStreamCompleter>(boxer: ({required _f25c.OneFrameImageStreamCompleter vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedOneFrameImageStreamCompleter(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
