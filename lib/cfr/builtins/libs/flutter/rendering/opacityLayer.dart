import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/rendering/layer.dart' as _7d70;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOpacityLayer extends _36c2.VMManagedBox<_7d70.OpacityLayer> {VMManagedOpacityLayer({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'debugCreator'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.debugCreator, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getAlpha'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.alpha;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setAlpha'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.alpha=(luaCallerArguments  [
1
]);
return []; } );
table  [
'addToScene'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.addToScene(_36c2.maybeUnBoxAndBuildArgument<_a643.SceneBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'findAnnotations'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [vmObject.findAnnotations(_36c2.maybeUnBoxAndBuildArgument<_7d70.AnnotationResult<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), onlyFirst: luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'onlyFirst'
] : null),]; } );
table  [
'applyTransform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.applyTransform(_36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'toImage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.toImage(_36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), pixelRatio: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'pixelRatio'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.offset=(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'buildScene'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Scene>(object: vmObject.buildScene(_36c2.maybeUnBoxAndBuildArgument<_a643.SceneBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'updateSubtreeNeedsAddToScene'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.updateSubtreeNeedsAddToScene();
return []; } );
table  [
'attach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attach(_36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'detach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.detach();
return []; } );
table  [
'append'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.append(_36c2.maybeUnBoxAndBuildArgument<_7d70.Layer, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'removeAllChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.removeAllChildren();
return []; } );
table  [
'addChildrenToScene'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.addChildrenToScene(_36c2.maybeUnBoxAndBuildArgument<_a643.SceneBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugDescribeChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.debugDescribeChildren().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getFirstChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.firstChild;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.Layer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getLastChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.lastChild;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.Layer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getHasChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasChildren,]; } );
table  [
'dropChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dropChild(_36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'adoptChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.adoptChild(_36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'remove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.remove();
return []; } );
table  [
'find'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.find(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'findAllAnnotations'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7d70.AnnotationResult>(object: vmObject.findAllAnnotations(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'getDebugDisposed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDisposed,]; } );
table  [
'getDebugHandleCount'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugHandleCount,]; } );
table  [
'getParent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.parent;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.ContainerLayer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getNextSibling'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.nextSibling;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.Layer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getPreviousSibling'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.previousSibling;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.Layer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
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
'redepthChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.redepthChildren();
return []; } );
table  [
'getDepth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.depth,]; } );
table  [
'getOwner'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.owner;if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Object?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getAttached'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.attached,]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _7d70.OpacityLayer vmObject;

 }

class RTManagedOpacityLayer extends _7d70.OpacityLayer implements _36c2.Box<_7d70.OpacityLayer> {RTManagedOpacityLayer({_fac9.int? alpha, required _a643.Offset offset, required this.table, required this.hydroState}) : super(alpha: alpha,offset: offset) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'debugCreator'
] = _36c2.maybeBoxObject(object: debugCreator, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getAlpha'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.alpha];
});
table['_dart_setAlpha'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.alpha = (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_addToScene'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addToScene(
      _36c2.maybeUnBoxAndBuildArgument<_a643.SceneBuilder, _fac9.dynamic>(
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
table['_dart_findAnnotations'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.findAnnotations(
            _36c2.maybeUnBoxAndBuildArgument<
                _7d70.AnnotationResult<_fac9.dynamic>,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            onlyFirst:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['onlyFirst']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_applyTransform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.applyTransform(
      _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_toImage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toImage(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            pixelRatio:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['pixelRatio']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.offset];
});
table['_dart_setOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.offset = (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_buildScene'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.buildScene(
            _36c2.maybeUnBoxAndBuildArgument<_a643.SceneBuilder, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_updateSubtreeNeedsAddToScene'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.updateSubtreeNeedsAddToScene();
  return [];
});
table['_dart_attach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attach(_36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_detach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.detach();
  return [];
});
table['_dart_append'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.append(_36c2.maybeUnBoxAndBuildArgument<_7d70.Layer, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_removeAllChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.removeAllChildren();
  return [];
});
table['_dart_addChildrenToScene'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addChildrenToScene(
      _36c2.maybeUnBoxAndBuildArgument<_a643.SceneBuilder, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
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
table['_dart_getFirstChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.firstChild];
});
table['_dart_getLastChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.lastChild];
});
table['_dart_getHasChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasChildren];
});
table['_dart_markNeedsAddToScene'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsAddToScene();
  return [];
});
table['_dart_dropChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dropChild(
      _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_adoptChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.adoptChild(
      _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_remove'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.remove();
  return [];
});
table['_dart_find'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    super.find(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        luaCallerArguments[1],
        parentState: hydroState))
  ];
});
table['_dart_findAllAnnotations'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.findAllAnnotations(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
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
table['_dart_getDebugDisposed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDisposed];
});
table['_dart_getDebugHandleCount'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugHandleCount];
});
table['_dart_getParent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.parent];
});
table['_dart_getAlwaysNeedsAddToScene'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.alwaysNeedsAddToScene];
});
table['_dart_getEngineLayer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.engineLayer];
});
table['_dart_setEngineLayer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.engineLayer =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.EngineLayer?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getNextSibling'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.nextSibling];
});
table['_dart_getPreviousSibling'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.previousSibling];
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
table['_dart_redepthChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.redepthChild(
      _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_redepthChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.redepthChildren();
  return [];
});
table['_dart_getDepth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.depth];
});
table['_dart_getOwner'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.owner];
});
table['_dart_getAttached'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attached];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_7d70.OpacityLayer unwrap() => this;
_7d70.OpacityLayer get vmObject => this;
@_fac9.override _fac9.int? get alpha { 
_36c2.Closure closure = table["getAlpha"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set alpha(value) { 
_36c2.Closure closure = table["setAlpha"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void addToScene(builder) { 
_36c2.Closure closure = table["addToScene"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool findAnnotations<S extends _fac9.Object>(result, localPosition, {required _fac9.bool onlyFirst}) { 
_36c2.Closure closure = table["findAnnotations"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void applyTransform(child, transform) { 
_36c2.Closure closure = table["applyTransform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<_a643.Image> toImage(bounds, {_fac9.double pixelRatio = 1.0}) { 
_36c2.Closure closure = table["toImage"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<_a643.Image>, _a643.Image>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset get offset { 
_36c2.Closure closure = table["getOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set offset(value) { 
_36c2.Closure closure = table["setOffset"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Scene buildScene(builder) { 
_36c2.Closure closure = table["buildScene"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Scene, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void updateSubtreeNeedsAddToScene() { 
_36c2.Closure closure = table["updateSubtreeNeedsAddToScene"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void attach(owner) { super.attach(owner);
_36c2.Closure closure = table["attach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void detach() { super.detach();
_36c2.Closure closure = table["detach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void append(child) { 
_36c2.Closure closure = table["append"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void removeAllChildren() { 
_36c2.Closure closure = table["removeAllChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void addChildrenToScene(builder) { 
_36c2.Closure closure = table["addChildrenToScene"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_7d70.Layer> depthFirstIterateChildren() { 
_36c2.Closure closure = table["depthFirstIterateChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_7d70.Layer>, _7d70.Layer>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7d70.Layer? get firstChild { 
_36c2.Closure closure = table["getFirstChild"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7d70.Layer? get lastChild { 
_36c2.Closure closure = table["getLastChild"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get hasChildren { 
_36c2.Closure closure = table["getHasChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsAddToScene() { 
_36c2.Closure closure = table["markNeedsAddToScene"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugMarkClean() { 
_36c2.Closure closure = table["debugMarkClean"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dropChild(child) { super.dropChild(child);
_36c2.Closure closure = table["dropChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void adoptChild(child) { super.adoptChild(child);
_36c2.Closure closure = table["adoptChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void remove() { super.remove();
_36c2.Closure closure = table["remove"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override S? find<S extends _fac9.Object>(localPosition) { 
_36c2.Closure closure = table["find"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.AnnotationResult<S> findAllAnnotations<S extends _fac9.Object>(localPosition) { 
_36c2.Closure closure = table["findAllAnnotations"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.AnnotationResult<S>, S>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDisposed { 
_36c2.Closure closure = table["getDebugDisposed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get debugHandleCount { 
_36c2.Closure closure = table["getDebugHandleCount"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.ContainerLayer? get parent { 
_36c2.Closure closure = table["getParent"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get alwaysNeedsAddToScene { 
_36c2.Closure closure = table["getAlwaysNeedsAddToScene"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get debugSubtreeNeedsAddToScene { 
_36c2.Closure closure = table["getDebugSubtreeNeedsAddToScene"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.EngineLayer? get engineLayer { 
_36c2.Closure closure = table["getEngineLayer"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.EngineLayer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set engineLayer(value) { 
_36c2.Closure closure = table["setEngineLayer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.Layer? get nextSibling { 
_36c2.Closure closure = table["getNextSibling"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7d70.Layer? get previousSibling { 
_36c2.Closure closure = table["getPreviousSibling"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.Layer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
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
@_fac9.override void redepthChild(child) { 
_36c2.Closure closure = table["redepthChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void redepthChildren() { 
_36c2.Closure closure = table["redepthChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get depth { 
_36c2.Closure closure = table["getDepth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Object? get owner { 
_36c2.Closure closure = table["getOwner"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get attached { 
_36c2.Closure closure = table["getAttached"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadOpacityLayer({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'opacityLayer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return  [RTManagedOpacityLayer(table: luaCallerArguments  [
0
], hydroState: hydroState, alpha: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'alpha'
] : null, offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_7d70.OpacityLayer>(boxer: ({required _7d70.OpacityLayer vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedOpacityLayer(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
