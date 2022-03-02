import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/scheduler/ticker.dart' as _e067;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/overlay.dart' as _0049;
import 'package:flutter/src/widgets/ticker_provider.dart' as _3e16;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedOverlayState extends _36c2.VMManagedBox<_0049.OverlayState> {VMManagedOverlayState({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'initState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.initState();
return []; } );
table  [
'insert'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.insert(_36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), above: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'above'
] : null, parentState: hydroState), below: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'below'
] : null, parentState: hydroState));
return []; } );
table  [
'insertAll'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.insertAll(_36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_0049.OverlayEntry>, _0049.OverlayEntry>(luaCallerArguments  [
1
], parentState: hydroState), above: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'above'
] : null, parentState: hydroState), below: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'below'
] : null, parentState: hydroState));
return []; } );
table  [
'rearrange'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.rearrange(_36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_0049.OverlayEntry>, _0049.OverlayEntry>(luaCallerArguments  [
1
], parentState: hydroState), above: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'above'
] : null, parentState: hydroState), below: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'below'
] : null, parentState: hydroState));
return []; } );
table  [
'debugIsVisible'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugIsVisible(_36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'build'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.Widget>(object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'createTicker'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedonTick=luaCallerArguments  [
1
];return [_36c2.maybeBoxObject<_e067.Ticker>(object: vmObject.createTicker((elapsed) => unpackedonTick.dispatch([luaCallerArguments[0],elapsed],parentState:hydroState,)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'didChangeDependencies'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.didChangeDependencies();
return []; } );
table  [
'getWidget'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_0049.Overlay>(object: vmObject.widget, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getContext'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_e2dc.BuildContext>(object: vmObject.context, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getMounted'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.mounted,]; } );
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
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _0049.OverlayState vmObject;

 }

class RTManagedOverlayState extends _0049.OverlayState implements _36c2.Box<_0049.OverlayState> {RTManagedOverlayState({required this.table, required this.hydroState}) : super() { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table['_dart_initState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.initState();
  return [];
});
table['_dart_insert'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.insert(
      _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      above: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['above']
              : null,
          parentState: hydroState),
      below:
          _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['below']
                  : null,
              parentState: hydroState));
  return [];
});
table['_dart_insertAll'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.insertAll(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_0049.OverlayEntry>,
          _0049.OverlayEntry>(luaCallerArguments[1], parentState: hydroState),
      above:
          _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['above']
                  : null,
              parentState: hydroState),
      below: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['below'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_rearrange'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.rearrange(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_0049.OverlayEntry>,
          _0049.OverlayEntry>(luaCallerArguments[1], parentState: hydroState),
      above:
          _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['above']
                  : null,
              parentState: hydroState),
      below: _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry?, _fac9.dynamic>(
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['below'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_debugIsVisible'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugIsVisible(
            _36c2.maybeUnBoxAndBuildArgument<_0049.OverlayEntry, _fac9.dynamic>(
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
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_createTicker'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedonTick = luaCallerArguments[1];
  return [
    _36c2.maybeBoxObject(
        object: super.createTicker((elapsed) => unpackedonTick.dispatch(
              [luaCallerArguments[0], elapsed],
              parentState: hydroState,
            )),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_didChangeDependencies'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didChangeDependencies();
  return [];
});
table['_dart_didUpdateWidget'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.didUpdateWidget(
      _36c2.maybeUnBoxAndBuildArgument<_0049.Overlay, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_reassemble'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.reassemble();
  return [];
});
table['_dart_setState'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedfn = luaCallerArguments[1];
  super.setState(() => unpackedfn.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_deactivate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.deactivate();
  return [];
});
table['_dart_activate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.activate();
  return [];
});
table['_dart_getWidget'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.widget];
});
table['_dart_getContext'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.context];
});
table['_dart_getMounted'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.mounted];
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
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_0049.OverlayState unwrap() => this;
_0049.OverlayState get vmObject => this;
@_fac9.override void initState() { super.initState();
_36c2.Closure closure = table["initState"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void insert(entry, {_0049.OverlayEntry? above, _0049.OverlayEntry? below}) { 
_36c2.Closure closure = table["insert"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void insertAll(entries, {_0049.OverlayEntry? above, _0049.OverlayEntry? below}) { 
_36c2.Closure closure = table["insertAll"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void rearrange(newEntries, {_0049.OverlayEntry? above, _0049.OverlayEntry? below}) { 
_36c2.Closure closure = table["rearrange"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugIsVisible(entry) { 
_36c2.Closure closure = table["debugIsVisible"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e2dc.Widget build(context) { 
_36c2.Closure closure = table["build"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _e067.Ticker createTicker(onTick) { 
_36c2.Closure closure = table["createTicker"];
return _36c2.maybeUnBoxAndBuildArgument<_e067.Ticker, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didChangeDependencies() { super.didChangeDependencies();
_36c2.Closure closure = table["didChangeDependencies"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void didUpdateWidget(oldWidget) { super.didUpdateWidget(oldWidget);
_36c2.Closure closure = table["didUpdateWidget"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void reassemble() { super.reassemble();
_36c2.Closure closure = table["reassemble"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void setState(fn) { 
_36c2.Closure closure = table["setState"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void deactivate() { super.deactivate();
_36c2.Closure closure = table["deactivate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void activate() { super.activate();
_36c2.Closure closure = table["activate"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _0049.Overlay get widget { 
_36c2.Closure closure = table["getWidget"];
return _36c2.maybeUnBoxAndBuildArgument<_0049.Overlay, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _e2dc.BuildContext get context { 
_36c2.Closure closure = table["getContext"];
return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get mounted { 
_36c2.Closure closure = table["getMounted"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadOverlayState({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'overlayState'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return  [RTManagedOverlayState(table: luaCallerArguments  [
0
], hydroState: hydroState)]; } );
_36c2.registerBoxer<_0049.OverlayState>(boxer: ({required _0049.OverlayState vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedOverlayState(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
