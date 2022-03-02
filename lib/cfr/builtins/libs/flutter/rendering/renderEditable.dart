import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/gestures/tap.dart' as _1275;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/inline_span.dart' as _b761;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/editable.dart' as _7eb4;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;
import 'package:flutter/src/services/text_editing.dart' as _7986;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/services/text_layout_metrics.dart' as _0f57;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderEditable extends _36c2.VMManagedBox<_7eb4.RenderEditable> {VMManagedRenderEditable({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'ignorePointer'
] = vmObject.ignorePointer;
table  [
'textSelectionDelegate'
] = _36c2.maybeBoxObject<_8577.TextSelectionDelegate>(object: vmObject.textSelectionDelegate, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'floatingCursorAddedMargin'
] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(object: vmObject.floatingCursorAddedMargin, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'parentData'
] = _36c2.maybeBoxObject<_9742.ParentData?>(object: vmObject.parentData, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugCreator'
] = _36c2.maybeBoxObject<_fac9.Object?>(object: vmObject.debugCreator, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'setupParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setupParentData(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'getForegroundPainter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.foregroundPainter;if(returnValue!= null){return [_36c2.maybeBoxObject<_7eb4.RenderEditablePainter?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setForegroundPainter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.foregroundPainter=(_36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditablePainter?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getPainter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.painter;if(returnValue!= null){return [_36c2.maybeBoxObject<_7eb4.RenderEditablePainter?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setPainter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.painter=(_36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditablePainter?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugAssertLayoutUpToDate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugAssertLayoutUpToDate();
return []; } );
table  [
'getTextHeightBehavior'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.textHeightBehavior;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.TextHeightBehavior?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setTextHeightBehavior'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textHeightBehavior=(_36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getTextWidthBasis'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_fe5a.TextWidthBasis.values.indexWhere((x) { return x == vmObject.textWidthBasis; } ),]; } );
table  [
'setTextWidthBasis'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textWidthBasis=(_36c2.maybeUnBoxEnum(values: _fe5a.TextWidthBasis.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getDevicePixelRatio'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.devicePixelRatio,]; } );
table  [
'setDevicePixelRatio'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.devicePixelRatio=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getObscuringCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.obscuringCharacter,]; } );
table  [
'setObscuringCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.obscuringCharacter=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getObscureText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.obscureText,]; } );
table  [
'setObscureText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.obscureText=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getSelectionHeightStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a643.BoxHeightStyle.values.indexWhere((x) { return x == vmObject.selectionHeightStyle; } ),]; } );
table  [
'setSelectionHeightStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selectionHeightStyle=(_36c2.maybeUnBoxEnum(values: _a643.BoxHeightStyle.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getSelectionWidthStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a643.BoxWidthStyle.values.indexWhere((x) { return x == vmObject.selectionWidthStyle; } ),]; } );
table  [
'setSelectionWidthStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selectionWidthStyle=(_36c2.maybeUnBoxEnum(values: _a643.BoxWidthStyle.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getSelectionStartInViewport'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e644.ValueListenable>(object: vmObject.selectionStartInViewport, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getSelectionEndInViewport'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e644.ValueListenable>(object: vmObject.selectionEndInViewport, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getLineAtOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7986.TextSelection>(object: vmObject.getLineAtOffset(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getWordBoundary'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.TextRange>(object: vmObject.getWordBoundary(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getTextPositionAbove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.TextPosition>(object: vmObject.getTextPositionAbove(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getTextPositionBelow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.TextPosition>(object: vmObject.getTextPositionBelow(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'markNeedsPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.markNeedsPaint();
return []; } );
table  [
'systemFontsDidChange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.systemFontsDidChange();
return []; } );
table  [
'getText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.text;if(returnValue!= null){return [_36c2.maybeBoxObject<_b761.InlineSpan?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.text=(_36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getTextAlign'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a643.TextAlign.values.indexWhere((x) { return x == vmObject.textAlign; } ),]; } );
table  [
'setTextAlign'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textAlign=(_36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_a643.TextDirection.values.indexWhere((x) { return x == vmObject.textDirection; } ),]; } );
table  [
'setTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textDirection=(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getLocale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.locale;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Locale?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setLocale'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.locale=(_36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getStrutStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.strutStyle;if(returnValue!= null){return [_36c2.maybeBoxObject<_ced4.StrutStyle?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setStrutStyle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.strutStyle=(_36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getCursorColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.cursorColor;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Color?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setCursorColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cursorColor=(_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getBackgroundCursorColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.backgroundCursorColor;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Color?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setBackgroundCursorColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.backgroundCursorColor=(_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getShowCursor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e644.ValueNotifier>(object: vmObject.showCursor, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setShowCursor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.showCursor=(_36c2.maybeUnBoxAndBuildArgument<_e644.ValueNotifier<_fac9.bool>, _fac9.bool>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getHasFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasFocus,]; } );
table  [
'setHasFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.hasFocus=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getForceLine'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.forceLine,]; } );
table  [
'setForceLine'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.forceLine=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getReadOnly'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.readOnly,]; } );
table  [
'setReadOnly'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.readOnly=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getMaxLines'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.maxLines;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setMaxLines'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.maxLines=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getMinLines'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.minLines;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setMinLines'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.minLines=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getExpands'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.expands,]; } );
table  [
'setExpands'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.expands=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getSelectionColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.selectionColor;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Color?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setSelectionColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selectionColor=(_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getTextScaleFactor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.textScaleFactor,]; } );
table  [
'setTextScaleFactor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textScaleFactor=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.selection;if(returnValue!= null){return [_36c2.maybeBoxObject<_7986.TextSelection?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selection=(_36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
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
'getCursorWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.cursorWidth,]; } );
table  [
'setCursorWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cursorWidth=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getCursorHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.cursorHeight,]; } );
table  [
'setCursorHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cursorHeight=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getPaintCursorAboveText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.paintCursorAboveText,]; } );
table  [
'setPaintCursorAboveText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.paintCursorAboveText=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getCursorOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.cursorOffset, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setCursorOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cursorOffset=(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getCursorRadius'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.cursorRadius;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Radius?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setCursorRadius'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.cursorRadius=(_36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getStartHandleLayerLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7d70.LayerLink>(object: vmObject.startHandleLayerLink, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setStartHandleLayerLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.startHandleLayerLink=(_36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getEndHandleLayerLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7d70.LayerLink>(object: vmObject.endHandleLayerLink, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setEndHandleLayerLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.endHandleLayerLink=(_36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getEnableInteractiveSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.enableInteractiveSelection;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setEnableInteractiveSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.enableInteractiveSelection=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getSelectionEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.selectionEnabled,]; } );
table  [
'getPromptRectColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.promptRectColor;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Color?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setPromptRectColor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.promptRectColor=(_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'setPromptRectRange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setPromptRectRange(_36c2.maybeUnBoxAndBuildArgument<_a643.TextRange?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getMaxScrollExtent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.maxScrollExtent,]; } );
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
'describeSemanticsConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
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
'getEndpointsForSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.getEndpointsForSelection(_36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)).map((x) => _36c2.maybeBoxObject<_7eb4.TextSelectionPoint>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getRectForComposingRange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.getRectForComposingRange(_36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Rect?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getPositionForPoint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.TextPosition>(object: vmObject.getPositionForPoint(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getLocalRectForCaret'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Rect>(object: vmObject.getLocalRectForCaret(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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
'getPreferredLineHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.preferredLineHeight,]; } );
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
'computeDistanceToActualBaseline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.computeDistanceToActualBaseline(_36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments  [
1
])),]; } );
table  [
'hitTestSelf'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hitTestSelf(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
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
'getLastSecondaryTapDownPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.lastSecondaryTapDownPosition;if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Offset?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'handleSecondaryTapDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.handleSecondaryTapDown(_36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'handleTapDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.handleTapDown(_36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'handleTap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.handleTap();
return []; } );
table  [
'handleDoubleTap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.handleDoubleTap();
return []; } );
table  [
'handleLongPress'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.handleLongPress();
return []; } );
table  [
'selectPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selectPosition(cause: _36c2.maybeUnBoxEnum(values: _8577.SelectionChangedCause.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cause'
] : null));
return []; } );
table  [
'selectPositionAt'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.selectPositionAt(to: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'to'
] : null, parentState: hydroState), cause: _36c2.maybeUnBoxEnum(values: _8577.SelectionChangedCause.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cause'
] : null), from: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'from'
] : null, parentState: hydroState));
return []; } );
table  [
'selectWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selectWord(cause: _36c2.maybeUnBoxEnum(values: _8577.SelectionChangedCause.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cause'
] : null));
return []; } );
table  [
'selectWordsInRange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.selectWordsInRange(to: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'to'
] : null, parentState: hydroState), cause: _36c2.maybeUnBoxEnum(values: _8577.SelectionChangedCause.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cause'
] : null), from: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'from'
] : null, parentState: hydroState));
return []; } );
table  [
'selectWordEdge'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selectWordEdge(cause: _36c2.maybeUnBoxEnum(values: _8577.SelectionChangedCause.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cause'
] : null));
return []; } );
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
'calculateBoundedFloatingCursorOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.calculateBoundedFloatingCursorOffset(_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setFloatingCursor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


