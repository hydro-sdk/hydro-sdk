import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/node.dart' as _b05e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/layer.dart' as _7d70;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/proxy_box.dart' as _bf98;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/semantics/semantics_event.dart' as _7afa;
import 'package:flutter/src/services/text_editing.dart' as _7986;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRenderSemanticsAnnotations extends _36c2.VMManagedBox<_bf98.RenderSemanticsAnnotations> {VMManagedRenderSemanticsAnnotations({required this.table, required this.vmObject, required this.hydroState}) : super(
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
'getContainer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.container,]; } );
table  [
'setContainer'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.container=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getExplicitChildNodes'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.explicitChildNodes,]; } );
table  [
'setExplicitChildNodes'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.explicitChildNodes=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getExcludeSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.excludeSemantics,]; } );
table  [
'setExcludeSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.excludeSemantics=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getChecked'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.checked;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setChecked'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.checked=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.enabled;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setEnabled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.enabled=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getSelected'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.selected;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setSelected'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.selected=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getButton'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.button;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setButton'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.button=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getSlider'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.slider;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setSlider'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.slider=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getKeyboardKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.keyboardKey;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setKeyboardKey'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.keyboardKey=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.link;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setLink'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.link=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getHeader'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.header;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setHeader'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.header=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getTextField'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.textField;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setTextField'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textField=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getReadOnly'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.readOnly;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setReadOnly'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.readOnly=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getFocusable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.focusable;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setFocusable'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.focusable=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getFocused'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.focused;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setFocused'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.focused=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getInMutuallyExclusiveGroup'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.inMutuallyExclusiveGroup;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setInMutuallyExclusiveGroup'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.inMutuallyExclusiveGroup=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getObscured'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.obscured;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setObscured'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.obscured=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getMultiline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.multiline;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setMultiline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.multiline=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getScopesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.scopesRoute;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setScopesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.scopesRoute=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getNamesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.namesRoute;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setNamesRoute'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.namesRoute=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getHidden'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.hidden;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setHidden'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.hidden=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getImage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.image;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setImage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.image=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getLiveRegion'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.liveRegion;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setLiveRegion'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.liveRegion=(luaCallerArguments  [
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
'getToggled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.toggled;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setToggled'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.toggled=(luaCallerArguments  [
1
]);
return []; } );
table  [
'getAttributedLabel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.attributedLabel;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.AttributedString?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setAttributedLabel'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedLabel=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getAttributedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.attributedValue;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.AttributedString?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setAttributedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedValue=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getAttributedIncreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.attributedIncreasedValue;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.AttributedString?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setAttributedIncreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedIncreasedValue=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getAttributedDecreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.attributedDecreasedValue;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.AttributedString?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setAttributedDecreasedValue'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedDecreasedValue=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getAttributedHint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.attributedHint;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.AttributedString?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setAttributedHint'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attributedHint=(_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments  [
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
'getTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.textDirection;if(returnValue!= null){return [_a643.TextDirection.values.indexWhere((x) { return x == returnValue; } ),];}return []; } );
table  [
'setTextDirection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.textDirection=(_36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments  [
1
]));
return []; } );
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
'getTagForChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.tagForChildren;if(returnValue!= null){return [_36c2.maybeBoxObject<_4c98.SemanticsTag?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setTagForChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.tagForChildren=(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getOnTap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onTap;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnTap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onTap=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDismiss'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDismiss;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDismiss'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onDismiss=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnLongPress'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onLongPress;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnLongPress'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onLongPress=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollLeft;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollLeft'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onScrollLeft=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollRight;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollRight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onScrollRight=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollUp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollUp;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollUp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onScrollUp=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnScrollDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onScrollDown;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnScrollDown'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onScrollDown=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnIncrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onIncrease;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnIncrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onIncrease=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDecrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDecrease;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDecrease'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onDecrease=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onCopy;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onCopy=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnCut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onCut;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnCut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onCut=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnPaste'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onPaste;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnPaste'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onPaste=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorForwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorForwardByCharacter;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorForwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onMoveCursorForwardByCharacter=(unpackedhandler != null ? (extendSelection) => unpackedhandler.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorBackwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorBackwardByCharacter;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorBackwardByCharacter'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onMoveCursorBackwardByCharacter=(unpackedhandler != null ? (extendSelection) => unpackedhandler.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorForwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorForwardByWord;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorForwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onMoveCursorForwardByWord=(unpackedhandler != null ? (extendSelection) => unpackedhandler.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnMoveCursorBackwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onMoveCursorBackwardByWord;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnMoveCursorBackwardByWord'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onMoveCursorBackwardByWord=(unpackedhandler != null ? (extendSelection) => unpackedhandler.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnSetSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onSetSelection;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnSetSelection'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onSetSelection=(unpackedhandler != null ? (selection) => unpackedhandler.dispatch([luaCallerArguments[0],selection],parentState:hydroState,) : null );
return []; } );
table  [
'getOnSetText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onSetText;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnSetText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onSetText=(unpackedhandler != null ? (text) => unpackedhandler.dispatch([luaCallerArguments[0],text],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDidGainAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDidGainAccessibilityFocus;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDidGainAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onDidGainAccessibilityFocus=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getOnDidLoseAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.onDidLoseAccessibilityFocus;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'setOnDidLoseAccessibilityFocus'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedhandler=luaCallerArguments  [
1
];vmObject.onDidLoseAccessibilityFocus=(unpackedhandler != null ? () => unpackedhandler.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null );
return []; } );
table  [
'getCustomSemanticsActions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.customSemanticsActions;if(returnValue!= null){return [_36c2.maybeBoxObject<_fac9.Map?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setCustomSemanticsActions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.customSemanticsActions=(_36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_4c98.CustomSemanticsAction,void Function()>?, _4c98.CustomSemanticsAction>(luaCallerArguments  [
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
'describeSemanticsConfiguration'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsConfiguration, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugValidateChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugValidateChild(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
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
'debugDescribeChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.debugDescribeChildren().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.child;if(returnValue!= null){return [_36c2.maybeBoxObject<_be2e.RenderBox?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'setChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.child=(_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'setupParentData'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.setupParentData(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
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
'computeDistanceToActualBaseline'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.computeDistanceToActualBaseline(_36c2.maybeUnBoxEnum(values: _a643.TextBaseline.values, boxedEnum: luaCallerArguments  [
1
]));if(returnValue!= null){return [returnValue,];}return []; } );
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
'computeSizeForNoChild'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.computeSizeForNoChild(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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
'applyPaintTransform'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.applyPaintTransform(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4, _fac9.dynamic>(luaCallerArguments  [
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
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
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
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
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

final _bf98.RenderSemanticsAnnotations vmObject;

 }

class RTManagedRenderSemanticsAnnotations extends _bf98.RenderSemanticsAnnotations implements _36c2.Box<_bf98.RenderSemanticsAnnotations> {RTManagedRenderSemanticsAnnotations({_4c98.AttributedString? attributedDecreasedValue, _4c98.AttributedString? attributedHint, _4c98.AttributedString? attributedIncreasedValue, _4c98.AttributedString? attributedLabel, _4c98.AttributedString? attributedValue, _fac9.bool? button, _fac9.bool? checked, _be2e.RenderBox? child, required _fac9.bool container, _fac9.int? currentValueLength, _fac9.Map<_4c98.CustomSemanticsAction,void Function()>? customSemanticsActions, _fac9.bool? enabled, required _fac9.bool excludeSemantics, required _fac9.bool explicitChildNodes, _fac9.bool? focusable, _fac9.bool? focused, _fac9.bool? header, _fac9.bool? hidden, _4c98.SemanticsHintOverrides? hintOverrides, _fac9.bool? image, _fac9.bool? inMutuallyExclusiveGroup, _fac9.bool? keyboardKey, _fac9.bool? link, _fac9.bool? liveRegion, _fac9.int? maxValueLength, _fac9.bool? multiline, _fac9.bool? namesRoute, _fac9.bool? obscured, void Function()? onCopy, void Function()? onCut, void Function()? onDecrease, void Function()? onDidGainAccessibilityFocus, void Function()? onDidLoseAccessibilityFocus, void Function()? onDismiss, void Function()? onIncrease, void Function()? onLongPress, void Function(_fac9.bool extendSelection)? onMoveCursorBackwardByCharacter, void Function(_fac9.bool extendSelection)? onMoveCursorBackwardByWord, void Function(_fac9.bool extendSelection)? onMoveCursorForwardByCharacter, void Function(_fac9.bool extendSelection)? onMoveCursorForwardByWord, void Function()? onPaste, void Function()? onScrollDown, void Function()? onScrollLeft, void Function()? onScrollRight, void Function()? onScrollUp, void Function(_7986.TextSelection selection)? onSetSelection, void Function(_fac9.String text)? onSetText, void Function()? onTap, _fac9.bool? readOnly, _fac9.bool? scopesRoute, _fac9.bool? selected, _fac9.bool? slider, _4c98.SemanticsSortKey? sortKey, _4c98.SemanticsTag? tagForChildren, _a643.TextDirection? textDirection, _fac9.bool? textField, _fac9.bool? toggled, required this.table, required this.hydroState}) : super(attributedDecreasedValue: attributedDecreasedValue,attributedHint: attributedHint,attributedIncreasedValue: attributedIncreasedValue,attributedLabel: attributedLabel,attributedValue: attributedValue,button: button,checked: checked,child: child,container: container,currentValueLength: currentValueLength,customSemanticsActions: customSemanticsActions,enabled: enabled,excludeSemantics: excludeSemantics,explicitChildNodes: explicitChildNodes,focusable: focusable,focused: focused,header: header,hidden: hidden,hintOverrides: hintOverrides,image: image,inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,keyboardKey: keyboardKey,link: link,liveRegion: liveRegion,maxValueLength: maxValueLength,multiline: multiline,namesRoute: namesRoute,obscured: obscured,onCopy: onCopy,onCut: onCut,onDecrease: onDecrease,onDidGainAccessibilityFocus: onDidGainAccessibilityFocus,onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus,onDismiss: onDismiss,onIncrease: onIncrease,onLongPress: onLongPress,onMoveCursorBackwardByCharacter: onMoveCursorBackwardByCharacter,onMoveCursorBackwardByWord: onMoveCursorBackwardByWord,onMoveCursorForwardByCharacter: onMoveCursorForwardByCharacter,onMoveCursorForwardByWord: onMoveCursorForwardByWord,onPaste: onPaste,onScrollDown: onScrollDown,onScrollLeft: onScrollLeft,onScrollRight: onScrollRight,onScrollUp: onScrollUp,onSetSelection: onSetSelection,onSetText: onSetText,onTap: onTap,readOnly: readOnly,scopesRoute: scopesRoute,selected: selected,slider: slider,sortKey: sortKey,tagForChildren: tagForChildren,textDirection: textDirection,textField: textField,toggled: toggled) { table  [
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
table['_dart_getContainer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.container];
});
table['_dart_setContainer'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.container =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getExplicitChildNodes'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.explicitChildNodes];
});
table['_dart_setExplicitChildNodes'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.explicitChildNodes =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getExcludeSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.excludeSemantics];
});
table['_dart_setExcludeSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.excludeSemantics =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getChecked'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.checked];
});
table['_dart_setChecked'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.checked = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getEnabled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.enabled];
});
table['_dart_setEnabled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.enabled = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getSelected'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.selected];
});
table['_dart_setSelected'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.selected =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getButton'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.button];
});
table['_dart_setButton'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.button = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getSlider'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.slider];
});
table['_dart_setSlider'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.slider = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getKeyboardKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.keyboardKey];
});
table['_dart_setKeyboardKey'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.keyboardKey =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.link];
});
table['_dart_setLink'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.link = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getHeader'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.header];
});
table['_dart_setHeader'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.header = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getTextField'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.textField];
});
table['_dart_setTextField'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.textField =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
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
  super.readOnly =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getFocusable'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.focusable];
});
table['_dart_setFocusable'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.focusable =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getFocused'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.focused];
});
table['_dart_setFocused'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.focused = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getInMutuallyExclusiveGroup'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.inMutuallyExclusiveGroup];
});
table['_dart_setInMutuallyExclusiveGroup'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.inMutuallyExclusiveGroup =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getObscured'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.obscured];
});
table['_dart_setObscured'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.obscured =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getMultiline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.multiline];
});
table['_dart_setMultiline'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.multiline =
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getHidden'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hidden];
});
table['_dart_setHidden'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.hidden = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_getImage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.image];
});
table['_dart_setImage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.image = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
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
table['_dart_getToggled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.toggled];
});
table['_dart_setToggled'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.toggled = (_36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(
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
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(
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
table['_dart_getTagForChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.tagForChildren];
});
table['_dart_setTagForChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.tagForChildren =
      (_36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_setOnTap'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onTap = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onDismiss = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onLongPress = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onScrollLeft = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onScrollRight = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onScrollUp = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onScrollDown = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onIncrease = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onDecrease = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onCopy = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onCut = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onPaste = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onMoveCursorForwardByCharacter = (unpackedhandler != null
      ? (extendSelection) => unpackedhandler.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorBackwardByCharacter'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onMoveCursorBackwardByCharacter = (unpackedhandler != null
      ? (extendSelection) => unpackedhandler.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorForwardByWord'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onMoveCursorForwardByWord = (unpackedhandler != null
      ? (extendSelection) => unpackedhandler.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnMoveCursorBackwardByWord'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onMoveCursorBackwardByWord = (unpackedhandler != null
      ? (extendSelection) => unpackedhandler.dispatch(
            [luaCallerArguments[0], extendSelection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnSetSelection'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onSetSelection = (unpackedhandler != null
      ? (selection) => unpackedhandler.dispatch(
            [luaCallerArguments[0], selection],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnSetText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onSetText = (unpackedhandler != null
      ? (text) => unpackedhandler.dispatch(
            [luaCallerArguments[0], text],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_setOnDidGainAccessibilityFocus'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onDidGainAccessibilityFocus = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
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
  _36c2.Closure? unpackedhandler = luaCallerArguments[1];
  super.onDidLoseAccessibilityFocus = (unpackedhandler != null
      ? () => unpackedhandler.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          )
      : null);
  return [];
});
table['_dart_getCustomSemanticsActions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.customSemanticsActions];
});
table['_dart_setCustomSemanticsActions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.customSemanticsActions = (_36c2.maybeUnBoxAndBuildArgument<
          _fac9.Map<_4c98.CustomSemanticsAction, void Function()>?,
          _4c98.CustomSemanticsAction>(luaCallerArguments[1],
      parentState: hydroState));
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
table['_dart_describeSemanticsConfiguration'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.describeSemanticsConfiguration(_36c2.maybeUnBoxAndBuildArgument<
      _4c98.SemanticsConfiguration,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
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
table['_dart_debugDescribeChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugDescribeChildren(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.child];
});
table['_dart_setChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.child =
      (_36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_setupParentData'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.setupParentData(
      _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
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
table['_dart_computeSizeForNoChild'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.computeSizeForNoChild(_36c2.maybeUnBoxAndBuildArgument<
            _be2e.BoxConstraints,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
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
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
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

_bf98.RenderSemanticsAnnotations unwrap() => this;
_bf98.RenderSemanticsAnnotations get vmObject => this;
@_fac9.override _fac9.bool get container { 
_36c2.Closure closure = table["getContainer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set container(value) { 
_36c2.Closure closure = table["setContainer"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get explicitChildNodes { 
_36c2.Closure closure = table["getExplicitChildNodes"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set explicitChildNodes(value) { 
_36c2.Closure closure = table["setExplicitChildNodes"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get excludeSemantics { 
_36c2.Closure closure = table["getExcludeSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set excludeSemantics(value) { 
_36c2.Closure closure = table["setExcludeSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get checked { 
_36c2.Closure closure = table["getChecked"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set checked(value) { 
_36c2.Closure closure = table["setChecked"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get enabled { 
_36c2.Closure closure = table["getEnabled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set enabled(value) { 
_36c2.Closure closure = table["setEnabled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get selected { 
_36c2.Closure closure = table["getSelected"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set selected(value) { 
_36c2.Closure closure = table["setSelected"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get button { 
_36c2.Closure closure = table["getButton"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set button(value) { 
_36c2.Closure closure = table["setButton"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get slider { 
_36c2.Closure closure = table["getSlider"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set slider(value) { 
_36c2.Closure closure = table["setSlider"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get keyboardKey { 
_36c2.Closure closure = table["getKeyboardKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set keyboardKey(value) { 
_36c2.Closure closure = table["setKeyboardKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get link { 
_36c2.Closure closure = table["getLink"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set link(value) { 
_36c2.Closure closure = table["setLink"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get header { 
_36c2.Closure closure = table["getHeader"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set header(value) { 
_36c2.Closure closure = table["setHeader"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get textField { 
_36c2.Closure closure = table["getTextField"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set textField(value) { 
_36c2.Closure closure = table["setTextField"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get readOnly { 
_36c2.Closure closure = table["getReadOnly"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set readOnly(value) { 
_36c2.Closure closure = table["setReadOnly"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get focusable { 
_36c2.Closure closure = table["getFocusable"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set focusable(value) { 
_36c2.Closure closure = table["setFocusable"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get focused { 
_36c2.Closure closure = table["getFocused"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set focused(value) { 
_36c2.Closure closure = table["setFocused"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get inMutuallyExclusiveGroup { 
_36c2.Closure closure = table["getInMutuallyExclusiveGroup"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set inMutuallyExclusiveGroup(value) { 
_36c2.Closure closure = table["setInMutuallyExclusiveGroup"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get obscured { 
_36c2.Closure closure = table["getObscured"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set obscured(value) { 
_36c2.Closure closure = table["setObscured"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get multiline { 
_36c2.Closure closure = table["getMultiline"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set multiline(value) { 
_36c2.Closure closure = table["setMultiline"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get scopesRoute { 
_36c2.Closure closure = table["getScopesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set scopesRoute(value) { 
_36c2.Closure closure = table["setScopesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get namesRoute { 
_36c2.Closure closure = table["getNamesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set namesRoute(value) { 
_36c2.Closure closure = table["setNamesRoute"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get hidden { 
_36c2.Closure closure = table["getHidden"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set hidden(value) { 
_36c2.Closure closure = table["setHidden"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get image { 
_36c2.Closure closure = table["getImage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set image(value) { 
_36c2.Closure closure = table["setImage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool? get liveRegion { 
_36c2.Closure closure = table["getLiveRegion"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set liveRegion(value) { 
_36c2.Closure closure = table["setLiveRegion"];
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
@_fac9.override _fac9.bool? get toggled { 
_36c2.Closure closure = table["getToggled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set toggled(value) { 
_36c2.Closure closure = table["setToggled"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString? get attributedLabel { 
_36c2.Closure closure = table["getAttributedLabel"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedLabel(value) { 
_36c2.Closure closure = table["setAttributedLabel"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString? get attributedValue { 
_36c2.Closure closure = table["getAttributedValue"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedValue(value) { 
_36c2.Closure closure = table["setAttributedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString? get attributedIncreasedValue { 
_36c2.Closure closure = table["getAttributedIncreasedValue"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedIncreasedValue(value) { 
_36c2.Closure closure = table["setAttributedIncreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString? get attributedDecreasedValue { 
_36c2.Closure closure = table["getAttributedDecreasedValue"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedDecreasedValue(value) { 
_36c2.Closure closure = table["setAttributedDecreasedValue"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.AttributedString? get attributedHint { 
_36c2.Closure closure = table["getAttributedHint"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set attributedHint(value) { 
_36c2.Closure closure = table["setAttributedHint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsHintOverrides? get hintOverrides { 
_36c2.Closure closure = table["getHintOverrides"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsHintOverrides?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set hintOverrides(value) { 
_36c2.Closure closure = table["setHintOverrides"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.TextDirection? get textDirection { 
_36c2.Closure closure = table["getTextDirection"];
return _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override void set textDirection(value) { 
_36c2.Closure closure = table["setTextDirection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsSortKey? get sortKey { 
_36c2.Closure closure = table["getSortKey"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set sortKey(value) { 
_36c2.Closure closure = table["setSortKey"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _4c98.SemanticsTag? get tagForChildren { 
_36c2.Closure closure = table["getTagForChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set tagForChildren(value) { 
_36c2.Closure closure = table["setTagForChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onTap(handler) { 
_36c2.Closure closure = table["setOnTap"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDismiss(handler) { 
_36c2.Closure closure = table["setOnDismiss"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onLongPress(handler) { 
_36c2.Closure closure = table["setOnLongPress"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollLeft(handler) { 
_36c2.Closure closure = table["setOnScrollLeft"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollRight(handler) { 
_36c2.Closure closure = table["setOnScrollRight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollUp(handler) { 
_36c2.Closure closure = table["setOnScrollUp"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onScrollDown(handler) { 
_36c2.Closure closure = table["setOnScrollDown"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onIncrease(handler) { 
_36c2.Closure closure = table["setOnIncrease"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDecrease(handler) { 
_36c2.Closure closure = table["setOnDecrease"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onCopy(handler) { 
_36c2.Closure closure = table["setOnCopy"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onCut(handler) { 
_36c2.Closure closure = table["setOnCut"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onPaste(handler) { 
_36c2.Closure closure = table["setOnPaste"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorForwardByCharacter(handler) { 
_36c2.Closure closure = table["setOnMoveCursorForwardByCharacter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorBackwardByCharacter(handler) { 
_36c2.Closure closure = table["setOnMoveCursorBackwardByCharacter"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorForwardByWord(handler) { 
_36c2.Closure closure = table["setOnMoveCursorForwardByWord"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onMoveCursorBackwardByWord(handler) { 
_36c2.Closure closure = table["setOnMoveCursorBackwardByWord"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onSetSelection(handler) { 
_36c2.Closure closure = table["setOnSetSelection"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onSetText(handler) { 
_36c2.Closure closure = table["setOnSetText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDidGainAccessibilityFocus(handler) { 
_36c2.Closure closure = table["setOnDidGainAccessibilityFocus"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void set onDidLoseAccessibilityFocus(handler) { 
_36c2.Closure closure = table["setOnDidLoseAccessibilityFocus"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.Map<_4c98.CustomSemanticsAction,void Function()>? get customSemanticsActions { 
_36c2.Closure closure = table["getCustomSemanticsActions"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_4c98.CustomSemanticsAction,void Function()>?, _4c98.CustomSemanticsAction>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set customSemanticsActions(value) { 
_36c2.Closure closure = table["setCustomSemanticsActions"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void visitChildrenForSemantics(visitor) { 
_36c2.Closure closure = table["visitChildrenForSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void describeSemanticsConfiguration(config) { 
_36c2.Closure closure = table["describeSemanticsConfiguration"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugValidateChild(child) { 
_36c2.Closure closure = table["debugValidateChild"];
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
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.RenderBox? get child { 
_36c2.Closure closure = table["getChild"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void set child(value) { 
_36c2.Closure closure = table["setChild"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void setupParentData(child) { 
_36c2.Closure closure = table["setupParentData"];
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
@_fac9.override _fac9.double? computeDistanceToActualBaseline(baseline) { 
_36c2.Closure closure = table["computeDistanceToActualBaseline"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _a643.Size computeDryLayout(constraints) { 
_36c2.Closure closure = table["computeDryLayout"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void performLayout() { 
_36c2.Closure closure = table["performLayout"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _a643.Size computeSizeForNoChild(constraints) { 
_36c2.Closure closure = table["computeSizeForNoChild"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool hitTestChildren(result, {required _a643.Offset position}) { 
_36c2.Closure closure = table["hitTestChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void applyPaintTransform(child, transform) { 
_36c2.Closure closure = table["applyPaintTransform"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void paint(context, offset) { 
_36c2.Closure closure = table["paint"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
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
@_fac9.override void debugPaintSize(context, offset) { 
_36c2.Closure closure = table["debugPaintSize"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaintBaselines(context, offset) { 
_36c2.Closure closure = table["debugPaintBaselines"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugPaintPointers(context, offset) { 
_36c2.Closure closure = table["debugPaintPointers"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
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
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
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
@_fac9.override _a643.Rect? describeApproximatePaintClip(child) { 
_36c2.Closure closure = table["describeApproximatePaintClip"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Rect?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadRenderSemanticsAnnotations({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'renderSemanticsAnnotations'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



























_36c2.Closure? unpackedonCopy=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onCopy'
] : null;
_36c2.Closure? unpackedonCut=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onCut'
] : null;
_36c2.Closure? unpackedonDecrease=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDecrease'
] : null;
_36c2.Closure? unpackedonDidGainAccessibilityFocus=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDidGainAccessibilityFocus'
] : null;
_36c2.Closure? unpackedonDidLoseAccessibilityFocus=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDidLoseAccessibilityFocus'
] : null;
_36c2.Closure? unpackedonDismiss=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onDismiss'
] : null;
_36c2.Closure? unpackedonIncrease=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onIncrease'
] : null;
_36c2.Closure? unpackedonLongPress=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onLongPress'
] : null;
_36c2.Closure? unpackedonMoveCursorBackwardByCharacter=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onMoveCursorBackwardByCharacter'
] : null;
_36c2.Closure? unpackedonMoveCursorBackwardByWord=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onMoveCursorBackwardByWord'
] : null;
_36c2.Closure? unpackedonMoveCursorForwardByCharacter=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onMoveCursorForwardByCharacter'
] : null;
_36c2.Closure? unpackedonMoveCursorForwardByWord=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onMoveCursorForwardByWord'
] : null;
_36c2.Closure? unpackedonPaste=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onPaste'
] : null;
_36c2.Closure? unpackedonScrollDown=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollDown'
] : null;
_36c2.Closure? unpackedonScrollLeft=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollLeft'
] : null;
_36c2.Closure? unpackedonScrollRight=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollRight'
] : null;
_36c2.Closure? unpackedonScrollUp=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onScrollUp'
] : null;
_36c2.Closure? unpackedonSetSelection=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSetSelection'
] : null;
_36c2.Closure? unpackedonSetText=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onSetText'
] : null;
_36c2.Closure? unpackedonTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTap'
] : null;









return  [RTManagedRenderSemanticsAnnotations(table: luaCallerArguments  [
0
], hydroState: hydroState, attributedDecreasedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedDecreasedValue'
] : null, parentState: hydroState), attributedHint: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedHint'
] : null, parentState: hydroState), attributedIncreasedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedIncreasedValue'
] : null, parentState: hydroState), attributedLabel: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedLabel'
] : null, parentState: hydroState), attributedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'attributedValue'
] : null, parentState: hydroState), button: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'button'
] : null, checked: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'checked'
] : null, child: _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'child'
] : null, parentState: hydroState), container: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'container'
] : null, currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'currentValueLength'
] : null, customSemanticsActions: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_4c98.CustomSemanticsAction,void Function()>?, _4c98.CustomSemanticsAction>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'customSemanticsActions'
] : null, parentState: hydroState), enabled: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'enabled'
] : null, excludeSemantics: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'excludeSemantics'
] : null, explicitChildNodes: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'explicitChildNodes'
] : null, focusable: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focusable'
] : null, focused: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'focused'
] : null, header: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'header'
] : null, hidden: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'hidden'
] : null, hintOverrides: _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsHintOverrides?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'hintOverrides'
] : null, parentState: hydroState), image: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'image'
] : null, inMutuallyExclusiveGroup: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'inMutuallyExclusiveGroup'
] : null, keyboardKey: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'keyboardKey'
] : null, link: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'link'
] : null, liveRegion: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'liveRegion'
] : null, maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxValueLength'
] : null, multiline: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'multiline'
] : null, namesRoute: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'namesRoute'
] : null, obscured: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'obscured'
] : null, onCopy: unpackedonCopy != null ? () => unpackedonCopy.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onCut: unpackedonCut != null ? () => unpackedonCut.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDecrease: unpackedonDecrease != null ? () => unpackedonDecrease.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDidGainAccessibilityFocus: unpackedonDidGainAccessibilityFocus != null ? () => unpackedonDidGainAccessibilityFocus.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDidLoseAccessibilityFocus: unpackedonDidLoseAccessibilityFocus != null ? () => unpackedonDidLoseAccessibilityFocus.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onDismiss: unpackedonDismiss != null ? () => unpackedonDismiss.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onIncrease: unpackedonIncrease != null ? () => unpackedonIncrease.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onLongPress: unpackedonLongPress != null ? () => unpackedonLongPress.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onMoveCursorBackwardByCharacter: unpackedonMoveCursorBackwardByCharacter != null ? (extendSelection) => unpackedonMoveCursorBackwardByCharacter.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null , onMoveCursorBackwardByWord: unpackedonMoveCursorBackwardByWord != null ? (extendSelection) => unpackedonMoveCursorBackwardByWord.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null , onMoveCursorForwardByCharacter: unpackedonMoveCursorForwardByCharacter != null ? (extendSelection) => unpackedonMoveCursorForwardByCharacter.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null , onMoveCursorForwardByWord: unpackedonMoveCursorForwardByWord != null ? (extendSelection) => unpackedonMoveCursorForwardByWord.dispatch([luaCallerArguments[0],extendSelection],parentState:hydroState,) : null , onPaste: unpackedonPaste != null ? () => unpackedonPaste.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollDown: unpackedonScrollDown != null ? () => unpackedonScrollDown.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollLeft: unpackedonScrollLeft != null ? () => unpackedonScrollLeft.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollRight: unpackedonScrollRight != null ? () => unpackedonScrollRight.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onScrollUp: unpackedonScrollUp != null ? () => unpackedonScrollUp.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , onSetSelection: unpackedonSetSelection != null ? (selection) => unpackedonSetSelection.dispatch([luaCallerArguments[0],selection],parentState:hydroState,) : null , onSetText: unpackedonSetText != null ? (text) => unpackedonSetText.dispatch([luaCallerArguments[0],text],parentState:hydroState,) : null , onTap: unpackedonTap != null ? () => unpackedonTap.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , readOnly: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'readOnly'
] : null, scopesRoute: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scopesRoute'
] : null, selected: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'selected'
] : null, slider: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'slider'
] : null, sortKey: _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsSortKey?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'sortKey'
] : null, parentState: hydroState), tagForChildren: _36c2.maybeUnBoxAndBuildArgument<_4c98.SemanticsTag?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'tagForChildren'
] : null, parentState: hydroState), textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textDirection'
] : null), textField: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'textField'
] : null, toggled: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'toggled'
] : null)]; } );
_36c2.registerBoxer<_bf98.RenderSemanticsAnnotations>(boxer: ({required _bf98.RenderSemanticsAnnotations vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRenderSemanticsAnnotations(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
