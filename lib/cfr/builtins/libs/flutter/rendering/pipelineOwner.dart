import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPipelineOwner extends _36c2.VMManagedBox<_9742.PipelineOwner> {VMManagedPipelineOwner({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'requestVisualUpdate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.requestVisualUpdate();
return []; } );
table  [
'getRootNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.rootNode;if(returnValue!= null){return [_36c2.maybeBoxObject<_b05e.AbstractNode?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setRootNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.rootNode=(_36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getDebugDoingLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingLayout,]; } );
table  [
'flushLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.flushLayout();
return []; } );
table  [
'flushCompositingBits'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.flushCompositingBits();
return []; } );
table  [
'getDebugDoingPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingPaint,]; } );
table  [
'flushPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.flushPaint();
return []; } );
table  [
'getSemanticsOwner'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.semanticsOwner;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.SemanticsOwner?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getDebugOutstandingSemanticsHandles'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugOutstandingSemanticsHandles,]; } );
table  [
'ensureSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedlistener=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'listener'
] : null;return [_36c2.maybeBoxObject<_9742.SemanticsHandle>(object: vmObject.ensureSemantics(listener: unpackedlistener != null ? () => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null ), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'flushSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.flushSemantics();
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _9742.PipelineOwner vmObject;

 }

class RTManagedPipelineOwner extends _9742.PipelineOwner implements _36c2.Box<_9742.PipelineOwner> {RTManagedPipelineOwner({void Function()? onNeedVisualUpdate, void Function()? onSemanticsOwnerCreated, void Function()? onSemanticsOwnerDisposed, required this.table, required this.hydroState}) : super(onNeedVisualUpdate: onNeedVisualUpdate,onSemanticsOwnerCreated: onSemanticsOwnerCreated,onSemanticsOwnerDisposed: onSemanticsOwnerDisposed) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_requestVisualUpdate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.requestVisualUpdate();
  return [];
});
table['_dart_getRootNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.rootNode];
});
table['_dart_setRootNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.rootNode =
      (_36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getDebugDoingLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingLayout];
});
table['_dart_flushLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.flushLayout();
  return [];
});
table['_dart_flushCompositingBits'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.flushCompositingBits();
  return [];
});
table['_dart_getDebugDoingPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingPaint];
});
table['_dart_flushPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.flushPaint();
  return [];
});
table['_dart_getSemanticsOwner'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.semanticsOwner];
});
table['_dart_getDebugOutstandingSemanticsHandles'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugOutstandingSemanticsHandles];
});
table['_dart_ensureSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedlistener =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['listener'] : null;
  return [
    _36c2.maybeBoxObject(
        object: super.ensureSemantics(
            listener: unpackedlistener != null
                ? () => unpackedlistener.dispatch(
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
table['_dart_flushSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.flushSemantics();
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_9742.PipelineOwner unwrap() => this;
_9742.PipelineOwner get vmObject => this;
@_fac9.override void requestVisualUpdate() { 
_36c2.Closure closure = table["requestVisualUpdate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _b05e.AbstractNode? get rootNode { 
_36c2.Closure closure = table["getRootNode"];
return _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set rootNode(value) { 
_36c2.Closure closure = table["setRootNode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingLayout { 
_36c2.Closure closure = table["getDebugDoingLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void flushLayout() { 
_36c2.Closure closure = table["flushLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void flushCompositingBits() { 
_36c2.Closure closure = table["flushCompositingBits"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingPaint { 
_36c2.Closure closure = table["getDebugDoingPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void flushPaint() { 
_36c2.Closure closure = table["flushPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsOwner? get semanticsOwner { 
_36c2.Closure closure = table["getSemanticsOwner"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsOwner?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get debugOutstandingSemanticsHandles { 
_36c2.Closure closure = table["getDebugOutstandingSemanticsHandles"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _9742.SemanticsHandle ensureSemantics({void Function()? listener}) { 
_36c2.Closure closure = table["ensureSemantics"];
return _36c2.maybeUnBoxAndBuildArgument<_9742.SemanticsHandle, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void flushSemantics() { 
_36c2.Closure closure = table["flushSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPipelineOwner({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'pipelineOwner'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedonNeedVisualUpdate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onNeedVisualUpdate'
] : null;
_36c2.Closure? unpackedonSemanticsOwnerCreated=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSemanticsOwnerCreated'
] : null;
_36c2.Closure? unpackedonSemanticsOwnerDisposed=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSemanticsOwnerDisposed'
] : null;
return  [RTManagedPipelineOwner(table: luaCallerArguments  [
0
], hydroState: hydroState, onNeedVisualUpdate: unpackedonNeedVisualUpdate != null ? () => unpackedonNeedVisualUpdate.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSemanticsOwnerCreated: unpackedonSemanticsOwnerCreated != null ? () => unpackedonSemanticsOwnerCreated.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSemanticsOwnerDisposed: unpackedonSemanticsOwnerDisposed != null ? () => unpackedonSemanticsOwnerDisposed.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null )]; } );
_36c2.registerBoxer<_9742.PipelineOwner>(boxer: ({required _9742.PipelineOwner vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPipelineOwner(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
