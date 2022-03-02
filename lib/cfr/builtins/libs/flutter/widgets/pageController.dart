import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/widgets/page_view.dart' as _4ea2;
import 'package:flutter/src/widgets/scroll_context.dart' as _3c93;
import 'package:flutter/src/widgets/scroll_controller.dart' as _9585;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/scroll_position.dart' as _6c49;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageController extends _36c2.VMManagedBox<_4ea2.PageController> {VMManagedPageController({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'initialPage'
] = vmObject.initialPage;
table  [
'keepPage'
] = vmObject.keepPage;
table  [
'viewportFraction'
] = vmObject.viewportFraction;
table  [
'keepScrollOffset'
] = vmObject.keepScrollOffset;
table  [
'debugLabel'
] = vmObject.debugLabel;
table  [
'getPage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.page;if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'animateToPage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.animateToPage(luaCallerArguments  [
1
], curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'curve'
] : null, parentState: hydroState), duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'duration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'jumpToPage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.jumpToPage(luaCallerArguments  [
1
]);
return []; } );
table  [
'nextPage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.nextPage(curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'curve'
] : null, parentState: hydroState), duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'duration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'previousPage'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.previousPage(curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'curve'
] : null, parentState: hydroState), duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'duration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'createScrollPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_6c49.ScrollPosition>(object: vmObject.createScrollPosition(_36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_3c93.ScrollContext, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition?, _fac9.dynamic>(luaCallerArguments  [
3
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'attach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.attach(_36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'animateTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [_36c2.maybeBoxObject<_7de1.Future>(object: vmObject.animateTo(luaCallerArguments  [
1
]?.toDouble(), curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'curve'
] : null, parentState: hydroState), duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'duration'
] : null, parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'jumpTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.jumpTo(luaCallerArguments  [
1
]?.toDouble());
return []; } );
table  [
'detach'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.detach(_36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'dispose'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.dispose();
return []; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } );
table  [
'debugFillDescription'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'getInitialScrollOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.initialScrollOffset,]; } );
table  [
'getPositions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.Iterable>(object: vmObject.positions, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHasClients'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasClients,]; } );
table  [
'getPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_6c49.ScrollPosition>(object: vmObject.position, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getOffset'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.offset,]; } );
table  [
'addListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.addListener(() => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'removeListener'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedlistener=luaCallerArguments  [
1
];vmObject.removeListener(() => unpackedlistener.dispatch([luaCallerArguments[0],],parentState:hydroState,));
return []; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _4ea2.PageController vmObject;

 }

