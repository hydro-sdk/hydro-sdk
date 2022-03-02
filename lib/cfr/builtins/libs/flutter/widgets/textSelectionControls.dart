import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/rendering/editable.dart' as _7eb4;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/text_selection.dart' as _578c;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSelectionControls extends _36c2.VMManagedBox<_578c.TextSelectionControls> {VMManagedTextSelectionControls({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'buildHandle'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


_36c2.Closure? unpackedonTap=luaCallerArguments  [
4
];

return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.buildHandle(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxEnum(values: _578c.TextSelectionHandleType.values, boxedEnum: luaCallerArguments  [
2
]), luaCallerArguments  [
3
]?.toDouble(), unpackedonTap != null ? () => unpackedonTap.dispatch([luaCallerArguments[0],],parentState:hydroState,) : null , luaCallerArguments  [
5
]?.toDouble(), luaCallerArguments  [
6
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHandleAnchor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_a643.Offset>(object: vmObject.getHandleAnchor(_36c2.maybeUnBoxEnum(values: _578c.TextSelectionHandleType.values, boxedEnum: luaCallerArguments  [
1
]), luaCallerArguments  [
2
]?.toDouble(), luaCallerArguments  [
3
]?.toDouble(), luaCallerArguments  [
4
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'buildToolbar'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 






return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.buildToolbar(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble(), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments  [
4
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_7eb4.TextSelectionPoint>, _7eb4.TextSelectionPoint>(luaCallerArguments  [
5
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
6
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier, _fac9.dynamic>(luaCallerArguments  [
7
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments  [
8
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHandleSize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.getHandleSize(luaCallerArguments  [
1
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'canCut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.canCut(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'canCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.canCopy(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'canPaste'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.canPaste(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'canSelectAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.canSelectAll(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'handleCut'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.handleCut(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'handleCopy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.handleCopy(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'handlePaste'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.handlePaste(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'handleSelectAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.handleSelectAll(_36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _578c.TextSelectionControls vmObject;

 }

class RTManagedTextSelectionControls extends _578c.TextSelectionControls implements _36c2.Box<_578c.TextSelectionControls> {RTManagedTextSelectionControls({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_buildHandle'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedonTap = luaCallerArguments[4];

  return [
    _36c2.maybeBoxObject(
        object: buildHandle(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _578c.TextSelectionHandleType.values,
                boxedEnum: luaCallerArguments[2]),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[3],
                parentState: hydroState),
            unpackedonTap != null
                ? () => unpackedonTap.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )
                : null,
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments[5],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments[6],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHandleAnchor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: getHandleAnchor(
            _36c2.maybeUnBoxEnum(
                values: _578c.TextSelectionHandleType.values,
                boxedEnum: luaCallerArguments[1]),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments[3],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments[4],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_buildToolbar'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: buildToolbar(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments[2],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments[3],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments[4],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_7eb4.TextSelectionPoint>, _7eb4.TextSelectionPoint>(
                luaCallerArguments[5],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate, _fac9.dynamic>(
                luaCallerArguments[6],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier, _fac9.dynamic>(
                luaCallerArguments[7],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(luaCallerArguments[8], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHandleSize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: getHandleSize(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_canCut'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.canCut(_36c2.maybeUnBoxAndBuildArgument<
            _8577.TextSelectionDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_canCopy'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.canCopy(_36c2.maybeUnBoxAndBuildArgument<
            _8577.TextSelectionDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_canPaste'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.canPaste(_36c2.maybeUnBoxAndBuildArgument<
            _8577.TextSelectionDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_canSelectAll'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.canSelectAll(_36c2.maybeUnBoxAndBuildArgument<
            _8577.TextSelectionDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_handleCut'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleCut(
      _36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier?,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_handleCopy'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleCopy(
      _36c2.maybeUnBoxAndBuildArgument<_8577.TextSelectionDelegate,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_578c.ClipboardStatusNotifier?,
          _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
  return [];
});
table['_dart_handlePaste'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.handlePaste(_36c2.maybeUnBoxAndBuildArgument<
            _8577.TextSelectionDelegate,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_handleSelectAll'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleSelectAll(_36c2.maybeUnBoxAndBuildArgument<
      _8577.TextSelectionDelegate,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_578c.TextSelectionControls unwrap() => this;
_578c.TextSelectionControls get vmObject => this;
@_fac9.override _e2dc.Widget buildHandle(context, type, textLineHeight, [void Function()? onTap, _fac9.double? startGlyphHeight, _fac9.double? endGlyphHeight]) { 
_36c2.Closure closure = table["buildHandle"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Offset getHandleAnchor(type, textLineHeight, [_fac9.double? startGlyphHeight, _fac9.double? endGlyphHeight]) { 
_36c2.Closure closure = table["getHandleAnchor"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.Widget buildToolbar(context, globalEditableRegion, textLineHeight, position, endpoints, delegate, clipboardStatus, lastSecondaryTapDownPosition) { 
_36c2.Closure closure = table["buildToolbar"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Size getHandleSize(textLineHeight) { 
_36c2.Closure closure = table["getHandleSize"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool canCut(delegate) { 
_36c2.Closure closure = table["canCut"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool canCopy(delegate) { 
_36c2.Closure closure = table["canCopy"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool canPaste(delegate) { 
_36c2.Closure closure = table["canPaste"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool canSelectAll(delegate) { 
_36c2.Closure closure = table["canSelectAll"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleCut(delegate, clipboardStatus) { 
_36c2.Closure closure = table["handleCut"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleCopy(delegate, clipboardStatus) { 
_36c2.Closure closure = table["handleCopy"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<void> handlePaste(delegate) { 
_36c2.Closure closure = table["handlePaste"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void handleSelectAll(delegate) { 
_36c2.Closure closure = table["handleSelectAll"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTextSelectionControls({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'textSelectionControls'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedTextSelectionControls(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_578c.TextSelectionControls>(boxer: ({required _578c.TextSelectionControls vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextSelectionControls(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
