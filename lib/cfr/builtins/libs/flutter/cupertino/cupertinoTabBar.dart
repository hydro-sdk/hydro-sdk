import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/cupertino/bottom_tab_bar.dart' as _96db;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/box_border.dart' as _250a;
import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart' as _46d2;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/preferred_size.dart' as _75de;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedCupertinoTabBar extends _36c2.VMManagedBox<_96db.CupertinoTabBar> {VMManagedCupertinoTabBar({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'items'
] = _36c2.maybeBoxObject<_fac9.List<_46d2.BottomNavigationBarItem>>(object: vmObject.items, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'currentIndex'
] = vmObject.currentIndex;
table  [
'backgroundColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.backgroundColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'activeColor'
] = _36c2.maybeBoxObject<_a643.Color?>(object: vmObject.activeColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'inactiveColor'
] = _36c2.maybeBoxObject<_a643.Color>(object: vmObject.inactiveColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'iconSize'
] = vmObject.iconSize;
table  [
'border'
] = _36c2.maybeBoxObject<_250a.Border?>(object: vmObject.border, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject<_ab4a.Key?>(object: vmObject.key, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'getPreferredSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.preferredSize, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'opaque'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.opaque(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'build'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 







_36c2.Closure? unpackedonTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTap'
] : null;return [_36c2.maybeBoxObject<_96db.CupertinoTabBar>(object: vmObject.copyWith(activeColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'activeColor'
] : null, parentState: hydroState), backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'backgroundColor'
] : null, parentState: hydroState), border: _36c2.maybeUnBoxAndBuildArgument<_250a.Border?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'border'
] : null, parentState: hydroState), currentIndex: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'currentIndex'
] : null, iconSize: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'iconSize'
] : null?.toDouble(), inactiveColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'inactiveColor'
] : null, parentState: hydroState), items: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_46d2.BottomNavigationBarItem>?, _46d2.BottomNavigationBarItem>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'items'
] : null, parentState: hydroState), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), onTap: unpackedonTap != null ? (value) => unpackedonTap.dispatch([luaCallerArguments[0],value],parentState:hydroState,) : null ), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'createElement'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.StatelessElement>(object: vmObject.createElement(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
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

final _96db.CupertinoTabBar vmObject;

 }

class RTManagedCupertinoTabBar extends _96db.CupertinoTabBar implements _36c2.Box<_96db.CupertinoTabBar> {RTManagedCupertinoTabBar({_a643.Color? activeColor, _a643.Color? backgroundColor, _250a.Border? border, required _fac9.int currentIndex, required _fac9.double iconSize, required _a643.Color inactiveColor, _ab4a.Key? key, void Function(_fac9.int value)? onTap, required _fac9.List<_46d2.BottomNavigationBarItem> items, required this.table, required this.hydroState}) : super(activeColor: activeColor,backgroundColor: backgroundColor,border: border,currentIndex: currentIndex,iconSize: iconSize,inactiveColor: inactiveColor,key: key,onTap: onTap,items: items) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'items'
] = _36c2.maybeBoxObject(object: this.items, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'currentIndex'
] = _36c2.maybeBoxObject(object: this.currentIndex, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'backgroundColor'
] = _36c2.maybeBoxObject(object: this.backgroundColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'activeColor'
] = _36c2.maybeBoxObject(object: this.activeColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'inactiveColor'
] = _36c2.maybeBoxObject(object: this.inactiveColor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'iconSize'
] = _36c2.maybeBoxObject(object: this.iconSize, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'border'
] = _36c2.maybeBoxObject(object: this.border, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'key'
] = _36c2.maybeBoxObject(object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getPreferredSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.preferredSize];
});
table['_dart_opaque'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.opaque(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_build'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.build(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedonTap =
      luaCallerArguments.length >= 2 ? luaCallerArguments[1]['onTap'] : null;
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            activeColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['activeColor']
                    : null,
                parentState: hydroState),
            backgroundColor:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['backgroundColor']
                        : null,
                    parentState: hydroState),
            border: _36c2.maybeUnBoxAndBuildArgument<_250a.Border?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['border'] : null,
                parentState: hydroState),
            currentIndex: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentIndex'] : null, parentState: hydroState),
            iconSize: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconSize'] : null, parentState: hydroState),
            inactiveColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['inactiveColor'] : null, parentState: hydroState),
            items: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_46d2.BottomNavigationBarItem>?, _46d2.BottomNavigationBarItem>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['items'] : null, parentState: hydroState),
            key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
            onTap: unpackedonTap != null
                ? (value) => unpackedonTap.dispatch(
                      [luaCallerArguments[0], value],
                      parentState: hydroState,
                    )
                : null),
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

_96db.CupertinoTabBar unwrap() => this;
_96db.CupertinoTabBar get vmObject => this;
@_fac9.override _a643.Size get preferredSize { 
_36c2.Closure closure = table["getPreferredSize"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool opaque(context) { 
_36c2.Closure closure = table["opaque"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.Widget build(context) { 
_36c2.Closure closure = table["build"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _96db.CupertinoTabBar copyWith({_a643.Color? activeColor, _a643.Color? backgroundColor, _250a.Border? border, _fac9.int? currentIndex, _fac9.double? iconSize, _a643.Color? inactiveColor, _fac9.List? items, _ab4a.Key? key, void Function(_fac9.int value)? onTap}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_96db.CupertinoTabBar, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.StatelessElement createElement() { 
_36c2.Closure closure = table["createElement"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.StatelessElement, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
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
void loadCupertinoTabBar({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'cupertinoTabBar'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 






_36c2.Closure? unpackedonTap=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onTap'
] : null;

return  [RTManagedCupertinoTabBar(table: luaCallerArguments  [
0
], hydroState: hydroState, activeColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'activeColor'
] : null, parentState: hydroState), backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'backgroundColor'
] : null, parentState: hydroState), border: _36c2.maybeUnBoxAndBuildArgument<_250a.Border?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'border'
] : null, parentState: hydroState), currentIndex: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'currentIndex'
] : null, iconSize: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'iconSize'
] : null?.toDouble(), inactiveColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'inactiveColor'
] : null, parentState: hydroState), key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'key'
] : null, parentState: hydroState), onTap: unpackedonTap != null ? (value) => unpackedonTap.dispatch([luaCallerArguments[0],value],parentState:hydroState,) : null , items: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_46d2.BottomNavigationBarItem>, _46d2.BottomNavigationBarItem>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'items'
] : null, parentState: hydroState))]; } );
_36c2.registerBoxer<_96db.CupertinoTabBar>(boxer: ({required _96db.CupertinoTabBar vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedCupertinoTabBar(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
