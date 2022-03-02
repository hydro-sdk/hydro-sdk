import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/viewport.dart' as _01f8;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderViewport extends _36c2.VMManagedBox<_01f8.RenderViewport> {VMManagedRenderViewport({required this.table, required this.vmObject, required this.hydroState}) : super(
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
'setupParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setupParentData(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getAnchor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.anchor,]; } );
table  [
'setAnchor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.anchor=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getCenter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.center;if(returnValue!= null){return [_36c2.maybeBoxObject<_021d.RenderSliver?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setCenter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.center=(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getSizedByParent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.sizedByParent,]; } );
table  [
'computeDryLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.computeDryLayout(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'performLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.performLayout();
return []; } );
table  [
'getHasVisualOverflow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasVisualOverflow,]; } );
table  [
'updateOutOfBandData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.updateOutOfBandData(_36c2.maybeUnBoxEnum(values: _021d.GrowthDirection.values, boxedEnum: luaCallerArguments  [
1
]), _36c2.maybeUnBoxAndBuildArgument<_021d.SliverGeometry, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'updateChildLayoutOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.updateChildLayoutOffset(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble(), _36c2.maybeUnBoxEnum(values: _021d.GrowthDirection.values, boxedEnum: luaCallerArguments  [
3
]));
return []; } );
table  [
'paintOffsetOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.paintOffsetOf(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'scrollOffsetOf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.scrollOffsetOf(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble()),]; } );
table  [
'maxScrollObstructionExtentBefore'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.maxScrollObstructionExtentBefore(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
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
'computeChildMainAxisPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.computeChildMainAxisPosition(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), luaCallerArguments  [
2
]?.toDouble()),]; } );
table  [
'getIndexOfFirstChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.indexOfFirstChild,]; } );
table  [
'labelForChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.labelForChild(luaCallerArguments  [
1
]),]; } );
table  [
'getChildrenInPaintOrder'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Iterable>(object: vmObject.childrenInPaintOrder, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getChildrenInHitTestOrder'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Iterable>(object: vmObject.childrenInHitTestOrder, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'describeSemanticsConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'visitChildrenForSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];vmObject.visitChildrenForSemantics((child) => unpackedvisitor.dispatch([luaCallerArguments[0],child],parentState:hydroState,));
return []; } );
table  [
'attach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attach(_36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'detach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.detach();
return []; } );
table  [
'computeMinIntrinsicWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeMinIntrinsicWidth(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'computeMaxIntrinsicWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeMaxIntrinsicWidth(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'computeMinIntrinsicHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeMinIntrinsicHeight(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'computeMaxIntrinsicHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeMaxIntrinsicHeight(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'describeApproximatePaintClip'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.describeApproximatePaintClip(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'describeSemanticsClip'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.describeSemanticsClip(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'debugPaintSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.debugPaintSize(_36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'hitTestChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.hitTestChildren(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'position'
] : null, parentState: hydroState)),]; } );
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
'getAxisDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.AxisDirection.values.indexWhere((x) { return x == vmObject.axisDirection; } ),]; } );
table  [
'setAxisDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.axisDirection=(_36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getCrossAxisDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.AxisDirection.values.indexWhere((x) { return x == vmObject.crossAxisDirection; } ),]; } );
table  [
'setCrossAxisDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.crossAxisDirection=(_36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getAxis'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.Axis.values.indexWhere((x) { return x == vmObject.axis; } ),]; } );
table  [
'getOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_f376.ViewportOffset>(object: vmObject.offset, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.offset=(_36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getCacheExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.cacheExtent;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setCacheExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cacheExtent=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getCacheExtentStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_01f8.CacheExtentStyle.values.indexWhere((x) { return x == vmObject.cacheExtentStyle; } ),]; } );
table  [
'setCacheExtentStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cacheExtentStyle=(_36c2.maybeUnBoxEnum(values: _01f8.CacheExtentStyle.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getClipBehavior'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a643.Clip.values.indexWhere((x) { return x == vmObject.clipBehavior; } ),]; } );
table  [
'setClipBehavior'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.clipBehavior=(_36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getIsRepaintBoundary'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isRepaintBoundary,]; } );
table  [
'debugValidateChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugValidateChild(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'insert'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.insert(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), after: _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'after'
] : null, parentState: hydroState));
return []; } );
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'addAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.addAll(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_021d.RenderSliver>?, _021d.RenderSliver>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'remove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.remove(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'removeAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.removeAll();
return []; } );
table  [
'move'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.move(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), after: _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'after'
] : null, parentState: hydroState));
return []; } );
table  [
'redepthChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.redepthChildren();
return []; } );
table  [
'visitChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];vmObject.visitChildren((child) => unpackedvisitor.dispatch([luaCallerArguments[0],child],parentState:hydroState,));
return []; } );
table  [
'childBefore'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.childBefore(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_021d.RenderSliver?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'childAfter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.childAfter(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_021d.RenderSliver?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getChildCount'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.childCount,]; } );
table  [
'getFirstChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.firstChild;if(returnValue!= null){return [_36c2.maybeBoxObject<_021d.RenderSliver?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getLastChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.lastChild;if(returnValue!= null){return [_36c2.maybeBoxObject<_021d.RenderSliver?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getMinIntrinsicWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getMinIntrinsicWidth(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'getMaxIntrinsicWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getMaxIntrinsicWidth(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'getMinIntrinsicHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getMinIntrinsicHeight(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'getMaxIntrinsicHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.getMaxIntrinsicHeight(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'getDryLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.getDryLayout(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugCannotComputeDryLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.debugCannotComputeDryLayout(error: _36c2.maybeUnBoxAndBuildArgument<_5dcc.FlutterError?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'error'
] : null, parentState: hydroState), reason: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'reason'
] : null),]; } );
table  [
'debugAdoptSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.debugAdoptSize(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugResetSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugResetSize();
return []; } );
table  [
'getDistanceToBaseline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.getDistanceToBaseline(_36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments  [
1
]), onlyReal: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'onlyReal'
] : null);if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'debugAssertDoesMeetConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugAssertDoesMeetConstraints();
return []; } );
table  [
'markNeedsLayout'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsLayout();
return []; } );
table  [
'performResize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.performResize();
return []; } );
table  [
'hitTest'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.hitTest(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'position'
] : null, parentState: hydroState)),]; } );
table  [
'globalToLocal'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.globalToLocal(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), ancestor: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'ancestor'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'localToGlobal'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.localToGlobal(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), ancestor: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'ancestor'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'handleEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.handleEvent(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestEntry, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'debugHandleEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.debugHandleEvent(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState)),]; } );
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
'getHasSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasSize,]; } );
table  [
'getSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.size, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getSemanticBounds'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.semanticBounds, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.constraints, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getPaintBounds'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.paintBounds, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'reassemble'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.reassemble();
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
'getTransformTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_db98.Matrix4>(object: vmObject.getTransformTo(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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
'getDebugLayer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.debugLayer;if(returnValue!= null){return [_36c2.maybeBoxObject<_7d70.ContainerLayer?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getNeedsCompositing'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.needsCompositing,]; } );
table  [
'getDebugNeedsPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugNeedsPaint,]; } );
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

final _01f8.RenderViewport vmObject;

 }