class RTManagedPageController extends _4ea2.PageController implements _36c2.Box<_4ea2.PageController> {RTManagedPageController({required _fac9.int initialPage, required _fac9.bool keepPage, required _fac9.double viewportFraction, required this.table, required this.hydroState}) : super(initialPage: initialPage,keepPage: keepPage,viewportFraction: viewportFraction) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'initialPage'
] = _36c2.maybeBoxObject(object: this.initialPage, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'keepPage'
] = _36c2.maybeBoxObject(object: this.keepPage, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'viewportFraction'
] = _36c2.maybeBoxObject(object: this.viewportFraction, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'keepScrollOffset'
] = _36c2.maybeBoxObject(object: keepScrollOffset, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'debugLabel'
] = _36c2.maybeBoxObject(object: debugLabel, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getPage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.page];
});
table['_dart_animateToPage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.animateToPage(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['curve']
                    : null,
                parentState: hydroState),
            duration:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_jumpToPage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.jumpToPage(_36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_nextPage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.nextPage(
            curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['curve']
                    : null,
                parentState: hydroState),
            duration:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['duration']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_previousPage'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.previousPage(
            curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['curve']
                    : null,
                parentState: hydroState),
            duration:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['duration']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_createScrollPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.createScrollPosition(
            _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_3c93.ScrollContext,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition?,
                _fac9.dynamic>(luaCallerArguments[3], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_attach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.attach(
      _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_animateTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.animateTo(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['curve']
                    : null,
                parentState: hydroState),
            duration:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_jumpTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.jumpTo(_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
      luaCallerArguments[1],
      parentState: hydroState));
  return [];
});
table['_dart_detach'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.detach(
      _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_dispose'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.dispose();
  return [];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugFillDescription'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillDescription(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.String>, _fac9.String>(
          luaCallerArguments[1],
          parentState: hydroState));
  return [];
});
table['_dart_getInitialScrollOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.initialScrollOffset];
});
table['_dart_getPositions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.positions];
});
table['_dart_getHasClients'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasClients];
});
table['_dart_getPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.position];
});
table['_dart_getOffset'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.offset];
});
table['_dart_addListener'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedlistener = luaCallerArguments[1];
  super.addListener(() => unpackedlistener.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_removeListener'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedlistener = luaCallerArguments[1];
  super.removeListener(() => unpackedlistener.dispatch(
        [
          luaCallerArguments[0],
        ],
        parentState: hydroState,
      ));
  return [];
});
table['_dart_notifyListeners'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.notifyListeners();
  return [];
});
table['_dart_getHasListeners'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasListeners];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_4ea2.PageController unwrap() => this;
_4ea2.PageController get vmObject => this;
@_fac9.override _fac9.double? get page { 
_36c2.Closure closure = table["getPage"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _7de1.Future<void> animateToPage(page, {required _8c47.Curve curve, required _fac9.Duration duration}) { 
_36c2.Closure closure = table["animateToPage"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void jumpToPage(page) { 
_36c2.Closure closure = table["jumpToPage"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<void> nextPage({required _8c47.Curve curve, required _fac9.Duration duration}) { 
_36c2.Closure closure = table["nextPage"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _7de1.Future<void> previousPage({required _8c47.Curve curve, required _fac9.Duration duration}) { 
_36c2.Closure closure = table["previousPage"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _6c49.ScrollPosition createScrollPosition(physics, context, oldPosition) { 
_36c2.Closure closure = table["createScrollPosition"];
return _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void attach(position) { 
_36c2.Closure closure = table["attach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _7de1.Future<void> animateTo(offset, {required _8c47.Curve curve, required _fac9.Duration duration}) { 
_36c2.Closure closure = table["animateTo"];
return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void jumpTo(value) { 
_36c2.Closure closure = table["jumpTo"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void detach(position) { 
_36c2.Closure closure = table["detach"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void dispose() { super.dispose();
_36c2.Closure closure = table["dispose"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillDescription(description) { super.debugFillDescription(description);
_36c2.Closure closure = table["debugFillDescription"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.double get initialScrollOffset { 
_36c2.Closure closure = table["getInitialScrollOffset"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.Iterable<_6c49.ScrollPosition> get positions { 
_36c2.Closure closure = table["getPositions"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_6c49.ScrollPosition>, _6c49.ScrollPosition>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get hasClients { 
_36c2.Closure closure = table["getHasClients"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _6c49.ScrollPosition get position { 
_36c2.Closure closure = table["getPosition"];
return _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double get offset { 
_36c2.Closure closure = table["getOffset"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override void addListener(listener) { 
_36c2.Closure closure = table["addListener"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void removeListener(listener) { 
_36c2.Closure closure = table["removeListener"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void notifyListeners() { 
_36c2.Closure closure = table["notifyListeners"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasListeners { 
_36c2.Closure closure = table["getHasListeners"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadPageController({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'pageController'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return  [RTManagedPageController(table: luaCallerArguments  [
0
], hydroState: hydroState, initialPage: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'initialPage'
] : null, keepPage: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'keepPage'
] : null, viewportFraction: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'viewportFraction'
] : null?.toDouble())]; } );
_36c2.registerBoxer<_4ea2.PageController>(boxer: ({required _4ea2.PageController vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedPageController(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
