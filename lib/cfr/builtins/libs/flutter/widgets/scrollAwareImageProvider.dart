import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:typed_data' as _7537;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/image_cache.dart' as _2e0e;
import 'package:flutter/src/painting/image_provider.dart' as _61fa;
import 'package:flutter/src/painting/image_stream.dart' as _f25c;
import 'package:flutter/src/widgets/disposable_build_context.dart' as _4544;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart' as _879d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollAwareImageProvider extends _36c2.VMManagedBox<_879d.ScrollAwareImageProvider<_fac9.Object>> {VMManagedScrollAwareImageProvider({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'context'
] = _36c2.maybeBoxObject<_4544.DisposableBuildContext>(object: vmObject.context, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'imageProvider'
] = _36c2.maybeBoxObject<_61fa.ImageProvider>(object: vmObject.imageProvider, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'resolveStreamForKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


_36c2.Closure unpackedhandleError=luaCallerArguments  [
4
];vmObject.resolveStreamForKey(_36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStream, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
], (exception, stackTrace) => unpackedhandleError.dispatch([luaCallerArguments[0],exception,stackTrace],parentState:hydroState,));
return []; } );
table  [
'obtainKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.obtainKey(_36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'resolve'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_f25c.ImageStream>(object: vmObject.resolve(_36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'obtainCacheStatus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandleError=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'handleError'
] : null;
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.obtainCacheStatus(handleError: unpackedhandleError != null ? (exception, stackTrace) => unpackedhandleError.dispatch([luaCallerArguments[0],exception,stackTrace],parentState:hydroState,) : null , configuration: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'configuration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'evict'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.evict(cache: _36c2.maybeUnBoxAndBuildArgument<_2e0e.ImageCache?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cache'
] : null, parentState: hydroState), configuration: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'configuration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _879d.ScrollAwareImageProvider<_fac9.Object> vmObject;

 }

class RTManagedScrollAwareImageProvider extends _879d.ScrollAwareImageProvider implements _36c2.Box<_879d.ScrollAwareImageProvider> {RTManagedScrollAwareImageProvider({required _4544.DisposableBuildContext<_e2dc.State<_e2dc.StatefulWidget>> context, required _61fa.ImageProvider<_fac9.Object> imageProvider, required this.table, required this.hydroState}) : super(context: context,imageProvider: imageProvider) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'context'
] = _36c2.maybeBoxObject(object: this.context, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'imageProvider'
] = _36c2.maybeBoxObject(object: this.imageProvider, hydroState: hydroState, table: _36c2.HydroTable());

table['_dart_resolveStreamForKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedhandleError = luaCallerArguments[4];
  super.resolveStreamForKey(
      _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageConfiguration, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStream, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState),
      luaCallerArguments[3],
      (exception, stackTrace) => unpackedhandleError.dispatch(
            [luaCallerArguments[0], exception, stackTrace],
            parentState: hydroState,
          ));
  return [];
});
table['_dart_obtainKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.obtainKey(_36c2.maybeUnBoxAndBuildArgument<
            _61fa.ImageConfiguration,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_resolve'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.resolve(_36c2.maybeUnBoxAndBuildArgument<
            _61fa.ImageConfiguration,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_createStream'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createStream(_36c2.maybeUnBoxAndBuildArgument<
            _61fa.ImageConfiguration,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_obtainCacheStatus'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandleError = luaCallerArguments.length >= 2
      ? luaCallerArguments[1]['handleError']
      : null;
  return [
    _36c2.maybeBoxObject(
        object: super.obtainCacheStatus(
            handleError: unpackedhandleError != null
                ? (exception, stackTrace) => unpackedhandleError.dispatch(
                      [luaCallerArguments[0], exception, stackTrace],
                      parentState: hydroState,
                    )
                : null,
            configuration: _36c2.maybeUnBoxAndBuildArgument<
                    _61fa.ImageConfiguration, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['configuration']
                    : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_evict'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.evict(
            cache: _36c2
                .maybeUnBoxAndBuildArgument<_2e0e.ImageCache?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['cache']
                        : null,
                    parentState: hydroState),
            configuration: _36c2.maybeUnBoxAndBuildArgument<
                    _61fa.ImageConfiguration, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['configuration']
                    : null,
                parentState: hydroState)),
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

_879d.ScrollAwareImageProvider unwrap() => this;
_879d.ScrollAwareImageProvider get vmObject => this;
@_fac9.override void resolveStreamForKey(configuration, stream, key, handleError) { 
_36c2.Closure closure = table["resolveStreamForKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<_fac9.Object> obtainKey(configuration) { 
_36c2.Closure closure = table["obtainKey"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.Object>, _fac9.Object>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _f25c.ImageStream createStream(configuration) { 
_36c2.Closure closure = table["createStream"];
return _36c2.maybeUnBoxAndBuildArgument<_f25c.ImageStream, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_2e0e.ImageCacheStatus?> obtainCacheStatus({void Function(_fac9.Object exception, _fac9.StackTrace? stackTrace)? handleError, required _61fa.ImageConfiguration configuration}) { 
_36c2.Closure closure = table["obtainCacheStatus"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_2e0e.ImageCacheStatus?>, _2e0e.ImageCacheStatus?>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<_fac9.bool> evict({_2e0e.ImageCache? cache, _61fa.ImageConfiguration configuration = _61fa.ImageConfiguration.empty}) { 
_36c2.Closure closure = table["evict"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadScrollAwareImageProvider({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'scrollAwareImageProvider'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedScrollAwareImageProvider(table: luaCallerArguments  [
0
], hydroState: hydroState, context: _36c2.maybeUnBoxAndBuildArgument<_4544.DisposableBuildContext<_e2dc.State<_e2dc.StatefulWidget>>, _e2dc.State<_e2dc.StatefulWidget>>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'context'
] : null, parentState: hydroState), imageProvider: _36c2.maybeUnBoxAndBuildArgument<_61fa.ImageProvider<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'imageProvider'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_879d.ScrollAwareImageProvider>(boxer: ({required _879d.ScrollAwareImageProvider vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedScrollAwareImageProvider(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