class RTManagedRenderViewport extends _01f8.RenderViewport implements _36c2.Box<_01f8.RenderViewport> {RTManagedRenderViewport({required _fac9.double anchor, required _487f.AxisDirection axisDirection, _fac9.double? cacheExtent, required _01f8.CacheExtentStyle cacheExtentStyle, _021d.RenderSliver? center, _fac9.List<_021d.RenderSliver>? children, required _a643.Clip clipBehavior, required _487f.AxisDirection crossAxisDirection, required _f376.ViewportOffset offset, required this.table, required this.hydroState}) : super(anchor: anchor,axisDirection: axisDirection,cacheExtent: cacheExtent,cacheExtentStyle: cacheExtentStyle,center: center,children: children,clipBehavior: clipBehavior,crossAxisDirection: crossAxisDirection,offset: offset) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'parentData'
] = _36c2.maybeBoxObject(object: parentData, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugCreator'
] = _36c2.maybeBoxObject(object: debugCreator, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_setupParentData'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.setupParentData(
      _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getAnchor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.anchor];
});
table['_dart_setAnchor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.anchor = (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getCenter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.center];
});
table['_dart_setCenter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.center =
      (_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getSizedByParent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.sizedByParent];
});
table['_dart_computeDryLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeDryLayout(_36c2.maybeUnBoxAndBuildArgument<
            _be2e.BoxConstraints,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_performLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.performLayout();
  return [];
});
table['_dart_getHasVisualOverflow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasVisualOverflow];
});
table['_dart_updateOutOfBandData'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.updateOutOfBandData(
      _36c2.maybeUnBoxEnum(
          values: _021d.GrowthDirection.values,
          boxedEnum: luaCallerArguments[1]),
      _36c2.maybeUnBoxAndBuildArgument<_021d.SliverGeometry, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_updateChildLayoutOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.updateChildLayoutOffset(
      _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState),
      _36c2.maybeUnBoxEnum(
          values: _021d.GrowthDirection.values,
          boxedEnum: luaCallerArguments[3]));
  return [];
});
table['_dart_paintOffsetOf'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.paintOffsetOf(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_scrollOffsetOf'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.scrollOffsetOf(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_maxScrollObstructionExtentBefore'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.maxScrollObstructionExtentBefore(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_applyPaintTransform'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.applyPaintTransform(
      _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_computeChildMainAxisPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeChildMainAxisPosition(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getIndexOfFirstChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.indexOfFirstChild];
});
table['_dart_labelForChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.labelForChild(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getChildrenInPaintOrder'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.childrenInPaintOrder];
});
table['_dart_getChildrenInHitTestOrder'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.childrenInHitTestOrder];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_describeSemanticsConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<
      _4c98.SemanticsConfiguration,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_visitChildrenForSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedvisitor = luaCallerArguments[1];
  super.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
        [luaCallerArguments[0], child],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_attach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attach(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_detach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.detach();
  return [];
});
table['_dart_debugThrowIfNotCheckingIntrinsics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugThrowIfNotCheckingIntrinsics(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeMinIntrinsicWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeMinIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeMaxIntrinsicWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeMaxIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeMinIntrinsicHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeMinIntrinsicHeight(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeMaxIntrinsicHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeMaxIntrinsicHeight(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_layoutChildSequence'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedadvance =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['advance'] : null;

  return [
    _36c2.maybeBoxObject(
        object: super.layoutChildSequence(
            advance: (child) => _36c2
                .maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(
                    ((
                      final _fac9.List<_fac9.dynamic>? val,
                    ) =>
                        val != null && val.length >= 1 ? val[0] : null)(
                      unpackedadvance.dispatch(
                        [luaCallerArguments[0], child],
                        parentState: hydroState,
                      ),
                    ),
                    parentState: hydroState),
            cacheOrigin: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['cacheOrigin'] : null,
                parentState: hydroState),
            child: _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null,
                parentState: hydroState),
            crossAxisExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['crossAxisExtent'] : null,
                parentState: hydroState),
            growthDirection: _36c2.maybeUnBoxEnum(
                values: _021d.GrowthDirection.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['growthDirection']
                    : null),
            layoutOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['layoutOffset'] : null,
                parentState: hydroState),
            mainAxisExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mainAxisExtent'] : null, parentState: hydroState),
            overlap: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlap'] : null, parentState: hydroState),
            remainingCacheExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['remainingCacheExtent'] : null, parentState: hydroState),
            remainingPaintExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['remainingPaintExtent'] : null, parentState: hydroState),
            scrollOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollOffset'] : null, parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_describeApproximatePaintClip'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.describeApproximatePaintClip(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_describeSemanticsClip'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.describeSemanticsClip(_36c2.maybeUnBoxAndBuildArgument<
            _021d.RenderSliver?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_paint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.paint(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_debugPaintSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugPaintSize(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_hitTestChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.hitTestChildren(
            _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['position']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getOffsetToReveal'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getOffsetToReveal(
            _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(
                luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['rect']
                    : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeAbsolutePaintOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeAbsolutePaintOffset(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _021d.GrowthDirection.values,
                boxedEnum: luaCallerArguments[3])),
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
table['_dart_showOnScreen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.showOnScreen(
      curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['curve']
              : null,
          parentState: hydroState),
      descendant: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['descendant']
              : null,
          parentState: hydroState),
      duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['duration'] : null,
          parentState: hydroState),
      rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState));
  return [];
});
table['_dart_getAxisDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.axisDirection];
});
table['_dart_setAxisDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.axisDirection = (_36c2.maybeUnBoxEnum(
      values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getCrossAxisDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.crossAxisDirection];
});
table['_dart_setCrossAxisDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.crossAxisDirection = (_36c2.maybeUnBoxEnum(
      values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getAxis'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.axis];
});
table['_dart_getOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.offset];
});
table['_dart_setOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.offset =
      (_36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCacheExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cacheExtent];
});
table['_dart_setCacheExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cacheExtent =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCacheExtentStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cacheExtentStyle];
});
table['_dart_setCacheExtentStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cacheExtentStyle = (_36c2.maybeUnBoxEnum(
      values: _01f8.CacheExtentStyle.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getClipBehavior'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.clipBehavior];
});
table['_dart_setClipBehavior'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.clipBehavior = (_36c2.maybeUnBoxEnum(
      values: _a643.Clip.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getIsRepaintBoundary'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isRepaintBoundary];
});
table['_dart_debugValidateChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugValidateChild(
            _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_insert'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.insert(
      _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      after:
          _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
  return [];
});
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.add(_36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_addAll'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addAll(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_021d.RenderSliver>?,
      _021d.RenderSliver>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_remove'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.remove(
      _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_removeAll'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.removeAll();
  return [];
});
table['_dart_move'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.move(
      _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      after:
          _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
  return [];
});
table['_dart_redepthChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.redepthChildren();
  return [];
});
table['_dart_visitChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedvisitor = luaCallerArguments[1];
  super.visitChildren((child) => unpackedvisitor.dispatch(
        [luaCallerArguments[0], child],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_childBefore'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.childBefore(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_childAfter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.childAfter(
            _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getChildCount'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.childCount];
});
table['_dart_getFirstChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.firstChild];
});
table['_dart_getLastChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.lastChild];
});
table['_dart_getMinIntrinsicWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getMinIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getMaxIntrinsicWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getMaxIntrinsicWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getMinIntrinsicHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getMinIntrinsicHeight(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getMaxIntrinsicHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getMaxIntrinsicHeight(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getDryLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getDryLayout(_36c2.maybeUnBoxAndBuildArgument<
            _be2e.BoxConstraints,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugCannotComputeDryLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugCannotComputeDryLayout(
            error: _36c2
                .maybeUnBoxAndBuildArgument<_5dcc.FlutterError?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['error']
                        : null,
                    parentState: hydroState),
            reason:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['reason']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugAdoptSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugAdoptSize(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugResetSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugResetSize();
  return [];
});
table['_dart_getDistanceToBaseline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getDistanceToBaseline(
            _36c2.maybeUnBoxEnum(
                values: _a643.TextBaseline.values,
                boxedEnum: luaCallerArguments[1]),
            onlyReal:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['onlyReal']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getDistanceToActualBaseline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getDistanceToActualBaseline(_36c2.maybeUnBoxEnum(
            values: _a643.TextBaseline.values,
            boxedEnum: luaCallerArguments[1])),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeDistanceToActualBaseline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeDistanceToActualBaseline(_36c2.maybeUnBoxEnum(
            values: _a643.TextBaseline.values,
            boxedEnum: luaCallerArguments[1])),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugAssertDoesMeetConstraints'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugAssertDoesMeetConstraints();
  return [];
});
table['_dart_markNeedsLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsLayout();
  return [];
});
table['_dart_performResize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.performResize();
  return [];
});
table['_dart_hitTest'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.hitTest(
            _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            position:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['position']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_hitTestSelf'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.hitTestSelf(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_globalToLocal'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.globalToLocal(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            ancestor: _36c2
                .maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_localToGlobal'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.localToGlobal(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            ancestor: _36c2
                .maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['ancestor']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_handleEvent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleEvent(
      _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestEntry, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_debugHandleEvent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugHandleEvent(
            _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugPaint(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_debugPaintBaselines'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugPaintBaselines(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_debugPaintPointers'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugPaintPointers(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_getHasSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasSize];
});
table['_dart_getSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.size];
});
table['_dart_setSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.size = (_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getSemanticBounds'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.semanticBounds];
});
table['_dart_getConstraints'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.constraints];
});
table['_dart_getPaintBounds'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.paintBounds];
});
table['_dart_reassemble'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.reassemble();
  return [];
});
table['_dart_adoptChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.adoptChild(
      _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_dropChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dropChild(
      _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_markParentNeedsLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markParentNeedsLayout();
  return [];
});
table['_dart_markNeedsLayoutForSizedByParentChange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsLayoutForSizedByParentChange();
  return [];
});
table['_dart_scheduleInitialLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scheduleInitialLayout();
  return [];
});
table['_dart_layout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.layout(
      _36c2.maybeUnBoxAndBuildArgument<_9742.Constraints, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      parentUsesSize:
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['parentUsesSize']
                  : null,
              parentState: hydroState));
  return [];
});
table['_dart_invokeLayoutCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedcallback = luaCallerArguments[1];
  super.invokeLayoutCallback((constraints) => unpackedcallback.dispatch(
        [luaCallerArguments[0], constraints],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_rotate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.rotate(
      newAngle: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['newAngle']
              : null,
          parentState: hydroState),
      oldAngle: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['oldAngle']
              : null,
          parentState: hydroState),
      time: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['time'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_debugRegisterRepaintBoundaryPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugRegisterRepaintBoundaryPaint(
      includedChild:
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['includedChild']
                  : null,
              parentState: hydroState),
      includedParent:
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['includedParent']
                  : null,
              parentState: hydroState));
  return [];
});
table['_dart_markNeedsCompositingBitsUpdate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsCompositingBitsUpdate();
  return [];
});
table['_dart_markNeedsPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsPaint();
  return [];
});
table['_dart_scheduleInitialPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scheduleInitialPaint(
      _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_replaceRootLayer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.replaceRootLayer(
      _36c2.maybeUnBoxAndBuildArgument<_7d70.OffsetLayer, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getTransformTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getTransformTo(_36c2.maybeUnBoxAndBuildArgument<
            _9742.RenderObject?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_scheduleInitialSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scheduleInitialSemantics();
  return [];
});
table['_dart_sendSemanticsEvent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.sendSemanticsEvent(
      _36c2.maybeUnBoxAndBuildArgument<_7afa.SemanticsEvent, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_clearSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.clearSemantics();
  return [];
});
table['_dart_markNeedsSemanticsUpdate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsSemanticsUpdate();
  return [];
});
table['_dart_assembleSemanticsNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.assembleSemanticsNode(
      _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsNode, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_4c98.SemanticsNode>,
          _4c98.SemanticsNode>(luaCallerArguments[3], parentState: hydroState));
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
table['_dart_describeForError'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.describeForError(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            style: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticsTreeStyle.values,
                boxedEnum: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['style']
                    : null)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getDebugDisposed'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDisposed];
});
table['_dart_getDebugDoingThisResize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingThisResize];
});
table['_dart_getDebugDoingThisLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingThisLayout];
});
table['_dart_getDebugCanParentUseSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugCanParentUseSize];
});
table['_dart_getOwner'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.owner];
});
table['_dart_getDebugNeedsLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugNeedsLayout];
});
table['_dart_getDebugDoingThisLayoutWithCallback'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingThisLayoutWithCallback];
});
table['_dart_getDebugDoingThisPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingThisPaint];
});
table['_dart_getAlwaysNeedsCompositing'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.alwaysNeedsCompositing];
});
table['_dart_getLayer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.layer];
});
table['_dart_setLayer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.layer =
      (_36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getDebugLayer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugLayer];
});
table['_dart_getNeedsCompositing'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.needsCompositing];
});
table['_dart_getDebugNeedsPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugNeedsPaint];
});
table['_dart_getDebugSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugSemantics];
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
table['_dart_getDepth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.depth];
});
table['_dart_getAttached'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attached];
});
table['_dart_getParent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.parent];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_01f8.RenderViewport unwrap() => this;
_01f8.RenderViewport get vmObject => this;
@_fac9.override void setupParentData(child) { 
_36c2.Closure closure = table["setupParentData"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get anchor { 
_36c2.Closure closure = table["getAnchor"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set anchor(value) { 
_36c2.Closure closure = table["setAnchor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _021d.RenderSliver? get center { 
_36c2.Closure closure = table["getCenter"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set center(value) { 
_36c2.Closure closure = table["setCenter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get sizedByParent { 
_36c2.Closure closure = table["getSizedByParent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Size computeDryLayout(constraints) { 
_36c2.Closure closure = table["computeDryLayout"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void performLayout() { 
_36c2.Closure closure = table["performLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasVisualOverflow { 
_36c2.Closure closure = table["getHasVisualOverflow"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void updateOutOfBandData(growthDirection, childLayoutGeometry) { 
_36c2.Closure closure = table["updateOutOfBandData"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void updateChildLayoutOffset(child, layoutOffset, growthDirection) { 
_36c2.Closure closure = table["updateChildLayoutOffset"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Offset paintOffsetOf(child) { 
_36c2.Closure closure = table["paintOffsetOf"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double scrollOffsetOf(child, scrollOffsetWithinChild) { 
_36c2.Closure closure = table["scrollOffsetOf"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double maxScrollObstructionExtentBefore(child) { 
_36c2.Closure closure = table["maxScrollObstructionExtentBefore"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void applyPaintTransform(child, transform) { 
_36c2.Closure closure = table["applyPaintTransform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double computeChildMainAxisPosition(child, parentMainAxisPosition) { 
_36c2.Closure closure = table["computeChildMainAxisPosition"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.int get indexOfFirstChild { 
_36c2.Closure closure = table["getIndexOfFirstChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String labelForChild(index) { 
_36c2.Closure closure = table["labelForChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Iterable<_021d.RenderSliver> get childrenInPaintOrder { 
_36c2.Closure closure = table["getChildrenInPaintOrder"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_021d.RenderSliver>, _021d.RenderSliver>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.Iterable<_021d.RenderSliver> get childrenInHitTestOrder { 
_36c2.Closure closure = table["getChildrenInHitTestOrder"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_021d.RenderSliver>, _021d.RenderSliver>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void describeSemanticsConfiguration(config) { 
_36c2.Closure closure = table["describeSemanticsConfiguration"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void visitChildrenForSemantics(visitor) { 
_36c2.Closure closure = table["visitChildrenForSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void attach(owner) { super.attach(owner);
_36c2.Closure closure = table["attach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void detach() { super.detach();
_36c2.Closure closure = table["detach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugThrowIfNotCheckingIntrinsics() { 
_36c2.Closure closure = table["debugThrowIfNotCheckingIntrinsics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double computeMinIntrinsicWidth(height) { 
_36c2.Closure closure = table["computeMinIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeMaxIntrinsicWidth(height) { 
_36c2.Closure closure = table["computeMaxIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeMinIntrinsicHeight(width) { 
_36c2.Closure closure = table["computeMinIntrinsicHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeMaxIntrinsicHeight(width) { 
_36c2.Closure closure = table["computeMaxIntrinsicHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double layoutChildSequence({required _021d.RenderSliver? Function(_021d.RenderSliver child) advance, required _fac9.double cacheOrigin, _021d.RenderSliver? child, required _fac9.double crossAxisExtent, required _021d.GrowthDirection growthDirection, required _fac9.double layoutOffset, required _fac9.double mainAxisExtent, required _fac9.double overlap, required _fac9.double remainingCacheExtent, required _fac9.double remainingPaintExtent, required _fac9.double scrollOffset}) { 
_36c2.Closure closure = table["layoutChildSequence"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _a643.Rect describeApproximatePaintClip(child) { 
_36c2.Closure closure = table["describeApproximatePaintClip"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Rect describeSemanticsClip(child) { 
_36c2.Closure closure = table["describeSemanticsClip"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void paint(context, offset) { 
_36c2.Closure closure = table["paint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaintSize(context, offset) { 
_36c2.Closure closure = table["debugPaintSize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool hitTestChildren(result, {required _a643.Offset position}) { 
_36c2.Closure closure = table["hitTestChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _01f8.RevealedOffset getOffsetToReveal(target, alignment, {_a643.Rect? rect}) { 
_36c2.Closure closure = table["getOffsetToReveal"];
return _36c2.maybeUnBoxAndBuildArgument<_01f8.RevealedOffset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset computeAbsolutePaintOffset(child, layoutOffset, growthDirection) { 
_36c2.Closure closure = table["computeAbsolutePaintOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void showOnScreen({_8c47.Curve curve = _8c47.Curves.ease, _9742.RenderObject? descendant, _fac9.Duration duration = _fac9.Duration.zero, _a643.Rect? rect}) { 
_36c2.Closure closure = table["showOnScreen"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _487f.AxisDirection get axisDirection { 
_36c2.Closure closure = table["getAxisDirection"];
return _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set axisDirection(value) { 
_36c2.Closure closure = table["setAxisDirection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _487f.AxisDirection get crossAxisDirection { 
_36c2.Closure closure = table["getCrossAxisDirection"];
return _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set crossAxisDirection(value) { 
_36c2.Closure closure = table["setCrossAxisDirection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _487f.Axis get axis { 
_36c2.Closure closure = table["getAxis"];
return _36c2.maybeUnBoxEnum(values: _487f.Axis.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _f376.ViewportOffset get offset { 
_36c2.Closure closure = table["getOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set offset(value) { 
_36c2.Closure closure = table["setOffset"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double? get cacheExtent { 
_36c2.Closure closure = table["getCacheExtent"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set cacheExtent(value) { 
_36c2.Closure closure = table["setCacheExtent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _01f8.CacheExtentStyle get cacheExtentStyle { 
_36c2.Closure closure = table["getCacheExtentStyle"];
return _36c2.maybeUnBoxEnum(values: _01f8.CacheExtentStyle.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set cacheExtentStyle(value) { 
_36c2.Closure closure = table["setCacheExtentStyle"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Clip get clipBehavior { 
_36c2.Closure closure = table["getClipBehavior"];
return _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set clipBehavior(value) { 
_36c2.Closure closure = table["setClipBehavior"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isRepaintBoundary { 
_36c2.Closure closure = table["getIsRepaintBoundary"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugValidateChild(child) { 
_36c2.Closure closure = table["debugValidateChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void insert(child, {_021d.RenderSliver? after}) { 
_36c2.Closure closure = table["insert"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void add(child) { 
_36c2.Closure closure = table["add"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void addAll(children) { 
_36c2.Closure closure = table["addAll"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void remove(child) { 
_36c2.Closure closure = table["remove"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void removeAll() { 
_36c2.Closure closure = table["removeAll"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void move(child, {_021d.RenderSliver? after}) { 
_36c2.Closure closure = table["move"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void redepthChildren() { 
_36c2.Closure closure = table["redepthChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void visitChildren(visitor) { 
_36c2.Closure closure = table["visitChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _021d.RenderSliver? childBefore(child) { 
_36c2.Closure closure = table["childBefore"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _021d.RenderSliver? childAfter(child) { 
_36c2.Closure closure = table["childAfter"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get childCount { 
_36c2.Closure closure = table["getChildCount"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _021d.RenderSliver? get firstChild { 
_36c2.Closure closure = table["getFirstChild"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _021d.RenderSliver? get lastChild { 
_36c2.Closure closure = table["getLastChild"];
return _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double getMinIntrinsicWidth(height) { super.getMinIntrinsicWidth(height);
_36c2.Closure closure = table["getMinIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double getMaxIntrinsicWidth(height) { super.getMaxIntrinsicWidth(height);
_36c2.Closure closure = table["getMaxIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double getMinIntrinsicHeight(width) { super.getMinIntrinsicHeight(width);
_36c2.Closure closure = table["getMinIntrinsicHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double getMaxIntrinsicHeight(width) { super.getMaxIntrinsicHeight(width);
_36c2.Closure closure = table["getMaxIntrinsicHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _a643.Size getDryLayout(constraints) { super.getDryLayout(constraints);
_36c2.Closure closure = table["getDryLayout"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool debugCannotComputeDryLayout({_5dcc.FlutterError? error, _fac9.String? reason}) { 
_36c2.Closure closure = table["debugCannotComputeDryLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Size debugAdoptSize(value) { 
_36c2.Closure closure = table["debugAdoptSize"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugResetSize() { 
_36c2.Closure closure = table["debugResetSize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double? getDistanceToBaseline(baseline, {_fac9.bool onlyReal = false}) { 
_36c2.Closure closure = table["getDistanceToBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double? getDistanceToActualBaseline(baseline) { super.getDistanceToActualBaseline(baseline);
_36c2.Closure closure = table["getDistanceToActualBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double? computeDistanceToActualBaseline(baseline) { 
_36c2.Closure closure = table["computeDistanceToActualBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void debugAssertDoesMeetConstraints() { 
_36c2.Closure closure = table["debugAssertDoesMeetConstraints"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsLayout() { 
_36c2.Closure closure = table["markNeedsLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void performResize() { 
_36c2.Closure closure = table["performResize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool hitTest(result, {required _a643.Offset position}) { 
_36c2.Closure closure = table["hitTest"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool hitTestSelf(position) { 
_36c2.Closure closure = table["hitTestSelf"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Offset globalToLocal(point, {_9742.RenderObject? ancestor}) { 
_36c2.Closure closure = table["globalToLocal"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset localToGlobal(point, {_9742.RenderObject? ancestor}) { 
_36c2.Closure closure = table["localToGlobal"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void handleEvent(event, entry) { 
_36c2.Closure closure = table["handleEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugHandleEvent(event, entry) { 
_36c2.Closure closure = table["debugHandleEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaint(context, offset) { 
_36c2.Closure closure = table["debugPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaintBaselines(context, offset) { 
_36c2.Closure closure = table["debugPaintBaselines"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaintPointers(context, offset) { 
_36c2.Closure closure = table["debugPaintPointers"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasSize { 
_36c2.Closure closure = table["getHasSize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Size get size { 
_36c2.Closure closure = table["getSize"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set size(value) { 
_36c2.Closure closure = table["setSize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Rect get semanticBounds { 
_36c2.Closure closure = table["getSemanticBounds"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints get constraints { 
_36c2.Closure closure = table["getConstraints"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Rect get paintBounds { 
_36c2.Closure closure = table["getPaintBounds"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void reassemble() { 
_36c2.Closure closure = table["reassemble"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void adoptChild(child) { super.adoptChild(child);
_36c2.Closure closure = table["adoptChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dropChild(child) { super.dropChild(child);
_36c2.Closure closure = table["dropChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markParentNeedsLayout() { 
_36c2.Closure closure = table["markParentNeedsLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsLayoutForSizedByParentChange() { 
_36c2.Closure closure = table["markNeedsLayoutForSizedByParentChange"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void scheduleInitialLayout() { 
_36c2.Closure closure = table["scheduleInitialLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void layout(constraints, {_fac9.bool parentUsesSize = false}) { 
_36c2.Closure closure = table["layout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void invokeLayoutCallback<T extends _9742.Constraints>(callback) { 
_36c2.Closure closure = table["invokeLayoutCallback"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void rotate({_fac9.int? newAngle, _fac9.int? oldAngle, _fac9.Duration? time}) { 
_36c2.Closure closure = table["rotate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugRegisterRepaintBoundaryPaint({_fac9.bool includedChild = false, _fac9.bool includedParent = true}) { 
_36c2.Closure closure = table["debugRegisterRepaintBoundaryPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsCompositingBitsUpdate() { 
_36c2.Closure closure = table["markNeedsCompositingBitsUpdate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsPaint() { 
_36c2.Closure closure = table["markNeedsPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void scheduleInitialPaint(rootLayer) { 
_36c2.Closure closure = table["scheduleInitialPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void replaceRootLayer(rootLayer) { 
_36c2.Closure closure = table["replaceRootLayer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _db98.Matrix4 getTransformTo(ancestor) { 
_36c2.Closure closure = table["getTransformTo"];
return _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void scheduleInitialSemantics() { 
_36c2.Closure closure = table["scheduleInitialSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void sendSemanticsEvent(semanticsEvent) { 
_36c2.Closure closure = table["sendSemanticsEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void clearSemantics() { super.clearSemantics();
_36c2.Closure closure = table["clearSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsSemanticsUpdate() { 
_36c2.Closure closure = table["markNeedsSemanticsUpdate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void assembleSemanticsNode(node, config, children) { 
_36c2.Closure closure = table["assembleSemanticsNode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringDeep({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug, _fac9.String prefixLineOne = '', _fac9.String? prefixOtherLines = ''}) { 
_36c2.Closure closure = table["toStringDeep"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShallow({_fac9.String joiner = ', ', _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) { 
_36c2.Closure closure = table["toStringShallow"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode describeForError(name, {_eaf3.DiagnosticsTreeStyle style = _eaf3.DiagnosticsTreeStyle.shallow}) { 
_36c2.Closure closure = table["describeForError"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool? get debugDisposed { 
_36c2.Closure closure = table["getDebugDisposed"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingThisResize { 
_36c2.Closure closure = table["getDebugDoingThisResize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingThisLayout { 
_36c2.Closure closure = table["getDebugDoingThisLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugCanParentUseSize { 
_36c2.Closure closure = table["getDebugCanParentUseSize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _9742.PipelineOwner? get owner { 
_36c2.Closure closure = table["getOwner"];
return _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get debugNeedsLayout { 
_36c2.Closure closure = table["getDebugNeedsLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingThisLayoutWithCallback { 
_36c2.Closure closure = table["getDebugDoingThisLayoutWithCallback"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingThisPaint { 
_36c2.Closure closure = table["getDebugDoingThisPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get alwaysNeedsCompositing { 
_36c2.Closure closure = table["getAlwaysNeedsCompositing"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.ContainerLayer? get layer { 
_36c2.Closure closure = table["getLayer"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set layer(newLayer) { 
_36c2.Closure closure = table["setLayer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.ContainerLayer? get debugLayer { 
_36c2.Closure closure = table["getDebugLayer"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.ContainerLayer?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get needsCompositing { 
_36c2.Closure closure = table["getNeedsCompositing"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugNeedsPaint { 
_36c2.Closure closure = table["getDebugNeedsPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsNode? get debugSemantics { 
_36c2.Closure closure = table["getDebugSemantics"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsNode?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void redepthChild(child) { 
_36c2.Closure closure = table["redepthChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get depth { 
_36c2.Closure closure = table["getDepth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get attached { 
_36c2.Closure closure = table["getAttached"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _b05e.AbstractNode? get parent { 
_36c2.Closure closure = table["getParent"];
return _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadRenderViewport({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'renderViewport'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 








return  [RTManagedRenderViewport(table: luaCallerArguments  [
0
], hydroState: hydroState, anchor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'anchor'
] : null?.toDouble(), axisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'axisDirection'
] : null), cacheExtent: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cacheExtent'
] : null?.toDouble(), cacheExtentStyle: _36c2.maybeUnBoxEnum(values: _01f8.CacheExtentStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cacheExtentStyle'
] : null), center: _36c2.maybeUnBoxAndBuildArgument<_021d.RenderSliver?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'center'
] : null, parentState: hydroState), children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_021d.RenderSliver>?, _021d.RenderSliver>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'children'
] : null, parentState: hydroState), clipBehavior: _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'clipBehavior'
] : null), crossAxisDirection: _36c2.maybeUnBoxEnum(values: _487f.AxisDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisDirection'
] : null), offset: _36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_01f8.RenderViewport>(boxer: ({required _01f8.RenderViewport vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRenderViewport(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
