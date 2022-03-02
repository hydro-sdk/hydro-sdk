import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedBoxConstraints extends _36c2.VMManagedBox<_be2e.BoxConstraints> {VMManagedBoxConstraints({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'minWidth'
] = vmObject.minWidth;
table  [
'maxWidth'
] = vmObject.maxWidth;
table  [
'minHeight'
] = vmObject.minHeight;
table  [
'maxHeight'
] = vmObject.maxHeight;
table  [
'copyWith'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.copyWith(maxHeight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxHeight'
] : null?.toDouble(), maxWidth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxWidth'
] : null?.toDouble(), minHeight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minHeight'
] : null?.toDouble(), minWidth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minWidth'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'deflate'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.deflate(_36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'loosen'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.loosen(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'enforce'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.enforce(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'tighten'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.tighten(height: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'height'
] : null?.toDouble(), width: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'width'
] : null?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getFlipped'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.flipped, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'widthConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.widthConstraints(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'heightConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.heightConstraints(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'constrainWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.constrainWidth(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'constrainHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.constrainHeight(luaCallerArguments  [
1
]?.toDouble()),]; } );
table  [
'constrain'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.constrain(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'constrainDimensions'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.constrainDimensions(luaCallerArguments  [
1
]?.toDouble(), luaCallerArguments  [
2
]?.toDouble()), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'constrainSizeAndAttemptToPreserveAspectRatio'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.constrainSizeAndAttemptToPreserveAspectRatio(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getBiggest'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.biggest, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getSmallest'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_a643.Size>(object: vmObject.smallest, hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHasTightWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasTightWidth,]; } );
table  [
'getHasTightHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasTightHeight,]; } );
table  [
'getIsTight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isTight,]; } );
table  [
'getHasBoundedWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasBoundedWidth,]; } );
table  [
'getHasBoundedHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasBoundedHeight,]; } );
table  [
'getHasInfiniteWidth'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasInfiniteWidth,]; } );
table  [
'getHasInfiniteHeight'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hasInfiniteHeight,]; } );
table  [
'isSatisfiedBy'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isSatisfiedBy(_36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)),]; } );
table  [
'getIsNormalized'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.isNormalized,]; } );
table  [
'debugAssertIsValid'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure? unpackedinformationCollector=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'informationCollector'
] : null;
return [vmObject.debugAssertIsValid(informationCollector: unpackedinformationCollector != null ? () => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(unpackedinformationCollector.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState) : null , isAppliedConstraint: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'isAppliedConstraint'
] : null),]; } );
table  [
'normalize'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_be2e.BoxConstraints>(object: vmObject.normalize(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _be2e.BoxConstraints vmObject;

 }

class RTManagedBoxConstraints extends _be2e.BoxConstraints implements _36c2.Box<_be2e.BoxConstraints> {RTManagedBoxConstraints({required _fac9.double maxHeight, required _fac9.double maxWidth, required _fac9.double minHeight, required _fac9.double minWidth, required this.table, required this.hydroState}) : super(maxHeight: maxHeight,maxWidth: maxWidth,minHeight: minHeight,minWidth: minWidth) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'minWidth'
] = _36c2.maybeBoxObject(object: this.minWidth, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'maxWidth'
] = _36c2.maybeBoxObject(object: this.maxWidth, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'minHeight'
] = _36c2.maybeBoxObject(object: this.minHeight, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'maxHeight'
] = _36c2.maybeBoxObject(object: this.maxHeight, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_copyWith'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.copyWith(
            maxHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxHeight'] : null,
                parentState: hydroState),
            maxWidth: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxWidth'] : null,
                parentState: hydroState),
            minHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minHeight']
                    : null,
                parentState: hydroState),
            minWidth: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minWidth'] : null,
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_deflate'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.deflate(
            _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_loosen'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.loosen(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_enforce'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.enforce(_36c2.maybeUnBoxAndBuildArgument<
            _be2e.BoxConstraints,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_tighten'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.tighten(
            height:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['height']
                        : null,
                    parentState: hydroState),
            width:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['width']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getFlipped'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.flipped];
});
table['_dart_widthConstraints'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.widthConstraints(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_heightConstraints'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.heightConstraints(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_constrainWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.constrainWidth(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_constrainHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.constrainHeight(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_constrain'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.constrain(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_constrainDimensions'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.constrainDimensions(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_constrainSizeAndAttemptToPreserveAspectRatio'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.constrainSizeAndAttemptToPreserveAspectRatio(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getBiggest'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.biggest];
});
table['_dart_getSmallest'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.smallest];
});
table['_dart_getHasTightWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasTightWidth];
});
table['_dart_getHasTightHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasTightHeight];
});
table['_dart_getIsTight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isTight];
});
table['_dart_getHasBoundedWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasBoundedWidth];
});
table['_dart_getHasBoundedHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasBoundedHeight];
});
table['_dart_getHasInfiniteWidth'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasInfiniteWidth];
});
table['_dart_getHasInfiniteHeight'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hasInfiniteHeight];
});
table['_dart_isSatisfiedBy'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.isSatisfiedBy(
            _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getIsNormalized'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.isNormalized];
});
table['_dart_debugAssertIsValid'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
      ? luaCallerArguments[1]['informationCollector']
      : null;
  return [
    _36c2.maybeBoxObject(
        object: super.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_eaf3.DiagnosticsNode>,
                        _eaf3.DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null,
            isAppliedConstraint:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['isAppliedConstraint']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_normalize'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.normalize(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toString(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_be2e.BoxConstraints unwrap() => this;
_be2e.BoxConstraints get vmObject => this;
@_fac9.override _be2e.BoxConstraints copyWith({_fac9.double? maxHeight, _fac9.double? maxWidth, _fac9.double? minHeight, _fac9.double? minWidth}) { 
_36c2.Closure closure = table["copyWith"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints deflate(edges) { 
_36c2.Closure closure = table["deflate"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints loosen() { 
_36c2.Closure closure = table["loosen"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints enforce(constraints) { 
_36c2.Closure closure = table["enforce"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints tighten({_fac9.double? height, _fac9.double? width}) { 
_36c2.Closure closure = table["tighten"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints get flipped { 
_36c2.Closure closure = table["getFlipped"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints widthConstraints() { 
_36c2.Closure closure = table["widthConstraints"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _be2e.BoxConstraints heightConstraints() { 
_36c2.Closure closure = table["heightConstraints"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.double constrainWidth([_fac9.double width = _fac9.double.infinity]) { 
_36c2.Closure closure = table["constrainWidth"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _fac9.double constrainHeight([_fac9.double height = _fac9.double.infinity]) { 
_36c2.Closure closure = table["constrainHeight"];
return closure.dispatch([table],parentState: hydroState)[0]?.toDouble(); } 
@_fac9.override _a643.Size constrain(size) { 
_36c2.Closure closure = table["constrain"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Size constrainDimensions(width, height) { 
_36c2.Closure closure = table["constrainDimensions"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Size constrainSizeAndAttemptToPreserveAspectRatio(size) { 
_36c2.Closure closure = table["constrainSizeAndAttemptToPreserveAspectRatio"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Size get biggest { 
_36c2.Closure closure = table["getBiggest"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _a643.Size get smallest { 
_36c2.Closure closure = table["getSmallest"];
return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get hasTightWidth { 
_36c2.Closure closure = table["getHasTightWidth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasTightHeight { 
_36c2.Closure closure = table["getHasTightHeight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isTight { 
_36c2.Closure closure = table["getIsTight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasBoundedWidth { 
_36c2.Closure closure = table["getHasBoundedWidth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasBoundedHeight { 
_36c2.Closure closure = table["getHasBoundedHeight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasInfiniteWidth { 
_36c2.Closure closure = table["getHasInfiniteWidth"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get hasInfiniteHeight { 
_36c2.Closure closure = table["getHasInfiniteHeight"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool isSatisfiedBy(size) { 
_36c2.Closure closure = table["isSatisfiedBy"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool get isNormalized { 
_36c2.Closure closure = table["getIsNormalized"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugAssertIsValid({_fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector, _fac9.bool isAppliedConstraint = false}) { 
_36c2.Closure closure = table["debugAssertIsValid"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _be2e.BoxConstraints normalize() { 
_36c2.Closure closure = table["normalize"];
return _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toString() { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadBoxConstraints({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'boxConstraints'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 



return  [RTManagedBoxConstraints(table: luaCallerArguments  [
0
], hydroState: hydroState, maxHeight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxHeight'
] : null?.toDouble(), maxWidth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'maxWidth'
] : null?.toDouble(), minHeight: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minHeight'
] : null?.toDouble(), minWidth: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minWidth'
] : null?.toDouble())]; } );
table  [
'boxConstraintsLerp'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

final returnValue = _be2e.BoxConstraints.lerp(_36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_be2e.BoxConstraints?, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState), luaCallerArguments  [
3
]?.toDouble());if(returnValue!= null){return [_36c2.maybeBoxObject<_be2e.BoxConstraints?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
_36c2.registerBoxer<_be2e.BoxConstraints>(boxer: ({required _be2e.BoxConstraints vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedBoxConstraints(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
