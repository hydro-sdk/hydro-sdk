import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/viewport.dart' as _01f8;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderAbstractViewport extends _36c2.VMManagedBox<_01f8.RenderAbstractViewport> {VMManagedRenderAbstractViewport({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'parentData'
] = _36c2.maybeBoxObject<_9742.ParentData?>(object: vmObject.parentData, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugCreator'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.debugCreator, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getOffsetToReveal'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_01f8.RevealedOffset>(object: vmObject.getOffsetToReveal(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble(), rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(luaCallerArguments.length >= 4 ? luaCallerArguments  [
3
]  [
'rect'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'reassemble'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.reassemble();
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'setupParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setupParentData(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'adoptChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.adoptChild(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'dropChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dropChild(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'visitChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];vmObject.visitChildren((child) => unpackedvisitor.dispatch([luaCallerArguments[0],child],parentState:hydroState,));
return []; } );
table  [
'attach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attach(_36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'markNeedsLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsLayout();
return []; } );
table  [
'markNeedsLayoutForSizedByParentChange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsLayoutForSizedByParentChange();
return []; } );
table  [
'scheduleInitialLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scheduleInitialLayout();
return []; } );
table  [
'layout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.layout(_36c2.maybeUnBoxAndBuildArgument<_9742.Constraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), parentUsesSize: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'parentUsesSize'
] : null);
return []; } );
table  [
'rotate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.rotate(newAngle: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'newAngle'
] : null, oldAngle: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'oldAngle'
] : null, time: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'time'
] : null, parentState: hydroState));
return []; } );
table  [
'debugRegisterRepaintBoundaryPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.debugRegisterRepaintBoundaryPaint(includedChild: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'includedChild'
] : null, includedParent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'includedParent'
] : null);
return []; } );
table  [
'markNeedsCompositingBitsUpdate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsCompositingBitsUpdate();
return []; } );
table  [
'markNeedsPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsPaint();
return []; } );
table  [
'scheduleInitialPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scheduleInitialPaint(_36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'replaceRootLayer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.replaceRootLayer(_36c2.maybeUnBoxAndBuildArgument<_7d70.OffsetLayer, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.debugPaint(_36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'paint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.paint(_36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'applyPaintTransform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.applyPaintTransform(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'getTransformTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_db98.Matrix4>(object: vmObject.getTransformTo(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'describeApproximatePaintClip'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.describeApproximatePaintClip(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Rect?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'describeSemanticsClip'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.describeSemanticsClip(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Rect?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'scheduleInitialSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scheduleInitialSemantics();
return []; } );
table  [
'sendSemanticsEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.sendSemanticsEvent(_36c2.maybeUnBoxAndBuildArgument<_7afa.SemanticsEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'clearSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.clearSemantics();
return []; } );
table  [
'markNeedsSemanticsUpdate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsSemanticsUpdate();
return []; } );
table  [
'visitChildrenForSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];vmObject.visitChildrenForSemantics((child) => unpackedvisitor.dispatch([luaCallerArguments[0],child],parentState:hydroState,));
return []; } );
table  [
'assembleSemanticsNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.assembleSemanticsNode(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsNode, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_4c98.SemanticsNode>, _4c98.SemanticsNode>(luaCallerArguments  [
3
], parentState: hydroState));
return []; } );
table  [
'handleEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.handleEvent(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(luaCallerArguments  [
2
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
'debugDescribeChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.debugDescribeChildren().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'showOnScreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


vmObject.showOnScreen(curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'curve'
] : null, parentState: hydroState), descendant: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'descendant'
] : null, parentState: hydroState), duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'duration'
] : null, parentState: hydroState), rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'rect'
] : null, parentState: hydroState));
return []; } );
table  [
'describeForError'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.describeForError(luaCallerArguments  [
1
], style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getDebugDisposed'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.debugDisposed;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'getDebugDoingThisResize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingThisResize,]; } );
table  [
'getDebugDoingThisLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingThisLayout,]; } );
table  [
'getDebugCanParentUseSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugCanParentUseSize,]; } );
table  [
'getOwner'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.owner;if(returnValue!= null){return [_36c2.maybeBoxObject<_9742.PipelineOwner?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getDebugNeedsLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugNeedsLayout,]; } );
table  [
'getDebugDoingThisLayoutWithCallback'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingThisLayoutWithCallback,]; } );
table  [
'getDebugDoingThisPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugDoingThisPaint,]; } );
table  [
'getIsRepaintBoundary'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isRepaintBoundary,]; } );
table  [
'getDebugLayer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.debugLayer;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.ContainerLayer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getNeedsCompositing'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.needsCompositing,]; } );
table  [
'getDebugNeedsPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugNeedsPaint,]; } );
table  [
'getPaintBounds'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.paintBounds, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getSemanticBounds'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.semanticBounds, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getDebugSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.debugSemantics;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.SemanticsNode?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
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
'detach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.detach();
return []; } );
table  [
'getDepth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.depth,]; } );
table  [
'getAttached'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.attached,]; } );
table  [
'getParent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.parent;if(returnValue!= null){return [_36c2.maybeBoxObject<_b05e.AbstractNode?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _01f8.RenderAbstractViewport vmObject;

 }

void loadRenderAbstractViewport({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { 
table  [
'renderAbstractViewportOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = _01f8.RenderAbstractViewport.of(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_01f8.RenderAbstractViewport?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_01f8.RenderAbstractViewport>(boxer: ({required _01f8.RenderAbstractViewport vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRenderAbstractViewport(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