vmObject.setFloatingCursor(_36c2.maybeUnBoxEnum(values: _8577.FloatingCursorDragState.values, boxedEnum: luaCallerArguments  [
1
]), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
3
], parentState: hydroState), resetLerpValue: luaCallerArguments.length >= 5 ? luaCallerArguments  [
4
]  [
'resetLerpValue'
] : null?.toDouble());
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
'describeApproximatePaintClip'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.describeApproximatePaintClip(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_a643.Rect?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugDescribeChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.debugDescribeChildren().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugValidateChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugValidateChild(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'insert'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.insert(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), after: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'after'
] : null, parentState: hydroState));
return []; } );
table  [
'add'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.add(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'addAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.addAll(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_be2e.RenderBox>?, _be2e.RenderBox>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'remove'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.remove(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
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
vmObject.move(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), after: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'after'
] : null, parentState: hydroState));
return []; } );
table  [
'childBefore'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.childBefore(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_be2e.RenderBox?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'childAfter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.childAfter(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_be2e.RenderBox?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getChildCount'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.childCount,]; } );
table  [
'getFirstChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.firstChild;if(returnValue!= null){return [_36c2.maybeBoxObject<_be2e.RenderBox?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'getLastChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.lastChild;if(returnValue!= null){return [_36c2.maybeBoxObject<_be2e.RenderBox?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'defaultComputeDistanceToFirstActualBaseline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.defaultComputeDistanceToFirstActualBaseline(_36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments  [
1
]));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'defaultComputeDistanceToHighestActualBaseline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.defaultComputeDistanceToHighestActualBaseline(_36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments  [
1
]));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'defaultHitTestChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.defaultHitTestChildren(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxHitTestResult, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), position: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'position'
] : null, parentState: hydroState)),]; } );
table  [
'defaultPaint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.defaultPaint(_36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'getChildrenAsList'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.getChildrenAsList().map((x) => _36c2.maybeBoxObject<_be2e.RenderBox>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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
'applyPaintTransform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.applyPaintTransform(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
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

final _7eb4.RenderEditable vmObject;

 }

