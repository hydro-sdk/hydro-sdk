import 'dart:core' as _fac9;

import 'package:flutter/src/physics/simulation.dart' as _5437;
import 'package:flutter/src/physics/spring_simulation.dart' as _5917;
import 'package:flutter/src/physics/tolerance.dart' as _192a;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/page_view.dart' as _4ea2;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPageScrollPhysics
    extends _36c2.VMManagedBox<_4ea2.PageScrollPhysics> {
  VMManagedPageScrollPhysics(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['parent'] = _36c2.maybeBoxObject<_dbad.ScrollPhysics?>(
        object: vmObject.parent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['applyTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_4ea2.PageScrollPhysics>(
            object: vmObject.applyTo(_36c2.maybeUnBoxAndBuildArgument<
                _dbad.ScrollPhysics?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createBallisticSimulation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.createBallisticSimulation(
          _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]?.toDouble());
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_5437.Simulation?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getAllowImplicitScrolling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.allowImplicitScrolling,
      ];
    });
    table['applyPhysicsToUserOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.applyPhysicsToUserOffset(
            _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['shouldAcceptUserOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.shouldAcceptUserOffset(_36c2.maybeUnBoxAndBuildArgument<
            _96ae.ScrollMetrics,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['recommendDeferredLoading'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.recommendDeferredLoading(
            luaCallerArguments[1]?.toDouble(),
            _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[3],
                parentState: hydroState)),
      ];
    });
    table['applyBoundaryConditions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.applyBoundaryConditions(
            _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['adjustPositionForNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.adjustPositionForNewDimensions(
            isScrolling: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['isScrolling']
                : null,
            newPosition: _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['newPosition']
                    : null,
                parentState: hydroState),
            oldPosition: _36c2
                .maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['oldPosition']
                        : null,
                    parentState: hydroState),
            velocity: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['velocity']
                : null?.toDouble()),
      ];
    });
    table['carriedMomentum'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.carriedMomentum(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getSpring'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_5917.SpringDescription>(
            object: vmObject.spring,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getTolerance'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_192a.Tolerance>(
            object: vmObject.tolerance,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMinFlingDistance'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minFlingDistance,
      ];
    });
    table['getMinFlingVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minFlingVelocity,
      ];
    });
    table['getMaxFlingVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maxFlingVelocity,
      ];
    });
    table['getDragStartDistanceMotionThreshold'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.dragStartDistanceMotionThreshold;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _4ea2.PageScrollPhysics vmObject;
}

class RTManagedPageScrollPhysics extends _4ea2.PageScrollPhysics
    implements _36c2.Box<_4ea2.PageScrollPhysics> {
  RTManagedPageScrollPhysics(
      {_dbad.ScrollPhysics? parent,
      required this.table,
      required this.hydroState})
      : super(parent: parent) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['parent'] = _36c2.maybeBoxObject(
        object: this.parent, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_applyTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyTo(_36c2.maybeUnBoxAndBuildArgument<
                _dbad.ScrollPhysics?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createBallisticSimulation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createBallisticSimulation(
                _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAllowImplicitScrolling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.allowImplicitScrolling];
    });
    table['_dart_buildParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildParent(_36c2.maybeUnBoxAndBuildArgument<
                _dbad.ScrollPhysics?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyPhysicsToUserOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyPhysicsToUserOffset(
                _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_shouldAcceptUserOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.shouldAcceptUserOffset(_36c2
                .maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_recommendDeferredLoading'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.recommendDeferredLoading(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyBoundaryConditions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyBoundaryConditions(
                _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_adjustPositionForNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.adjustPositionForNewDimensions(
                isScrolling: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['isScrolling'] : null,
                    parentState: hydroState),
                newPosition: _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['newPosition'] : null,
                    parentState: hydroState),
                oldPosition:
                    _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['oldPosition']
                            : null,
                        parentState: hydroState),
                velocity: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['velocity'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_carriedMomentum'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.carriedMomentum(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getSpring'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.spring];
    });
    table['_dart_getTolerance'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.tolerance];
    });
    table['_dart_getMinFlingDistance'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minFlingDistance];
    });
    table['_dart_getMinFlingVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minFlingVelocity];
    });
    table['_dart_getMaxFlingVelocity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maxFlingVelocity];
    });
    table['_dart_getDragStartDistanceMotionThreshold'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dragStartDistanceMotionThreshold];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _4ea2.PageScrollPhysics unwrap() => this;
  _4ea2.PageScrollPhysics get vmObject => this;
  @_fac9.override
  _4ea2.PageScrollPhysics applyTo(ancestor) {
    _36c2.Closure closure = table["applyTo"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_4ea2.PageScrollPhysics, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _5437.Simulation? createBallisticSimulation(position, velocity) {
    _36c2.Closure closure = table["createBallisticSimulation"];
    return _36c2.maybeUnBoxAndBuildArgument<_5437.Simulation?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get allowImplicitScrolling {
    _36c2.Closure closure = table["getAllowImplicitScrolling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _dbad.ScrollPhysics? buildParent(ancestor) {
    _36c2.Closure closure = table["buildParent"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.double applyPhysicsToUserOffset(position, offset) {
    _36c2.Closure closure = table["applyPhysicsToUserOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool shouldAcceptUserOffset(position) {
    _36c2.Closure closure = table["shouldAcceptUserOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool recommendDeferredLoading(velocity, metrics, context) {
    _36c2.Closure closure = table["recommendDeferredLoading"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double applyBoundaryConditions(position, value) {
    _36c2.Closure closure = table["applyBoundaryConditions"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double adjustPositionForNewDimensions(
      {required _fac9.bool isScrolling,
      required _96ae.ScrollMetrics newPosition,
      required _96ae.ScrollMetrics oldPosition,
      required _fac9.double velocity}) {
    _36c2.Closure closure = table["adjustPositionForNewDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double carriedMomentum(existingVelocity) {
    _36c2.Closure closure = table["carriedMomentum"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _5917.SpringDescription get spring {
    _36c2.Closure closure = table["getSpring"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_5917.SpringDescription, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _192a.Tolerance get tolerance {
    _36c2.Closure closure = table["getTolerance"];
    return _36c2.maybeUnBoxAndBuildArgument<_192a.Tolerance, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double get minFlingDistance {
    _36c2.Closure closure = table["getMinFlingDistance"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get minFlingVelocity {
    _36c2.Closure closure = table["getMinFlingVelocity"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get maxFlingVelocity {
    _36c2.Closure closure = table["getMaxFlingVelocity"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get dragStartDistanceMotionThreshold {
    _36c2.Closure closure = table["getDragStartDistanceMotionThreshold"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPageScrollPhysics(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['pageScrollPhysics'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedPageScrollPhysics(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          parent: _36c2
              .maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['parent']
                      : null,
                  parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_4ea2.PageScrollPhysics>(boxer: (
      {required _4ea2.PageScrollPhysics vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPageScrollPhysics(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
