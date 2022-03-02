import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_notification.dart' as _593c;
import 'package:flutter/src/widgets/scrollbar.dart' as _1c5f;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedRawScrollbar extends _36c2.VMManagedBox<_1c5f.RawScrollbar> {VMManagedRawScrollbar({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'child'
] = _36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'controller'
] = _36c2.maybeBoxObject<_9585.ScrollController?>(object: vmObject.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isAlwaysShown'
] = vmObject.isAlwaysShown;
table  [
'shape'
] = _36c2.maybeBoxObject<_6be9.OutlinedBorder?>(object: vmObject.shape, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'radius'
] = _36c2.maybeBoxObject<_a643.Radius?>(object: vmObject.radius, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'thickness'
] = vmObject.thickness;
table  [
'thumbColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.thumbColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'minThumbLength'
] = vmObject.minThumbLength;
table  [
'minOverscrollLength'
] = vmObject.minOverscrollLength;
table  [
'fadeDuration'
] = _36c2.maybeBoxObject<_fac9.Duration>(object: vmObject.fadeDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'timeToFade'
] = _36c2.maybeBoxObject<_fac9.Duration>(object: vmObject.timeToFade, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'pressDuration'
] = _36c2.maybeBoxObject<_fac9.Duration>(object: vmObject.pressDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'interactive'
] = vmObject.interactive;
table  [
'scrollbarOrientation'
] = _1c5f.ScrollbarOrientation.values.indexWhere((x) { return x == vmObject.scrollbarOrientation; } );
table  [
'mainAxisMargin'
] = vmObject.mainAxisMargin;
table  [
'crossAxisMargin'
] = vmObject.crossAxisMargin;
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'createState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_1c5f.RawScrollbarState>(object: vmObject.createState(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _1c5f.RawScrollbar vmObject;

 }

class RTManagedRawScrollbar extends _1c5f.RawScrollbar implements _36c2.Box<_1c5f.RawScrollbar> {RTManagedRawScrollbar({_9585.ScrollController? controller, required _fac9.double crossAxisMargin, required _fac9.Duration fadeDuration, _fac9.bool? interactive, _fac9.bool? isAlwaysShown, _ab4a.Key? key, required _fac9.double mainAxisMargin, _fac9.double? minOverscrollLength, required _fac9.double minThumbLength, required _fac9.bool Function(_593c.ScrollNotification notification) notificationPredicate, required _fac9.Duration pressDuration, _a643.Radius? radius, _1c5f.ScrollbarOrientation? scrollbarOrientation, _6be9.OutlinedBorder? shape, _fac9.double? thickness, _a643.Color? thumbColor, required _fac9.Duration timeToFade, required _e2dc.Widget child, required this.table, required this.hydroState}) : super(controller: controller,crossAxisMargin: crossAxisMargin,fadeDuration: fadeDuration,interactive: interactive,isAlwaysShown: isAlwaysShown,key: key,mainAxisMargin: mainAxisMargin,minOverscrollLength: minOverscrollLength,minThumbLength: minThumbLength,notificationPredicate: notificationPredicate,pressDuration: pressDuration,radius: radius,scrollbarOrientation: scrollbarOrientation,shape: shape,thickness: thickness,thumbColor: thumbColor,timeToFade: timeToFade,child: child) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'child'
] = _36c2.maybeBoxObject(object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'controller'
] = _36c2.maybeBoxObject(object: this.controller, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'isAlwaysShown'
] = _36c2.maybeBoxObject(object: this.isAlwaysShown, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'shape'
] = _36c2.maybeBoxObject(object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'radius'
] = _36c2.maybeBoxObject(object: this.radius, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'thickness'
] = _36c2.maybeBoxObject(object: this.thickness, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'thumbColor'
] = _36c2.maybeBoxObject(object: this.thumbColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'minThumbLength'
] = _36c2.maybeBoxObject(object: this.minThumbLength, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'minOverscrollLength'
] = _36c2.maybeBoxObject(object: this.minOverscrollLength, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'fadeDuration'
] = _36c2.maybeBoxObject(object: this.fadeDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'timeToFade'
] = _36c2.maybeBoxObject(object: this.timeToFade, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'pressDuration'
] = _36c2.maybeBoxObject(object: this.pressDuration, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'interactive'
] = _36c2.maybeBoxObject(object: this.interactive, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'scrollbarOrientation'
] = _1c5f.ScrollbarOrientation.values.indexWhere((x) { return x == this.scrollbarOrientation; } );
table  [
'mainAxisMargin'
] = _36c2.maybeBoxObject(object: this.mainAxisMargin, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'crossAxisMargin'
] = _36c2.maybeBoxObject(object: this.crossAxisMargin, hydroState: hydroState, table: _36c2.HydroTable());
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

_1c5f.RawScrollbar unwrap() => this;
_1c5f.RawScrollbar get vmObject => this;
@_fac9.override _1c5f.RawScrollbarState<_1c5f.RawScrollbar> createState() { 
_36c2.Closure closure = table["createState"];
return _36c2.maybeUnBoxAndBuildArgument<_1c5f.RawScrollbarState<_1c5f.RawScrollbar>, _1c5f.RawScrollbar>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadRawScrollbar({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'rawScrollbar'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 








_36c2.Closure unpackednotificationPredicate=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'notificationPredicate'
] : null;








return  [RTManagedRawScrollbar(table: luaCallerArguments  [
0
], hydroState: hydroState, controller: _36c2.maybeUnBoxAndBuildArgument<_9585.ScrollController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'controller'
] : null, parentState: hydroState), crossAxisMargin: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'crossAxisMargin'
] : null?.toDouble(), fadeDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'fadeDuration'
] : null, parentState: hydroState), interactive: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'interactive'
] : null, isAlwaysShown: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'isAlwaysShown'
] : null, key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), mainAxisMargin: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'mainAxisMargin'
] : null?.toDouble(), minOverscrollLength: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minOverscrollLength'
] : null?.toDouble(), minThumbLength: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minThumbLength'
] : null?.toDouble(), notificationPredicate: (notification) => unpackednotificationPredicate.dispatch([luaCallerArguments[0],notification],parentState:hydroState,)[0], pressDuration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'pressDuration'
] : null, parentState: hydroState), radius: _36c2.maybeUnBoxAndBuildArgument<_a643.Radius?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'radius'
] : null, parentState: hydroState), scrollbarOrientation: _36c2.maybeUnBoxEnum(values: _1c5f.ScrollbarOrientation.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'scrollbarOrientation'
] : null), shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.OutlinedBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'shape'
] : null, parentState: hydroState), thickness: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'thickness'
] : null?.toDouble(), thumbColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'thumbColor'
] : null, parentState: hydroState), timeToFade: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'timeToFade'
] : null, parentState: hydroState), child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'child'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_1c5f.RawScrollbar>(boxer: ({required _1c5f.RawScrollbar vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedRawScrollbar(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