class RTManagedRenderEditable extends _7eb4.RenderEditable implements _36c2.Box<_7eb4.RenderEditable> {RTManagedRenderEditable({_a643.Color? backgroundCursorColor, _fac9.List<_be2e.RenderBox>? children, required _a643.Clip clipBehavior, _a643.Color? cursorColor, _fac9.double? cursorHeight, required _a643.Offset cursorOffset, _a643.Radius? cursorRadius, required _fac9.double cursorWidth, required _fac9.double devicePixelRatio, _fac9.bool? enableInteractiveSelection, required _fac9.bool expands, required _96d1.EdgeInsets floatingCursorAddedMargin, required _fac9.bool forceLine, _7eb4.RenderEditablePainter? foregroundPainter, _fac9.bool? hasFocus, required _fac9.bool ignorePointer, _a643.Locale? locale, _fac9.int? maxLines, _fac9.int? minLines, required _fac9.bool obscureText, required _fac9.String obscuringCharacter, void Function(_a643.Rect caretRect)? onCaretChanged, void Function(_7986.TextSelection selection, _7eb4.RenderEditable renderObject, _8577.SelectionChangedCause cause)? onSelectionChanged, required _fac9.bool paintCursorAboveText, _7eb4.RenderEditablePainter? painter, _a643.Color? promptRectColor, _a643.TextRange? promptRectRange, required _fac9.bool readOnly, _7986.TextSelection? selection, _a643.Color? selectionColor, required _a643.BoxHeightStyle selectionHeightStyle, required _a643.BoxWidthStyle selectionWidthStyle, _e644.ValueNotifier<_fac9.bool>? showCursor, _ced4.StrutStyle? strutStyle, _b761.InlineSpan? text, required _a643.TextAlign textAlign, _a643.TextHeightBehavior? textHeightBehavior, required _fac9.double textScaleFactor, required _fe5a.TextWidthBasis textWidthBasis, required _7d70.LayerLink endHandleLayerLink, required _f376.ViewportOffset offset, required _7d70.LayerLink startHandleLayerLink, required _a643.TextDirection textDirection, required _8577.TextSelectionDelegate textSelectionDelegate, required this.table, required this.hydroState}) : super(backgroundCursorColor: backgroundCursorColor,children: children,clipBehavior: clipBehavior,cursorColor: cursorColor,cursorHeight: cursorHeight,cursorOffset: cursorOffset,cursorRadius: cursorRadius,cursorWidth: cursorWidth,devicePixelRatio: devicePixelRatio,enableInteractiveSelection: enableInteractiveSelection,expands: expands,floatingCursorAddedMargin: floatingCursorAddedMargin,forceLine: forceLine,foregroundPainter: foregroundPainter,hasFocus: hasFocus,ignorePointer: ignorePointer,locale: locale,maxLines: maxLines,minLines: minLines,obscureText: obscureText,obscuringCharacter: obscuringCharacter,onCaretChanged: onCaretChanged,onSelectionChanged: onSelectionChanged,paintCursorAboveText: paintCursorAboveText,painter: painter,promptRectColor: promptRectColor,promptRectRange: promptRectRange,readOnly: readOnly,selection: selection,selectionColor: selectionColor,selectionHeightStyle: selectionHeightStyle,selectionWidthStyle: selectionWidthStyle,showCursor: showCursor,strutStyle: strutStyle,text: text,textAlign: textAlign,textHeightBehavior: textHeightBehavior,textScaleFactor: textScaleFactor,textWidthBasis: textWidthBasis,endHandleLayerLink: endHandleLayerLink,offset: offset,startHandleLayerLink: startHandleLayerLink,textDirection: textDirection,textSelectionDelegate: textSelectionDelegate) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'ignorePointer'
] = _36c2.maybeBoxObject(object: this.ignorePointer, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'textSelectionDelegate'
] = _36c2.maybeBoxObject(object: this.textSelectionDelegate, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'floatingCursorAddedMargin'
] = _36c2.maybeBoxObject(object: this.floatingCursorAddedMargin, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'parentData'
] = _36c2.maybeBoxObject(object: parentData, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugCreator'
] = _36c2.maybeBoxObject(object: debugCreator, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_setupParentData'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.setupParentData(
      _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_getForegroundPainter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.foregroundPainter];
});
table['_dart_setForegroundPainter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.foregroundPainter = (_36c2.maybeUnBoxAndBuildArgument<
      _7eb4.RenderEditablePainter?,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_getPainter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.painter];
});
table['_dart_setPainter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.painter = (_36c2.maybeUnBoxAndBuildArgument<
      _7eb4.RenderEditablePainter?,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_debugAssertLayoutUpToDate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugAssertLayoutUpToDate();
  return [];
});
table['_dart_getTextHeightBehavior'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textHeightBehavior];
});
table['_dart_setTextHeightBehavior'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textHeightBehavior = (_36c2.maybeUnBoxAndBuildArgument<
      _a643.TextHeightBehavior?,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_getTextWidthBasis'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textWidthBasis];
});
table['_dart_setTextWidthBasis'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textWidthBasis = (_36c2.maybeUnBoxEnum(
      values: _fe5a.TextWidthBasis.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getDevicePixelRatio'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.devicePixelRatio];
});
table['_dart_setDevicePixelRatio'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.devicePixelRatio =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getObscuringCharacter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.obscuringCharacter];
});
table['_dart_setObscuringCharacter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.obscuringCharacter =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getObscureText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.obscureText];
});
table['_dart_setObscureText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.obscureText =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getSelectionHeightStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selectionHeightStyle];
});
table['_dart_setSelectionHeightStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectionHeightStyle = (_36c2.maybeUnBoxEnum(
      values: _a643.BoxHeightStyle.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getSelectionWidthStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selectionWidthStyle];
});
table['_dart_setSelectionWidthStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectionWidthStyle = (_36c2.maybeUnBoxEnum(
      values: _a643.BoxWidthStyle.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getSelectionStartInViewport'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selectionStartInViewport];
});
table['_dart_getSelectionEndInViewport'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selectionEndInViewport];
});
table['_dart_getLineAtOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getLineAtOffset(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getWordBoundary'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getWordBoundary(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getTextPositionAbove'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getTextPositionAbove(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getTextPositionBelow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getTextPositionBelow(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_markNeedsPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsPaint();
  return [];
});
table['_dart_markNeedsTextLayout'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.markNeedsTextLayout();
  return [];
});
table['_dart_systemFontsDidChange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.systemFontsDidChange();
  return [];
});
table['_dart_getText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.text];
});
table['_dart_setText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.text =
      (_36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getTextAlign'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textAlign];
});
table['_dart_setTextAlign'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textAlign = (_36c2.maybeUnBoxEnum(
      values: _a643.TextAlign.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getTextDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textDirection];
});
table['_dart_setTextDirection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textDirection = (_36c2.maybeUnBoxEnum(
      values: _a643.TextDirection.values, boxedEnum: luaCallerArguments[1]));
  return [];
});
table['_dart_getLocale'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.locale];
});
table['_dart_setLocale'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.locale =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getStrutStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.strutStyle];
});
table['_dart_setStrutStyle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.strutStyle =
      (_36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCursorColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cursorColor];
});
table['_dart_setCursorColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cursorColor =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getBackgroundCursorColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.backgroundCursorColor];
});
table['_dart_setBackgroundCursorColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.backgroundCursorColor =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getShowCursor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.showCursor];
});
table['_dart_setShowCursor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.showCursor = (_36c2.maybeUnBoxAndBuildArgument<
      _e644.ValueNotifier<_fac9.bool>,
      _fac9.bool>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_getHasFocus'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasFocus];
});
table['_dart_setHasFocus'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.hasFocus = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getForceLine'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.forceLine];
});
table['_dart_setForceLine'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.forceLine =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getReadOnly'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.readOnly];
});
table['_dart_setReadOnly'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.readOnly = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getMaxLines'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.maxLines];
});
table['_dart_setMaxLines'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.maxLines = (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getMinLines'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.minLines];
});
table['_dart_setMinLines'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.minLines = (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getExpands'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.expands];
});
table['_dart_setExpands'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.expands = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getSelectionColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selectionColor];
});
table['_dart_setSelectionColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectionColor =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getTextScaleFactor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textScaleFactor];
});
table['_dart_setTextScaleFactor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textScaleFactor =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selection];
});
table['_dart_setSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selection =
      (_36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
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
table['_dart_getCursorWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cursorWidth];
});
table['_dart_setCursorWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cursorWidth =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCursorHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cursorHeight];
});
table['_dart_setCursorHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cursorHeight =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getPaintCursorAboveText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.paintCursorAboveText];
});
table['_dart_setPaintCursorAboveText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.paintCursorAboveText =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCursorOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cursorOffset];
});
table['_dart_setCursorOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cursorOffset =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCursorRadius'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cursorRadius];
});
table['_dart_setCursorRadius'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.cursorRadius =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getStartHandleLayerLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.startHandleLayerLink];
});
table['_dart_setStartHandleLayerLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.startHandleLayerLink =
      (_36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getEndHandleLayerLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.endHandleLayerLink];
});
table['_dart_setEndHandleLayerLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.endHandleLayerLink =
      (_36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getEnableInteractiveSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.enableInteractiveSelection];
});
table['_dart_setEnableInteractiveSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.enableInteractiveSelection =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getSelectionEnabled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selectionEnabled];
});
table['_dart_getPromptRectColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.promptRectColor];
});
table['_dart_setPromptRectColor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.promptRectColor =
      (_36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_setPromptRectRange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.setPromptRectRange(
      _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getMaxScrollExtent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.maxScrollExtent];
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
table['_dart_describeSemanticsConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<
      _4c98.SemanticsConfiguration,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
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
table['_dart_getEndpointsForSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getEndpointsForSelection(_36c2.maybeUnBoxAndBuildArgument<
            _7986.TextSelection,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getRectForComposingRange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getRectForComposingRange(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getPositionForPoint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getPositionForPoint(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getLocalRectForCaret'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getLocalRectForCaret(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
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
table['_dart_getPreferredLineHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.preferredLineHeight];
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
table['_dart_getLastSecondaryTapDownPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.lastSecondaryTapDownPosition];
});
table['_dart_handleSecondaryTapDown'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleSecondaryTapDown(
      _36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_handleTapDown'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleTapDown(
      _36c2.maybeUnBoxAndBuildArgument<_1275.TapDownDetails, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_handleTap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleTap();
  return [];
});
table['_dart_handleDoubleTap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleDoubleTap();
  return [];
});
table['_dart_handleLongPress'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleLongPress();
  return [];
});
table['_dart_selectPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectPosition(
      cause: _36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cause']
              : null));
  return [];
});
table['_dart_selectPositionAt'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectPositionAt(
      to: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['to'] : null,
          parentState: hydroState),
      cause: _36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cause']
              : null),
      from: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['from'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_selectWord'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectWord(
      cause: _36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cause']
              : null));
  return [];
});
table['_dart_selectWordsInRange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectWordsInRange(
      to: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['to'] : null,
          parentState: hydroState),
      cause: _36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cause']
              : null),
      from: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments.length >= 2 ? luaCallerArguments[1]['from'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_selectWordEdge'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selectWordEdge(
      cause: _36c2.maybeUnBoxEnum(
          values: _8577.SelectionChangedCause.values,
          boxedEnum: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cause']
              : null));
  return [];
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
table['_dart_calculateBoundedFloatingCursorOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.calculateBoundedFloatingCursorOffset(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_setFloatingCursor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.setFloatingCursor(
      _36c2.maybeUnBoxEnum(
          values: _8577.FloatingCursorDragState.values,
          boxedEnum: luaCallerArguments[1]),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
          luaCallerArguments[3],
          parentState: hydroState),
      resetLerpValue:
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
              luaCallerArguments.length >= 5
                  ? luaCallerArguments[4]['resetLerpValue']
                  : null,
              parentState: hydroState));
  return [];
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
table['_dart_describeApproximatePaintClip'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.describeApproximatePaintClip(
            _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
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
table['_dart_debugDescribeChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugDescribeChildren(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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
      _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      after: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['after']
              : null,
          parentState: hydroState));
  return [];
});
table['_dart_add'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.add(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_addAll'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addAll(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_be2e.RenderBox>?,
      _be2e.RenderBox>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_remove'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.remove(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
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
      _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      after: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['after']
              : null,
          parentState: hydroState));
  return [];
});
table['_dart_childBefore'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.childBefore(
            _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
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
            _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
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
table['_dart_defaultComputeDistanceToFirstActualBaseline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.defaultComputeDistanceToFirstActualBaseline(
            _36c2.maybeUnBoxEnum(
                values: _a643.TextBaseline.values,
                boxedEnum: luaCallerArguments[1])),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_defaultComputeDistanceToHighestActualBaseline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.defaultComputeDistanceToHighestActualBaseline(
            _36c2.maybeUnBoxEnum(
                values: _a643.TextBaseline.values,
                boxedEnum: luaCallerArguments[1])),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_defaultHitTestChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.defaultHitTestChildren(
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
table['_dart_defaultPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.defaultPaint(
      _36c2.maybeUnBoxAndBuildArgument<_9742.PaintingContext, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_getChildrenAsList'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getChildrenAsList(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
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
table['_dart_describeSemanticsClip'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.describeSemanticsClip(_36c2.maybeUnBoxAndBuildArgument<
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
table['_dart_visitChildrenForSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedvisitor = luaCallerArguments[1];
  super.visitChildrenForSemantics((child) => unpackedvisitor.dispatch(
        [luaCallerArguments[0], child],
        parentState: hydroState,
      ));
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
table['_dart_getSizedByParent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.sizedByParent];
});
table['_dart_getDebugDoingThisPaint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.debugDoingThisPaint];
});
table['_dart_getIsRepaintBoundary'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isRepaintBoundary];
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

_7eb4.RenderEditable unwrap() => this;
_7eb4.RenderEditable get vmObject => this;
@_fac9.override void setupParentData(child) { 
_36c2.Closure closure = table["setupParentData"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7eb4.RenderEditablePainter? get foregroundPainter { 
_36c2.Closure closure = table["getForegroundPainter"];
return _36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditablePainter?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set foregroundPainter(newPainter) { 
_36c2.Closure closure = table["setForegroundPainter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7eb4.RenderEditablePainter? get painter { 
_36c2.Closure closure = table["getPainter"];
return _36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditablePainter?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set painter(newPainter) { 
_36c2.Closure closure = table["setPainter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugAssertLayoutUpToDate() { 
_36c2.Closure closure = table["debugAssertLayoutUpToDate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.TextHeightBehavior? get textHeightBehavior { 
_36c2.Closure closure = table["getTextHeightBehavior"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set textHeightBehavior(value) { 
_36c2.Closure closure = table["setTextHeightBehavior"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fe5a.TextWidthBasis get textWidthBasis { 
_36c2.Closure closure = table["getTextWidthBasis"];
return _36c2.maybeUnBoxEnum(values: _fe5a.TextWidthBasis.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set textWidthBasis(value) { 
_36c2.Closure closure = table["setTextWidthBasis"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get devicePixelRatio { 
_36c2.Closure closure = table["getDevicePixelRatio"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set devicePixelRatio(value) { 
_36c2.Closure closure = table["setDevicePixelRatio"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String get obscuringCharacter { 
_36c2.Closure closure = table["getObscuringCharacter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set obscuringCharacter(value) { 
_36c2.Closure closure = table["setObscuringCharacter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get obscureText { 
_36c2.Closure closure = table["getObscureText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set obscureText(value) { 
_36c2.Closure closure = table["setObscureText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.BoxHeightStyle get selectionHeightStyle { 
_36c2.Closure closure = table["getSelectionHeightStyle"];
return _36c2.maybeUnBoxEnum(values: _a643.BoxHeightStyle.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set selectionHeightStyle(value) { 
_36c2.Closure closure = table["setSelectionHeightStyle"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.BoxWidthStyle get selectionWidthStyle { 
_36c2.Closure closure = table["getSelectionWidthStyle"];
return _36c2.maybeUnBoxEnum(values: _a643.BoxWidthStyle.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set selectionWidthStyle(value) { 
_36c2.Closure closure = table["setSelectionWidthStyle"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e644.ValueListenable<_fac9.bool> get selectionStartInViewport { 
_36c2.Closure closure = table["getSelectionStartInViewport"];
return _36c2.maybeUnBoxAndBuildArgument<_e644.ValueListenable<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e644.ValueListenable<_fac9.bool> get selectionEndInViewport { 
_36c2.Closure closure = table["getSelectionEndInViewport"];
return _36c2.maybeUnBoxAndBuildArgument<_e644.ValueListenable<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7986.TextSelection getLineAtOffset(position) { 
_36c2.Closure closure = table["getLineAtOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.TextRange getWordBoundary(position) { 
_36c2.Closure closure = table["getWordBoundary"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.TextPosition getTextPositionAbove(position) { 
_36c2.Closure closure = table["getTextPositionAbove"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.TextPosition getTextPositionBelow(position) { 
_36c2.Closure closure = table["getTextPositionBelow"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void markNeedsPaint() { 
_36c2.Closure closure = table["markNeedsPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void markNeedsTextLayout() { 
_36c2.Closure closure = table["markNeedsTextLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void systemFontsDidChange() { super.systemFontsDidChange();
_36c2.Closure closure = table["systemFontsDidChange"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _b761.InlineSpan? get text { 
_36c2.Closure closure = table["getText"];
return _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set text(value) { 
_36c2.Closure closure = table["setText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.TextAlign get textAlign { 
_36c2.Closure closure = table["getTextAlign"];
return _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set textAlign(value) { 
_36c2.Closure closure = table["setTextAlign"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.TextDirection get textDirection { 
_36c2.Closure closure = table["getTextDirection"];
return _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set textDirection(value) { 
_36c2.Closure closure = table["setTextDirection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Locale? get locale { 
_36c2.Closure closure = table["getLocale"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set locale(value) { 
_36c2.Closure closure = table["setLocale"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _ced4.StrutStyle? get strutStyle { 
_36c2.Closure closure = table["getStrutStyle"];
return _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set strutStyle(value) { 
_36c2.Closure closure = table["setStrutStyle"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Color? get cursorColor { 
_36c2.Closure closure = table["getCursorColor"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set cursorColor(value) { 
_36c2.Closure closure = table["setCursorColor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Color? get backgroundCursorColor { 
_36c2.Closure closure = table["getBackgroundCursorColor"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set backgroundCursorColor(value) { 
_36c2.Closure closure = table["setBackgroundCursorColor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e644.ValueNotifier<_fac9.bool> get showCursor { 
_36c2.Closure closure = table["getShowCursor"];
return _36c2.maybeUnBoxAndBuildArgument<_e644.ValueNotifier<_fac9.bool>, _fac9.bool>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set showCursor(value) { 
_36c2.Closure closure = table["setShowCursor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasFocus { 
_36c2.Closure closure = table["getHasFocus"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set hasFocus(value) { 
_36c2.Closure closure = table["setHasFocus"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get forceLine { 
_36c2.Closure closure = table["getForceLine"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set forceLine(value) { 
_36c2.Closure closure = table["setForceLine"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get readOnly { 
_36c2.Closure closure = table["getReadOnly"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set readOnly(value) { 
_36c2.Closure closure = table["setReadOnly"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get maxLines { 
_36c2.Closure closure = table["getMaxLines"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set maxLines(value) { 
_36c2.Closure closure = table["setMaxLines"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get minLines { 
_36c2.Closure closure = table["getMinLines"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set minLines(value) { 
_36c2.Closure closure = table["setMinLines"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get expands { 
_36c2.Closure closure = table["getExpands"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set expands(value) { 
_36c2.Closure closure = table["setExpands"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Color? get selectionColor { 
_36c2.Closure closure = table["getSelectionColor"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set selectionColor(value) { 
_36c2.Closure closure = table["setSelectionColor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get textScaleFactor { 
_36c2.Closure closure = table["getTextScaleFactor"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set textScaleFactor(value) { 
_36c2.Closure closure = table["setTextScaleFactor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7986.TextSelection? get selection { 
_36c2.Closure closure = table["getSelection"];
return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set selection(value) { 
_36c2.Closure closure = table["setSelection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _f376.ViewportOffset get offset { 
_36c2.Closure closure = table["getOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set offset(value) { 
_36c2.Closure closure = table["setOffset"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get cursorWidth { 
_36c2.Closure closure = table["getCursorWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set cursorWidth(value) { 
_36c2.Closure closure = table["setCursorWidth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get cursorHeight { 
_36c2.Closure closure = table["getCursorHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set cursorHeight(value) { 
_36c2.Closure closure = table["setCursorHeight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get paintCursorAboveText { 
_36c2.Closure closure = table["getPaintCursorAboveText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set paintCursorAboveText(value) { 
_36c2.Closure closure = table["setPaintCursorAboveText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Offset get cursorOffset { 
_36c2.Closure closure = table["getCursorOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set cursorOffset(value) { 
_36c2.Closure closure = table["setCursorOffset"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Radius? get cursorRadius { 
_36c2.Closure closure = table["getCursorRadius"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set cursorRadius(value) { 
_36c2.Closure closure = table["setCursorRadius"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.LayerLink get startHandleLayerLink { 
_36c2.Closure closure = table["getStartHandleLayerLink"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set startHandleLayerLink(value) { 
_36c2.Closure closure = table["setStartHandleLayerLink"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7d70.LayerLink get endHandleLayerLink { 
_36c2.Closure closure = table["getEndHandleLayerLink"];
return _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set endHandleLayerLink(value) { 
_36c2.Closure closure = table["setEndHandleLayerLink"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get enableInteractiveSelection { 
_36c2.Closure closure = table["getEnableInteractiveSelection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set enableInteractiveSelection(value) { 
_36c2.Closure closure = table["setEnableInteractiveSelection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get selectionEnabled { 
_36c2.Closure closure = table["getSelectionEnabled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Color? get promptRectColor { 
_36c2.Closure closure = table["getPromptRectColor"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set promptRectColor(newValue) { 
_36c2.Closure closure = table["setPromptRectColor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void setPromptRectRange(newRange) { 
_36c2.Closure closure = table["setPromptRectRange"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get maxScrollExtent { 
_36c2.Closure closure = table["getMaxScrollExtent"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _a643.Clip get clipBehavior { 
_36c2.Closure closure = table["getClipBehavior"];
return _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set clipBehavior(value) { 
_36c2.Closure closure = table["setClipBehavior"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void describeSemanticsConfiguration(config) { 
_36c2.Closure closure = table["describeSemanticsConfiguration"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void assembleSemanticsNode(node, config, children) { 
_36c2.Closure closure = table["assembleSemanticsNode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void attach(owner) { super.attach(owner);
_36c2.Closure closure = table["attach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void detach() { super.detach();
_36c2.Closure closure = table["detach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void redepthChildren() { 
_36c2.Closure closure = table["redepthChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void visitChildren(visitor) { 
_36c2.Closure closure = table["visitChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_7eb4.TextSelectionPoint> getEndpointsForSelection(selection) { 
_36c2.Closure closure = table["getEndpointsForSelection"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_7eb4.TextSelectionPoint>, _7eb4.TextSelectionPoint>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Rect? getRectForComposingRange(range) { 
_36c2.Closure closure = table["getRectForComposingRange"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.TextPosition getPositionForPoint(globalPosition) { 
_36c2.Closure closure = table["getPositionForPoint"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Rect getLocalRectForCaret(caretPosition) { 
_36c2.Closure closure = table["getLocalRectForCaret"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double computeMinIntrinsicWidth(height) { 
_36c2.Closure closure = table["computeMinIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeMaxIntrinsicWidth(height) { 
_36c2.Closure closure = table["computeMaxIntrinsicWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double get preferredLineHeight { 
_36c2.Closure closure = table["getPreferredLineHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeMinIntrinsicHeight(width) { 
_36c2.Closure closure = table["computeMinIntrinsicHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeMaxIntrinsicHeight(width) { 
_36c2.Closure closure = table["computeMaxIntrinsicHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double computeDistanceToActualBaseline(baseline) { 
_36c2.Closure closure = table["computeDistanceToActualBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.bool hitTestSelf(position) { 
_36c2.Closure closure = table["hitTestSelf"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool hitTestChildren(result, {required _a643.Offset position}) { 
_36c2.Closure closure = table["hitTestChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleEvent(event, entry) { 
_36c2.Closure closure = table["handleEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Offset? get lastSecondaryTapDownPosition { 
_36c2.Closure closure = table["getLastSecondaryTapDownPosition"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void handleSecondaryTapDown(details) { 
_36c2.Closure closure = table["handleSecondaryTapDown"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleTapDown(details) { 
_36c2.Closure closure = table["handleTapDown"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleTap() { 
_36c2.Closure closure = table["handleTap"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleDoubleTap() { 
_36c2.Closure closure = table["handleDoubleTap"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleLongPress() { 
_36c2.Closure closure = table["handleLongPress"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void selectPosition({required _8577.SelectionChangedCause cause}) { 
_36c2.Closure closure = table["selectPosition"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void selectPositionAt({_a643.Offset? to, required _8577.SelectionChangedCause cause, required _a643.Offset from}) { 
_36c2.Closure closure = table["selectPositionAt"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void selectWord({required _8577.SelectionChangedCause cause}) { 
_36c2.Closure closure = table["selectWord"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void selectWordsInRange({_a643.Offset? to, required _8577.SelectionChangedCause cause, required _a643.Offset from}) { 
_36c2.Closure closure = table["selectWordsInRange"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void selectWordEdge({required _8577.SelectionChangedCause cause}) { 
_36c2.Closure closure = table["selectWordEdge"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Size computeDryLayout(constraints) { 
_36c2.Closure closure = table["computeDryLayout"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void performLayout() { 
_36c2.Closure closure = table["performLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Offset calculateBoundedFloatingCursorOffset(rawCursorOffset) { 
_36c2.Closure closure = table["calculateBoundedFloatingCursorOffset"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void setFloatingCursor(state, boundedOffset, lastTextPosition, {_fac9.double? resetLerpValue}) { 
_36c2.Closure closure = table["setFloatingCursor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void paint(context, offset) { 
_36c2.Closure closure = table["paint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Rect? describeApproximatePaintClip(child) { 
_36c2.Closure closure = table["describeApproximatePaintClip"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool debugValidateChild(child) { 
_36c2.Closure closure = table["debugValidateChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void insert(child, {_be2e.RenderBox? after}) { 
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
@_fac9.override void move(child, {_be2e.RenderBox? after}) { 
_36c2.Closure closure = table["move"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _be2e.RenderBox? childBefore(child) { 
_36c2.Closure closure = table["childBefore"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.RenderBox? childAfter(child) { 
_36c2.Closure closure = table["childAfter"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get childCount { 
_36c2.Closure closure = table["getChildCount"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _be2e.RenderBox? get firstChild { 
_36c2.Closure closure = table["getFirstChild"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.RenderBox? get lastChild { 
_36c2.Closure closure = table["getLastChild"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double? defaultComputeDistanceToFirstActualBaseline(baseline) { 
_36c2.Closure closure = table["defaultComputeDistanceToFirstActualBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double? defaultComputeDistanceToHighestActualBaseline(baseline) { 
_36c2.Closure closure = table["defaultComputeDistanceToHighestActualBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.bool defaultHitTestChildren(result, {required _a643.Offset position}) { 
_36c2.Closure closure = table["defaultHitTestChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void defaultPaint(context, offset) { 
_36c2.Closure closure = table["defaultPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_be2e.RenderBox> getChildrenAsList() { 
_36c2.Closure closure = table["getChildrenAsList"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_be2e.RenderBox>, _be2e.RenderBox>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
@_fac9.override void applyPaintTransform(child, transform) { 
_36c2.Closure closure = table["applyPaintTransform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Offset globalToLocal(point, {_9742.RenderObject? ancestor}) { 
_36c2.Closure closure = table["globalToLocal"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset localToGlobal(point, {_9742.RenderObject? ancestor}) { 
_36c2.Closure closure = table["localToGlobal"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool debugHandleEvent(event, entry) { 
_36c2.Closure closure = table["debugHandleEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaint(context, offset) { 
_36c2.Closure closure = table["debugPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaintSize(context, offset) { 
_36c2.Closure closure = table["debugPaintSize"];
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
@_fac9.override void scheduleInitialPaint(rootLayer) { 
_36c2.Closure closure = table["scheduleInitialPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void replaceRootLayer(rootLayer) { 
_36c2.Closure closure = table["replaceRootLayer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _db98.Matrix4 getTransformTo(ancestor) { 
_36c2.Closure closure = table["getTransformTo"];
return _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Rect? describeSemanticsClip(child) { 
_36c2.Closure closure = table["describeSemanticsClip"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
@_fac9.override void visitChildrenForSemantics(visitor) { 
_36c2.Closure closure = table["visitChildrenForSemantics"];
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
@_fac9.override void showOnScreen({_8c47.Curve curve = _8c47.Curves.ease, _9742.RenderObject? descendant, _fac9.Duration duration = _fac9.Duration.zero, _a643.Rect? rect}) { 
_36c2.Closure closure = table["showOnScreen"];
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
@_fac9.override _fac9.bool get sizedByParent { 
_36c2.Closure closure = table["getSizedByParent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get debugDoingThisPaint { 
_36c2.Closure closure = table["getDebugDoingThisPaint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isRepaintBoundary { 
_36c2.Closure closure = table["getIsRepaintBoundary"];
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
void loadRenderEditable({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'renderEditable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 




















_36c2.Closure? unpackedonCaretChanged=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onCaretChanged'
] : null;
_36c2.Closure? unpackedonSelectionChanged=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSelectionChanged'
] : null;





















return  [RTManagedRenderEditable(table: luaCallerArguments  [
0
], hydroState: hydroState, backgroundCursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'backgroundCursorColor'
] : null, parentState: hydroState), children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_be2e.RenderBox>?, _be2e.RenderBox>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'children'
] : null, parentState: hydroState), clipBehavior: _36c2.maybeUnBoxEnum(values: _a643.Clip.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'clipBehavior'
] : null), cursorColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cursorColor'
] : null, parentState: hydroState), cursorHeight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cursorHeight'
] : null?.toDouble(), cursorOffset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cursorOffset'
] : null, parentState: hydroState), cursorRadius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cursorRadius'
] : null, parentState: hydroState), cursorWidth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'cursorWidth'
] : null?.toDouble(), devicePixelRatio: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'devicePixelRatio'
] : null?.toDouble(), enableInteractiveSelection: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'enableInteractiveSelection'
] : null, expands: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'expands'
] : null, floatingCursorAddedMargin: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'floatingCursorAddedMargin'
] : null, parentState: hydroState), forceLine: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'forceLine'
] : null, foregroundPainter: _36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditablePainter?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'foregroundPainter'
] : null, parentState: hydroState), hasFocus: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'hasFocus'
] : null, ignorePointer: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'ignorePointer'
] : null, locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'locale'
] : null, parentState: hydroState), maxLines: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxLines'
] : null, minLines: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLines'
] : null, obscureText: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'obscureText'
] : null, obscuringCharacter: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'obscuringCharacter'
] : null, onCaretChanged: unpackedonCaretChanged != null ? (caretRect) => unpackedonCaretChanged.dispatch([luaCallerArguments[0],caretRect],parentState:hydroState,) : null , onSelectionChanged: unpackedonSelectionChanged != null ? (selection, renderObject, cause) => unpackedonSelectionChanged.dispatch([luaCallerArguments[0],selection,renderObject,cause],parentState:hydroState,) : null , paintCursorAboveText: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'paintCursorAboveText'
] : null, painter: _36c2.maybeUnBoxAndBuildArgument<_7eb4.RenderEditablePainter?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'painter'
] : null, parentState: hydroState), promptRectColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'promptRectColor'
] : null, parentState: hydroState), promptRectRange: _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'promptRectRange'
] : null, parentState: hydroState), readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'readOnly'
] : null, selection: _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selection'
] : null, parentState: hydroState), selectionColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selectionColor'
] : null, parentState: hydroState), selectionHeightStyle: _36c2.maybeUnBoxEnum(values: _a643.BoxHeightStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selectionHeightStyle'
] : null), selectionWidthStyle: _36c2.maybeUnBoxEnum(values: _a643.BoxWidthStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selectionWidthStyle'
] : null), showCursor: _36c2.maybeUnBoxAndBuildArgument<_e644.ValueNotifier<_fac9.bool>?, _fac9.bool>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'showCursor'
] : null, parentState: hydroState), strutStyle: _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'strutStyle'
] : null, parentState: hydroState), text: _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'text'
] : null, parentState: hydroState), textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textAlign'
] : null), textHeightBehavior: _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textHeightBehavior'
] : null, parentState: hydroState), textScaleFactor: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textScaleFactor'
] : null?.toDouble(), textWidthBasis: _36c2.maybeUnBoxEnum(values: _fe5a.TextWidthBasis.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textWidthBasis'
] : null), endHandleLayerLink: _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'endHandleLayerLink'
] : null, parentState: hydroState), offset: _36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'offset'
] : null, parentState: hydroState), startHandleLayerLink: _36c2.maybeUnBoxAndBuildArgument<_7d70.LayerLink, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'startHandleLayerLink'
] : null, parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textDirection'
] : null), textSelectionDelegate: _36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textSelectionDelegate'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_7eb4.RenderEditable>(boxer: ({required _7eb4.RenderEditable vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRenderEditable(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
