import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/services/text_editing.dart' as _7986;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsConfiguration extends _36c2.VMManagedBox<_4c98.SemanticsConfiguration> {VMManagedSemanticsConfiguration({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'explicitChildNodes'
] = vmObject.explicitChildNodes;
table  [
'isBlockingSemanticsOfPreviouslyPaintedNodes'
] = vmObject.isBlockingSemanticsOfPreviouslyPaintedNodes;
table  [
'getIsSemanticBoundary'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isSemanticBoundary,]; } );
table  [
'setIsSemanticBoundary'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isSemanticBoundary=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getHasBeenAnnotated'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasBeenAnnotated,]; } );
table  [
'getOnTap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onTap;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnTap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onTap=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnLongPress'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onLongPress;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnLongPress'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onLongPress=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollLeft;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onScrollLeft=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDismiss'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDismiss;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDismiss'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onDismiss=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollRight;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onScrollRight=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollUp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollUp;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollUp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onScrollUp=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollDown;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onScrollDown=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnIncrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onIncrease;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnIncrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onIncrease=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDecrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDecrease;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDecrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onDecrease=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onCopy;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onCopy=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnCut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onCut;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnCut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onCut=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnPaste'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onPaste;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnPaste'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onPaste=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnShowOnScreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onShowOnScreen;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnShowOnScreen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onShowOnScreen=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorForwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorForwardByCharacter;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorForwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onMoveCursorForwardByCharacter=(unpackedvalue != null ? (extendSelection) => unpackedvalue.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorBackwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorBackwardByCharacter;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorBackwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onMoveCursorBackwardByCharacter=(unpackedvalue != null ? (extendSelection) => unpackedvalue.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorForwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorForwardByWord;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorForwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onMoveCursorForwardByWord=(unpackedvalue != null ? (extendSelection) => unpackedvalue.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorBackwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorBackwardByWord;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorBackwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onMoveCursorBackwardByWord=(unpackedvalue != null ? (extendSelection) => unpackedvalue.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnSetSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onSetSelection;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnSetSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onSetSelection=(unpackedvalue != null ? (selection) => unpackedvalue.dispatch([luaCallerArguments[0],selection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnSetText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onSetText;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnSetText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onSetText=(unpackedvalue != null ? (text) => unpackedvalue.dispatch([luaCallerArguments[0],text],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDidGainAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDidGainAccessibilityFocus;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDidGainAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onDidGainAccessibilityFocus=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDidLoseAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDidLoseAccessibilityFocus;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDidLoseAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedvalue=luaCallerArguments  [
1
];vmObject.onDidLoseAccessibilityFocus=(unpackedvalue != null ? () => unpackedvalue.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getActionHandler'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.getActionHandler(_36c2.maybeUnBoxAndBuildArgument<_a643.SemanticsAction, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'getSortKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.sortKey;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.SemanticsSortKey?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setSortKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.sortKey=(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getIndexInParent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.indexInParent;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setIndexInParent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.indexInParent=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getScrollChildCount'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.scrollChildCount;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setScrollChildCount'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scrollChildCount=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getScrollIndex'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.scrollIndex;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setScrollIndex'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scrollIndex=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getPlatformViewId'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.platformViewId;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setPlatformViewId'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.platformViewId=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getMaxValueLength'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.maxValueLength;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setMaxValueLength'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.maxValueLength=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getCurrentValueLength'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.currentValueLength;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setCurrentValueLength'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.currentValueLength=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsMergingSemanticsOfDescendants'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isMergingSemanticsOfDescendants,]; } );
table  [
'setIsMergingSemanticsOfDescendants'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isMergingSemanticsOfDescendants=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getCustomSemanticsActions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Map>(object: vmObject.customSemanticsActions, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setCustomSemanticsActions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.customSemanticsActions=(_36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_4c98.CustomSemanticsAction,void Function()>, _4c98.CustomSemanticsAction>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getLabel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.label,]; } );
table  [
'setLabel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.label=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getAttributedLabel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_4c98.AttributedString>(object: vmObject.attributedLabel, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setAttributedLabel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedLabel=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.value,]; } );
table  [
'setValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.value=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getAttributedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_4c98.AttributedString>(object: vmObject.attributedValue, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setAttributedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedValue=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getIncreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.increasedValue,]; } );
table  [
'setIncreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.increasedValue=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getAttributedIncreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_4c98.AttributedString>(object: vmObject.attributedIncreasedValue, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setAttributedIncreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedIncreasedValue=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getDecreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.decreasedValue,]; } );
table  [
'setDecreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.decreasedValue=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getAttributedDecreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_4c98.AttributedString>(object: vmObject.attributedDecreasedValue, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setAttributedDecreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedDecreasedValue=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getHint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hint,]; } );
table  [
'setHint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.hint=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getAttributedHint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_4c98.AttributedString>(object: vmObject.attributedHint, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'setAttributedHint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedHint=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getHintOverrides'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.hintOverrides;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.SemanticsHintOverrides?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setHintOverrides'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.hintOverrides=(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsHintOverrides?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getElevation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.elevation,]; } );
table  [
'setElevation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.elevation=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getThickness'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.thickness,]; } );
table  [
'setThickness'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.thickness=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getScopesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.scopesRoute,]; } );
table  [
'setScopesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scopesRoute=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getNamesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.namesRoute,]; } );
table  [
'setNamesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.namesRoute=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsImage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isImage,]; } );
table  [
'setIsImage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isImage=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getLiveRegion'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.liveRegion,]; } );
table  [
'setLiveRegion'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.liveRegion=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.textDirection;if(returnValue!= null){return [_a643.TextDirection.values.indexWhere((x) { return x == returnValue; } ),];}return []; } );
table  [
'setTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textDirection=(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
table  [
'getIsSelected'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isSelected,]; } );
table  [
'setIsSelected'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isSelected=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.isEnabled;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setIsEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isEnabled=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsChecked'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.isChecked;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setIsChecked'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isChecked=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsToggled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.isToggled;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setIsToggled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isToggled=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsInMutuallyExclusiveGroup'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isInMutuallyExclusiveGroup,]; } );
table  [
'setIsInMutuallyExclusiveGroup'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isInMutuallyExclusiveGroup=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsFocusable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isFocusable,]; } );
table  [
'setIsFocusable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isFocusable=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsFocused'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isFocused,]; } );
table  [
'setIsFocused'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isFocused=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsButton'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isButton,]; } );
table  [
'setIsButton'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isButton=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isLink,]; } );
table  [
'setIsLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isLink=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsHeader'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isHeader,]; } );
table  [
'setIsHeader'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isHeader=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsSlider'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isSlider,]; } );
table  [
'setIsSlider'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isSlider=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsKeyboardKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isKeyboardKey,]; } );
table  [
'setIsKeyboardKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isKeyboardKey=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsHidden'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isHidden,]; } );
table  [
'setIsHidden'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isHidden=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsTextField'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isTextField,]; } );
table  [
'setIsTextField'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isTextField=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsReadOnly'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isReadOnly,]; } );
table  [
'setIsReadOnly'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isReadOnly=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsObscured'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isObscured,]; } );
table  [
'setIsObscured'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isObscured=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getIsMultiline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isMultiline,]; } );
table  [
'setIsMultiline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.isMultiline=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getHasImplicitScrolling'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasImplicitScrolling,]; } );
table  [
'setHasImplicitScrolling'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.hasImplicitScrolling=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getTextSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.textSelection;if(returnValue!= null){return [_36c2.maybeBoxObject<_7986.TextSelection?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setTextSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textSelection=(_36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getScrollPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.scrollPosition;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setScrollPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scrollPosition=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getScrollExtentMax'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.scrollExtentMax;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setScrollExtentMax'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scrollExtentMax=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getScrollExtentMin'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.scrollExtentMin;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setScrollExtentMin'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scrollExtentMin=(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'getTagsForChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.tagsForChildren;if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Iterable?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'addTagForChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.addTagForChildren(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'isCompatibleWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isCompatibleWith(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'absorb'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.absorb(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'copy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_4c98.SemanticsConfiguration>(object: vmObject.copy(), hydroState: hydroState, table: _36c2.HydroTable()),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4c98.SemanticsConfiguration vmObject;

 }

class RTManagedSemanticsConfiguration extends _4c98.SemanticsConfiguration implements _36c2.Box<_4c98.SemanticsConfiguration> {RTManagedSemanticsConfiguration({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'explicitChildNodes'
] = _36c2.maybeBoxObject(object: explicitChildNodes, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isBlockingSemanticsOfPreviouslyPaintedNodes'
] = _36c2.maybeBoxObject(object: isBlockingSemanticsOfPreviouslyPaintedNodes, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getIsSemanticBoundary'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isSemanticBoundary];
});
table['_dart_setIsSemanticBoundary'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isSemanticBoundary =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getHasBeenAnnotated'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasBeenAnnotated];
});
table['_dart_setOnTap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onTap = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnLongPress'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onLongPress = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnScrollLeft'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onScrollLeft = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnDismiss'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onDismiss = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnScrollRight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onScrollRight = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnScrollUp'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onScrollUp = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnScrollDown'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onScrollDown = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnIncrease'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onIncrease = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnDecrease'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onDecrease = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnCopy'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onCopy = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnCut'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onCut = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnPaste'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onPaste = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnShowOnScreen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onShowOnScreen = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorForwardByCharacter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onMoveCursorForwardByCharacter = (unpackedvalue != null
      ? (extendSelection) => unpackedvalue.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorBackwardByCharacter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onMoveCursorBackwardByCharacter = (unpackedvalue != null
      ? (extendSelection) => unpackedvalue.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorForwardByWord'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onMoveCursorForwardByWord = (unpackedvalue != null
      ? (extendSelection) => unpackedvalue.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorBackwardByWord'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onMoveCursorBackwardByWord = (unpackedvalue != null
      ? (extendSelection) => unpackedvalue.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnSetSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onSetSelection = (unpackedvalue != null
      ? (selection) => unpackedvalue.dispatch(
            [luaCallerArguments[0], selection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnSetText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onSetText = (unpackedvalue != null
      ? (text) => unpackedvalue.dispatch(
            [luaCallerArguments[0], text],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnDidGainAccessibilityFocus'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onDidGainAccessibilityFocus = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnDidLoseAccessibilityFocus'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedvalue = luaCallerArguments[1];
  super.onDidLoseAccessibilityFocus = (unpackedvalue != null
      ? () => unpackedvalue.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_getSortKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.sortKey];
});
table['_dart_setSortKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.sortKey =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIndexInParent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.indexInParent];
});
table['_dart_setIndexInParent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.indexInParent =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getScrollChildCount'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scrollChildCount];
});
table['_dart_setScrollChildCount'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scrollChildCount =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getScrollIndex'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scrollIndex];
});
table['_dart_setScrollIndex'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scrollIndex =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getPlatformViewId'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.platformViewId];
});
table['_dart_setPlatformViewId'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.platformViewId =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getMaxValueLength'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.maxValueLength];
});
table['_dart_setMaxValueLength'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.maxValueLength =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCurrentValueLength'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.currentValueLength];
});
table['_dart_setCurrentValueLength'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.currentValueLength =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsMergingSemanticsOfDescendants'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isMergingSemanticsOfDescendants];
});
table['_dart_setIsMergingSemanticsOfDescendants'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isMergingSemanticsOfDescendants =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getCustomSemanticsActions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.customSemanticsActions];
});
table['_dart_setCustomSemanticsActions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.customSemanticsActions = (_36c2.maybeUnBoxAndBuildArgument<
          _fac9.Map<_4c98.CustomSemanticsAction, void Function()>,
          _4c98.CustomSemanticsAction>(luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getLabel'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.label];
});
table['_dart_setLabel'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.label = (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getAttributedLabel'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attributedLabel];
});
table['_dart_setAttributedLabel'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attributedLabel =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.value];
});
table['_dart_setValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.value = (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getAttributedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attributedValue];
});
table['_dart_setAttributedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attributedValue =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIncreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.increasedValue];
});
table['_dart_setIncreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.increasedValue =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getAttributedIncreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attributedIncreasedValue];
});
table['_dart_setAttributedIncreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attributedIncreasedValue =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getDecreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.decreasedValue];
});
table['_dart_setDecreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.decreasedValue =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getAttributedDecreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attributedDecreasedValue];
});
table['_dart_setAttributedDecreasedValue'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attributedDecreasedValue =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getHint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hint];
});
table['_dart_setHint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.hint = (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getAttributedHint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.attributedHint];
});
table['_dart_setAttributedHint'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attributedHint =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getHintOverrides'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hintOverrides];
});
table['_dart_setHintOverrides'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.hintOverrides = (_36c2.maybeUnBoxAndBuildArgument<
      _4c98.SemanticsHintOverrides?,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_getElevation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.elevation];
});
table['_dart_setElevation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.elevation =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getThickness'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.thickness];
});
table['_dart_setThickness'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.thickness =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getScopesRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scopesRoute];
});
table['_dart_setScopesRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scopesRoute =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getNamesRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.namesRoute];
});
table['_dart_setNamesRoute'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.namesRoute =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsImage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isImage];
});
table['_dart_setIsImage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isImage = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getLiveRegion'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.liveRegion];
});
table['_dart_setLiveRegion'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.liveRegion =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
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
table['_dart_getIsSelected'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isSelected];
});
table['_dart_setIsSelected'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isSelected =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsEnabled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isEnabled];
});
table['_dart_setIsEnabled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isEnabled =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsChecked'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isChecked];
});
table['_dart_setIsChecked'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isChecked =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsToggled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isToggled];
});
table['_dart_setIsToggled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isToggled =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsInMutuallyExclusiveGroup'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isInMutuallyExclusiveGroup];
});
table['_dart_setIsInMutuallyExclusiveGroup'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isInMutuallyExclusiveGroup =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsFocusable'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isFocusable];
});
table['_dart_setIsFocusable'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isFocusable =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsFocused'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isFocused];
});
table['_dart_setIsFocused'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isFocused =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsButton'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isButton];
});
table['_dart_setIsButton'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isButton = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getIsLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isLink];
});
table['_dart_setIsLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isLink = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getIsHeader'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isHeader];
});
table['_dart_setIsHeader'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isHeader = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getIsSlider'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isSlider];
});
table['_dart_setIsSlider'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isSlider = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getIsKeyboardKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isKeyboardKey];
});
table['_dart_setIsKeyboardKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isKeyboardKey =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsHidden'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isHidden];
});
table['_dart_setIsHidden'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isHidden = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getIsTextField'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isTextField];
});
table['_dart_setIsTextField'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isTextField =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsReadOnly'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isReadOnly];
});
table['_dart_setIsReadOnly'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isReadOnly =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsObscured'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isObscured];
});
table['_dart_setIsObscured'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isObscured =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getIsMultiline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isMultiline];
});
table['_dart_setIsMultiline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.isMultiline =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getHasImplicitScrolling'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasImplicitScrolling];
});
table['_dart_setHasImplicitScrolling'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.hasImplicitScrolling =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getTextSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textSelection];
});
table['_dart_setTextSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textSelection =
      (_36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getScrollPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scrollPosition];
});
table['_dart_setScrollPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scrollPosition =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getScrollExtentMax'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scrollExtentMax];
});
table['_dart_setScrollExtentMax'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scrollExtentMax =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getScrollExtentMin'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.scrollExtentMin];
});
table['_dart_setScrollExtentMin'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.scrollExtentMin =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getTagsForChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.tagsForChildren];
});
table['_dart_addTagForChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.addTagForChildren(
      _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_isCompatibleWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isCompatibleWith(_36c2.maybeUnBoxAndBuildArgument<
            _4c98.SemanticsConfiguration?,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_absorb'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.absorb(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_copy'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copy(), hydroState: hydroState, table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_4c98.SemanticsConfiguration unwrap() => this;
_4c98.SemanticsConfiguration get vmObject => this;
@_fac9.override _fac9.bool get isSemanticBoundary { 
_36c2.Closure closure = table["getIsSemanticBoundary"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isSemanticBoundary(value) { 
_36c2.Closure closure = table["setIsSemanticBoundary"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasBeenAnnotated { 
_36c2.Closure closure = table["getHasBeenAnnotated"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onTap(value) { 
_36c2.Closure closure = table["setOnTap"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onLongPress(value) { 
_36c2.Closure closure = table["setOnLongPress"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollLeft(value) { 
_36c2.Closure closure = table["setOnScrollLeft"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDismiss(value) { 
_36c2.Closure closure = table["setOnDismiss"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollRight(value) { 
_36c2.Closure closure = table["setOnScrollRight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollUp(value) { 
_36c2.Closure closure = table["setOnScrollUp"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollDown(value) { 
_36c2.Closure closure = table["setOnScrollDown"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onIncrease(value) { 
_36c2.Closure closure = table["setOnIncrease"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDecrease(value) { 
_36c2.Closure closure = table["setOnDecrease"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onCopy(value) { 
_36c2.Closure closure = table["setOnCopy"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onCut(value) { 
_36c2.Closure closure = table["setOnCut"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onPaste(value) { 
_36c2.Closure closure = table["setOnPaste"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onShowOnScreen(value) { 
_36c2.Closure closure = table["setOnShowOnScreen"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorForwardByCharacter(value) { 
_36c2.Closure closure = table["setOnMoveCursorForwardByCharacter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorBackwardByCharacter(value) { 
_36c2.Closure closure = table["setOnMoveCursorBackwardByCharacter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorForwardByWord(value) { 
_36c2.Closure closure = table["setOnMoveCursorForwardByWord"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorBackwardByWord(value) { 
_36c2.Closure closure = table["setOnMoveCursorBackwardByWord"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onSetSelection(value) { 
_36c2.Closure closure = table["setOnSetSelection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onSetText(value) { 
_36c2.Closure closure = table["setOnSetText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDidGainAccessibilityFocus(value) { 
_36c2.Closure closure = table["setOnDidGainAccessibilityFocus"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDidLoseAccessibilityFocus(value) { 
_36c2.Closure closure = table["setOnDidLoseAccessibilityFocus"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsSortKey? get sortKey { 
_36c2.Closure closure = table["getSortKey"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set sortKey(value) { 
_36c2.Closure closure = table["setSortKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get indexInParent { 
_36c2.Closure closure = table["getIndexInParent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set indexInParent(value) { 
_36c2.Closure closure = table["setIndexInParent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get scrollChildCount { 
_36c2.Closure closure = table["getScrollChildCount"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set scrollChildCount(value) { 
_36c2.Closure closure = table["setScrollChildCount"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get scrollIndex { 
_36c2.Closure closure = table["getScrollIndex"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set scrollIndex(value) { 
_36c2.Closure closure = table["setScrollIndex"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get platformViewId { 
_36c2.Closure closure = table["getPlatformViewId"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set platformViewId(value) { 
_36c2.Closure closure = table["setPlatformViewId"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get maxValueLength { 
_36c2.Closure closure = table["getMaxValueLength"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set maxValueLength(value) { 
_36c2.Closure closure = table["setMaxValueLength"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? get currentValueLength { 
_36c2.Closure closure = table["getCurrentValueLength"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set currentValueLength(value) { 
_36c2.Closure closure = table["setCurrentValueLength"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isMergingSemanticsOfDescendants { 
_36c2.Closure closure = table["getIsMergingSemanticsOfDescendants"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isMergingSemanticsOfDescendants(value) { 
_36c2.Closure closure = table["setIsMergingSemanticsOfDescendants"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Map<_4c98.CustomSemanticsAction,void Function()> get customSemanticsActions { 
_36c2.Closure closure = table["getCustomSemanticsActions"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_4c98.CustomSemanticsAction,void Function()>, _4c98.CustomSemanticsAction>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set customSemanticsActions(value) { 
_36c2.Closure closure = table["setCustomSemanticsActions"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String get label { 
_36c2.Closure closure = table["getLabel"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set label(label) { 
_36c2.Closure closure = table["setLabel"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString get attributedLabel { 
_36c2.Closure closure = table["getAttributedLabel"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedLabel(attributedLabel) { 
_36c2.Closure closure = table["setAttributedLabel"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String get value { 
_36c2.Closure closure = table["getValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set value(value) { 
_36c2.Closure closure = table["setValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString get attributedValue { 
_36c2.Closure closure = table["getAttributedValue"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedValue(attributedValue) { 
_36c2.Closure closure = table["setAttributedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String get increasedValue { 
_36c2.Closure closure = table["getIncreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set increasedValue(increasedValue) { 
_36c2.Closure closure = table["setIncreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString get attributedIncreasedValue { 
_36c2.Closure closure = table["getAttributedIncreasedValue"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedIncreasedValue(attributedIncreasedValue) { 
_36c2.Closure closure = table["setAttributedIncreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String get decreasedValue { 
_36c2.Closure closure = table["getDecreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set decreasedValue(decreasedValue) { 
_36c2.Closure closure = table["setDecreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString get attributedDecreasedValue { 
_36c2.Closure closure = table["getAttributedDecreasedValue"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedDecreasedValue(attributedDecreasedValue) { 
_36c2.Closure closure = table["setAttributedDecreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String get hint { 
_36c2.Closure closure = table["getHint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set hint(hint) { 
_36c2.Closure closure = table["setHint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString get attributedHint { 
_36c2.Closure closure = table["getAttributedHint"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedHint(attributedHint) { 
_36c2.Closure closure = table["setAttributedHint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsHintOverrides? get hintOverrides { 
_36c2.Closure closure = table["getHintOverrides"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsHintOverrides?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set hintOverrides(value) { 
_36c2.Closure closure = table["setHintOverrides"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get elevation { 
_36c2.Closure closure = table["getElevation"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set elevation(value) { 
_36c2.Closure closure = table["setElevation"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get thickness { 
_36c2.Closure closure = table["getThickness"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set thickness(value) { 
_36c2.Closure closure = table["setThickness"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get scopesRoute { 
_36c2.Closure closure = table["getScopesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set scopesRoute(value) { 
_36c2.Closure closure = table["setScopesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get namesRoute { 
_36c2.Closure closure = table["getNamesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set namesRoute(value) { 
_36c2.Closure closure = table["setNamesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isImage { 
_36c2.Closure closure = table["getIsImage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isImage(value) { 
_36c2.Closure closure = table["setIsImage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get liveRegion { 
_36c2.Closure closure = table["getLiveRegion"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set liveRegion(value) { 
_36c2.Closure closure = table["setLiveRegion"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.TextDirection? get textDirection { 
_36c2.Closure closure = table["getTextDirection"];
return _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set textDirection(textDirection) { 
_36c2.Closure closure = table["setTextDirection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isSelected { 
_36c2.Closure closure = table["getIsSelected"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isSelected(value) { 
_36c2.Closure closure = table["setIsSelected"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get isEnabled { 
_36c2.Closure closure = table["getIsEnabled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isEnabled(value) { 
_36c2.Closure closure = table["setIsEnabled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get isChecked { 
_36c2.Closure closure = table["getIsChecked"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isChecked(value) { 
_36c2.Closure closure = table["setIsChecked"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get isToggled { 
_36c2.Closure closure = table["getIsToggled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isToggled(value) { 
_36c2.Closure closure = table["setIsToggled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isInMutuallyExclusiveGroup { 
_36c2.Closure closure = table["getIsInMutuallyExclusiveGroup"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isInMutuallyExclusiveGroup(value) { 
_36c2.Closure closure = table["setIsInMutuallyExclusiveGroup"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isFocusable { 
_36c2.Closure closure = table["getIsFocusable"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isFocusable(value) { 
_36c2.Closure closure = table["setIsFocusable"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isFocused { 
_36c2.Closure closure = table["getIsFocused"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isFocused(value) { 
_36c2.Closure closure = table["setIsFocused"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isButton { 
_36c2.Closure closure = table["getIsButton"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isButton(value) { 
_36c2.Closure closure = table["setIsButton"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isLink { 
_36c2.Closure closure = table["getIsLink"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isLink(value) { 
_36c2.Closure closure = table["setIsLink"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isHeader { 
_36c2.Closure closure = table["getIsHeader"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isHeader(value) { 
_36c2.Closure closure = table["setIsHeader"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isSlider { 
_36c2.Closure closure = table["getIsSlider"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isSlider(value) { 
_36c2.Closure closure = table["setIsSlider"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isKeyboardKey { 
_36c2.Closure closure = table["getIsKeyboardKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isKeyboardKey(value) { 
_36c2.Closure closure = table["setIsKeyboardKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isHidden { 
_36c2.Closure closure = table["getIsHidden"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isHidden(value) { 
_36c2.Closure closure = table["setIsHidden"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isTextField { 
_36c2.Closure closure = table["getIsTextField"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isTextField(value) { 
_36c2.Closure closure = table["setIsTextField"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isReadOnly { 
_36c2.Closure closure = table["getIsReadOnly"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isReadOnly(value) { 
_36c2.Closure closure = table["setIsReadOnly"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isObscured { 
_36c2.Closure closure = table["getIsObscured"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isObscured(value) { 
_36c2.Closure closure = table["setIsObscured"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isMultiline { 
_36c2.Closure closure = table["getIsMultiline"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set isMultiline(value) { 
_36c2.Closure closure = table["setIsMultiline"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasImplicitScrolling { 
_36c2.Closure closure = table["getHasImplicitScrolling"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set hasImplicitScrolling(value) { 
_36c2.Closure closure = table["setHasImplicitScrolling"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7986.TextSelection? get textSelection { 
_36c2.Closure closure = table["getTextSelection"];
return _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set textSelection(value) { 
_36c2.Closure closure = table["setTextSelection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double? get scrollPosition { 
_36c2.Closure closure = table["getScrollPosition"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set scrollPosition(value) { 
_36c2.Closure closure = table["setScrollPosition"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double? get scrollExtentMax { 
_36c2.Closure closure = table["getScrollExtentMax"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set scrollExtentMax(value) { 
_36c2.Closure closure = table["setScrollExtentMax"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double? get scrollExtentMin { 
_36c2.Closure closure = table["getScrollExtentMin"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void set scrollExtentMin(value) { 
_36c2.Closure closure = table["setScrollExtentMin"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Iterable<_4c98.SemanticsTag>? get tagsForChildren { 
_36c2.Closure closure = table["getTagsForChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_4c98.SemanticsTag>?, _4c98.SemanticsTag>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void addTagForChildren(tag) { 
_36c2.Closure closure = table["addTagForChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool isCompatibleWith(other) { 
_36c2.Closure closure = table["isCompatibleWith"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void absorb(child) { 
_36c2.Closure closure = table["absorb"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsConfiguration copy() { 
_36c2.Closure closure = table["copy"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
 }
void loadSemanticsConfiguration({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'semanticsConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedSemanticsConfiguration(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_4c98.SemanticsConfiguration>(boxer: ({required _4c98.SemanticsConfiguration vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedSemanticsConfiguration(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
