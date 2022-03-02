import 'dart:async' as _7de1;
import 'dart:core' as _fac9;

import 'package:flutter/src/animation/curves.dart' as _8c47;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/gestures/drag.dart' as _d9fd;
import 'package:flutter/src/gestures/drag_details.dart' as _4bc7;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/scroll_activity.dart' as _ca8b;
import 'package:flutter/src/widgets/scroll_context.dart' as _3c93;
import 'package:flutter/src/widgets/scroll_metrics.dart' as _96ae;
import 'package:flutter/src/widgets/scroll_physics.dart' as _dbad;
import 'package:flutter/src/widgets/scroll_position.dart' as _6c49;
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart'
    as _0550;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedScrollPositionWithSingleContext
    extends _36c2.VMManagedBox<_0550.ScrollPositionWithSingleContext> {
  VMManagedScrollPositionWithSingleContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['physics'] = _36c2.maybeBoxObject<_dbad.ScrollPhysics>(
        object: vmObject.physics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['context'] = _36c2.maybeBoxObject<_3c93.ScrollContext>(
        object: vmObject.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['keepScrollOffset'] = vmObject.keepScrollOffset;
    table['debugLabel'] = vmObject.debugLabel;
    table['isScrollingNotifier'] = _36c2.maybeBoxObject<_e644.ValueNotifier>(
        object: vmObject.isScrollingNotifier,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getAxisDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.AxisDirection.values.indexWhere((x) {
          return x == vmObject.axisDirection;
        }),
      ];
    });
    table['setPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.setPixels(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['absorb'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.absorb(
          _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['applyNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.applyNewDimensions();
      return [];
    });
    table['beginActivity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.beginActivity(_36c2.maybeUnBoxAndBuildArgument<
          _ca8b.ScrollActivity?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['applyUserOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.applyUserOffset(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['goIdle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.goIdle();
      return [];
    });
    table['goBallistic'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.goBallistic(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getUserScrollDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _f376.ScrollDirection.values.indexWhere((x) {
          return x == vmObject.userScrollDirection;
        }),
      ];
    });
    table['animateTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.animateTo(luaCallerArguments[1]?.toDouble(),
                curve:
                    _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['curve']
                            : null,
                        parentState: hydroState),
                duration: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['duration']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['jumpTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.jumpTo(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['pointerScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.pointerScroll(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['jumpToWithoutSettling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.jumpToWithoutSettling(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['hold'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedholdCancelCallback = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_ca8b.ScrollHoldController>(
            object: vmObject.hold(() => unpackedholdCancelCallback.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['drag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackeddragCancelCallback = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject<_d9fd.Drag>(
            object: vmObject.drag(
                _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragStartDetails,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                () => unpackeddragCancelCallback.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispose();
      return [];
    });
    table['debugFillDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_fac9.String>,
          _fac9.String>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['correctPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.correctPixels(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['correctBy'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.correctBy(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['restoreOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.restoreOffset(luaCallerArguments[1]?.toDouble(),
          initialRestore: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['initialRestore']
              : null);
      return [];
    });
    table['applyViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.applyViewportDimension(luaCallerArguments[1]?.toDouble()),
      ];
    });
    table['applyContentDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.applyContentDimensions(luaCallerArguments[1]?.toDouble(),
            luaCallerArguments[2]?.toDouble()),
      ];
    });
    table['ensureVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.ensureVisible(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
                alignment: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['alignment']
                    : null?.toDouble(),
                alignmentPolicy: _36c2.maybeUnBoxEnum(
                    values: _6c49.ScrollPositionAlignmentPolicy.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['alignmentPolicy']
                        : null),
                curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null,
                    parentState: hydroState),
                targetRenderObject: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['targetRenderObject'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['moveTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.moveTo(luaCallerArguments[1]?.toDouble(),
                clamp: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['clamp']
                    : null,
                curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['curve']
                        : null,
                    parentState: hydroState),
                duration: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['duration']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['didStartScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStartScroll();
      return [];
    });
    table['didUpdateScrollPositionBy'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateScrollPositionBy(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['didEndScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didEndScroll();
      return [];
    });
    table['didOverscrollBy'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didOverscrollBy(luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['didUpdateScrollDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateScrollDirection(_36c2.maybeUnBoxEnum(
          values: _f376.ScrollDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['didUpdateScrollMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didUpdateScrollMetrics();
      return [];
    });
    table['recommendDeferredLoading'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.recommendDeferredLoading(
            _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.notifyListeners();
      return [];
    });
    table['getMinScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minScrollExtent,
      ];
    });
    table['getMaxScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maxScrollExtent,
      ];
    });
    table['getHasContentDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasContentDimensions,
      ];
    });
    table['getPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.pixels,
      ];
    });
    table['getHasPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasPixels,
      ];
    });
    table['getViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.viewportDimension,
      ];
    });
    table['getHasViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasViewportDimension,
      ];
    });
    table['getHaveDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.haveDimensions,
      ];
    });
    table['getAllowImplicitScrolling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.allowImplicitScrolling,
      ];
    });
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_96ae.ScrollMetrics>(
            object: vmObject.copyWith(
                axisDirection: _36c2.maybeUnBoxEnum(
                    values: _487f.AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['axisDirection']
                        : null),
                maxScrollExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['maxScrollExtent']
                    : null?.toDouble(),
                minScrollExtent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minScrollExtent']
                    : null?.toDouble(),
                pixels: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['pixels']
                    : null?.toDouble(),
                viewportDimension: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['viewportDimension']
                    : null?.toDouble()),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAxis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _487f.Axis.values.indexWhere((x) {
          return x == vmObject.axis;
        }),
      ];
    });
    table['getOutOfRange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.outOfRange,
      ];
    });
    table['getAtEdge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.atEdge,
      ];
    });
    table['getExtentBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.extentBefore,
      ];
    });
    table['getExtentInside'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.extentInside,
      ];
    });
    table['getExtentAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.extentAfter,
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      vmObject.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
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

  final _0550.ScrollPositionWithSingleContext vmObject;
}

class RTManagedScrollPositionWithSingleContext
    extends _0550.ScrollPositionWithSingleContext
    implements _36c2.Box<_0550.ScrollPositionWithSingleContext> {
  RTManagedScrollPositionWithSingleContext(
      {_fac9.String? debugLabel,
      _fac9.double? initialPixels,
      required _fac9.bool keepScrollOffset,
      _6c49.ScrollPosition? oldPosition,
      required _3c93.ScrollContext context,
      required _dbad.ScrollPhysics physics,
      required this.table,
      required this.hydroState})
      : super(
            debugLabel: debugLabel,
            initialPixels: initialPixels,
            keepScrollOffset: keepScrollOffset,
            oldPosition: oldPosition,
            context: context,
            physics: physics) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['physics'] = _36c2.maybeBoxObject(
        object: this.physics,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['context'] = _36c2.maybeBoxObject(
        object: this.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['keepScrollOffset'] = _36c2.maybeBoxObject(
        object: this.keepScrollOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugLabel'] = _36c2.maybeBoxObject(
        object: this.debugLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isScrollingNotifier'] = _36c2.maybeBoxObject(
        object: isScrollingNotifier,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getAxisDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.axisDirection];
    });
    table['_dart_setPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.setPixels(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_absorb'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.absorb(
          _36c2.maybeUnBoxAndBuildArgument<_6c49.ScrollPosition, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_applyNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.applyNewDimensions();
      return [];
    });
    table['_dart_beginActivity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.beginActivity(_36c2.maybeUnBoxAndBuildArgument<
          _ca8b.ScrollActivity?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_applyUserOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.applyUserOffset(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_goIdle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.goIdle();
      return [];
    });
    table['_dart_goBallistic'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.goBallistic(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getUserScrollDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.userScrollDirection];
    });
    table['_dart_updateUserScrollDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateUserScrollDirection(_36c2.maybeUnBoxEnum(
          values: _f376.ScrollDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_animateTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.animateTo(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                curve:
                    _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['curve']
                            : null,
                        parentState: hydroState),
                duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_jumpTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.jumpTo(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_pointerScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.pointerScroll(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_jumpToWithoutSettling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.jumpToWithoutSettling(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_hold'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedholdCancelCallback = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.hold(() => unpackedholdCancelCallback.dispatch(
                  [
                    luaCallerArguments[0],
                  ],
                  parentState: hydroState,
                )),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_drag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackeddragCancelCallback = luaCallerArguments[2];
      return [
        _36c2.maybeBoxObject(
            object: super.drag(
                _36c2.maybeUnBoxAndBuildArgument<_4bc7.DragStartDetails,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                () => unpackeddragCancelCallback.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dispose'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispose();
      return [];
    });
    table['_dart_debugFillDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillDescription(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_fac9.String>,
          _fac9.String>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_correctPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.correctPixels(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_correctBy'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.correctBy(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_forcePixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.forcePixels(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_saveScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.saveScrollOffset();
      return [];
    });
    table['_dart_restoreScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.restoreScrollOffset();
      return [];
    });
    table['_dart_restoreOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.restoreOffset(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          initialRestore:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['initialRestore']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_saveOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.saveOffset();
      return [];
    });
    table['_dart_applyBoundaryConditions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyBoundaryConditions(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyViewportDimension(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_applyContentDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.applyContentDimensions(
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
    table['_dart_correctForNewDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.correctForNewDimensions(
                _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics,
                        _fac9.dynamic>(luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_ensureVisible'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.ensureVisible(_36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
                alignment: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['alignment']
                        : null,
                    parentState: hydroState),
                alignmentPolicy: _36c2.maybeUnBoxEnum(
                    values: _6c49.ScrollPositionAlignmentPolicy.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['alignmentPolicy']
                        : null),
                curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['curve'] : null,
                    parentState: hydroState),
                duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null, parentState: hydroState),
                targetRenderObject: _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['targetRenderObject'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_moveTo'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.moveTo(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                clamp: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['clamp']
                        : null,
                    parentState: hydroState),
                curve: _36c2.maybeUnBoxAndBuildArgument<_8c47.Curve?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['curve'] : null,
                    parentState: hydroState),
                duration: _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['duration'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didStartScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStartScroll();
      return [];
    });
    table['_dart_didUpdateScrollPositionBy'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateScrollPositionBy(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didEndScroll'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didEndScroll();
      return [];
    });
    table['_dart_didOverscrollBy'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didOverscrollBy(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_didUpdateScrollDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateScrollDirection(_36c2.maybeUnBoxEnum(
          values: _f376.ScrollDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_didUpdateScrollMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUpdateScrollMetrics();
      return [];
    });
    table['_dart_recommendDeferredLoading'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.recommendDeferredLoading(_36c2
                .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_notifyListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.notifyListeners();
      return [];
    });
    table['_dart_getMinScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minScrollExtent];
    });
    table['_dart_getMaxScrollExtent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maxScrollExtent];
    });
    table['_dart_getHasContentDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasContentDimensions];
    });
    table['_dart_getPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pixels];
    });
    table['_dart_getHasPixels'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasPixels];
    });
    table['_dart_getViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.viewportDimension];
    });
    table['_dart_getHasViewportDimension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasViewportDimension];
    });
    table['_dart_getHaveDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.haveDimensions];
    });
    table['_dart_getAllowImplicitScrolling'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.allowImplicitScrolling];
    });
    table['_dart_getActivity'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.activity];
    });
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                axisDirection: _36c2.maybeUnBoxEnum(
                    values: _487f.AxisDirection.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['axisDirection']
                        : null),
                maxScrollExtent: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxScrollExtent'] : null,
                    parentState: hydroState),
                minScrollExtent:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['minScrollExtent']
                            : null,
                        parentState: hydroState),
                pixels: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['pixels'] : null,
                    parentState: hydroState),
                viewportDimension: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['viewportDimension'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAxis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.axis];
    });
    table['_dart_getOutOfRange'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.outOfRange];
    });
    table['_dart_getAtEdge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.atEdge];
    });
    table['_dart_getExtentBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extentBefore];
    });
    table['_dart_getExtentInside'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extentInside];
    });
    table['_dart_getExtentAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.extentAfter];
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
    table['_dart_addListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.addListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeListener'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedlistener = luaCallerArguments[1];
      super.removeListener(() => unpackedlistener.dispatch(
            [
              luaCallerArguments[0],
            ],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_getHasListeners'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasListeners];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0550.ScrollPositionWithSingleContext unwrap() => this;
  _0550.ScrollPositionWithSingleContext get vmObject => this;
  @_fac9.override
  _487f.AxisDirection get axisDirection {
    _36c2.Closure closure = table["getAxisDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _487f.AxisDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.double setPixels(newPixels) {
    _36c2.Closure closure = table["setPixels"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void absorb(other) {
    super.absorb(other);
    _36c2.Closure closure = table["absorb"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void applyNewDimensions() {
    super.applyNewDimensions();
    _36c2.Closure closure = table["applyNewDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void beginActivity(newActivity) {
    _36c2.Closure closure = table["beginActivity"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void applyUserOffset(delta) {
    _36c2.Closure closure = table["applyUserOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void goIdle() {
    _36c2.Closure closure = table["goIdle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void goBallistic(velocity) {
    _36c2.Closure closure = table["goBallistic"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _f376.ScrollDirection get userScrollDirection {
    _36c2.Closure closure = table["getUserScrollDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _f376.ScrollDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void updateUserScrollDirection(value) {
    _36c2.Closure closure = table["updateUserScrollDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> animateTo(to,
      {required _8c47.Curve curve, required _fac9.Duration duration}) {
    _36c2.Closure closure = table["animateTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void jumpTo(value) {
    _36c2.Closure closure = table["jumpTo"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void pointerScroll(delta) {
    _36c2.Closure closure = table["pointerScroll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void jumpToWithoutSettling(value) {
    _36c2.Closure closure = table["jumpToWithoutSettling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _ca8b.ScrollHoldController hold(holdCancelCallback) {
    _36c2.Closure closure = table["hold"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ca8b.ScrollHoldController, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _d9fd.Drag drag(details, dragCancelCallback) {
    _36c2.Closure closure = table["drag"];
    return _36c2.maybeUnBoxAndBuildArgument<_d9fd.Drag, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void dispose() {
    super.dispose();
    _36c2.Closure closure = table["dispose"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillDescription(description) {
    super.debugFillDescription(description);
    _36c2.Closure closure = table["debugFillDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void correctPixels(value) {
    _36c2.Closure closure = table["correctPixels"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void correctBy(correction) {
    _36c2.Closure closure = table["correctBy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void forcePixels(value) {
    _36c2.Closure closure = table["forcePixels"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void saveScrollOffset() {
    _36c2.Closure closure = table["saveScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void restoreScrollOffset() {
    _36c2.Closure closure = table["restoreScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void restoreOffset(offset, {_fac9.bool initialRestore = false}) {
    _36c2.Closure closure = table["restoreOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void saveOffset() {
    _36c2.Closure closure = table["saveOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double applyBoundaryConditions(value) {
    _36c2.Closure closure = table["applyBoundaryConditions"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool applyViewportDimension(viewportDimension) {
    _36c2.Closure closure = table["applyViewportDimension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool applyContentDimensions(minScrollExtent, maxScrollExtent) {
    _36c2.Closure closure = table["applyContentDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool correctForNewDimensions(oldPosition, newPosition) {
    _36c2.Closure closure = table["correctForNewDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> ensureVisible(object,
      {_fac9.double alignment = 0.0,
      _6c49.ScrollPositionAlignmentPolicy alignmentPolicy =
          _6c49.ScrollPositionAlignmentPolicy.explicit,
      _8c47.Curve curve = _8c47.Curves.ease,
      _fac9.Duration duration = _fac9.Duration.zero,
      _9742.RenderObject? targetRenderObject}) {
    _36c2.Closure closure = table["ensureVisible"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<void> moveTo(to,
      {_fac9.bool? clamp = true,
      _8c47.Curve? curve,
      _fac9.Duration? duration}) {
    _36c2.Closure closure = table["moveTo"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void didStartScroll() {
    _36c2.Closure closure = table["didStartScroll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateScrollPositionBy(delta) {
    _36c2.Closure closure = table["didUpdateScrollPositionBy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didEndScroll() {
    _36c2.Closure closure = table["didEndScroll"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didOverscrollBy(value) {
    _36c2.Closure closure = table["didOverscrollBy"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateScrollDirection(direction) {
    _36c2.Closure closure = table["didUpdateScrollDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUpdateScrollMetrics() {
    _36c2.Closure closure = table["didUpdateScrollMetrics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool recommendDeferredLoading(context) {
    _36c2.Closure closure = table["recommendDeferredLoading"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void notifyListeners() {
    _36c2.Closure closure = table["notifyListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get minScrollExtent {
    _36c2.Closure closure = table["getMinScrollExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get maxScrollExtent {
    _36c2.Closure closure = table["getMaxScrollExtent"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get hasContentDimensions {
    _36c2.Closure closure = table["getHasContentDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get pixels {
    _36c2.Closure closure = table["getPixels"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get hasPixels {
    _36c2.Closure closure = table["getHasPixels"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get viewportDimension {
    _36c2.Closure closure = table["getViewportDimension"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get hasViewportDimension {
    _36c2.Closure closure = table["getHasViewportDimension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get haveDimensions {
    _36c2.Closure closure = table["getHaveDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get allowImplicitScrolling {
    _36c2.Closure closure = table["getAllowImplicitScrolling"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _ca8b.ScrollActivity? get activity {
    _36c2.Closure closure = table["getActivity"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_ca8b.ScrollActivity?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _96ae.ScrollMetrics copyWith(
      {_487f.AxisDirection? axisDirection,
      _fac9.double? maxScrollExtent,
      _fac9.double? minScrollExtent,
      _fac9.double? pixels,
      _fac9.double? viewportDimension}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_96ae.ScrollMetrics, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _487f.Axis get axis {
    _36c2.Closure closure = table["getAxis"];
    return _36c2.maybeUnBoxEnum(
        values: _487f.Axis.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.bool get outOfRange {
    _36c2.Closure closure = table["getOutOfRange"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get atEdge {
    _36c2.Closure closure = table["getAtEdge"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get extentBefore {
    _36c2.Closure closure = table["getExtentBefore"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get extentInside {
    _36c2.Closure closure = table["getExtentInside"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get extentAfter {
    _36c2.Closure closure = table["getExtentAfter"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addListener(listener) {
    _36c2.Closure closure = table["addListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeListener(listener) {
    _36c2.Closure closure = table["removeListener"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get hasListeners {
    _36c2.Closure closure = table["getHasListeners"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadScrollPositionWithSingleContext(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['scrollPositionWithSingleContext'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedScrollPositionWithSingleContext(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          debugLabel: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['debugLabel']
              : null,
          initialPixels: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['initialPixels']
              : null?.toDouble(),
          keepScrollOffset: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['keepScrollOffset']
              : null,
          oldPosition: _36c2
              .maybeUnBoxAndBuildArgument<_6c49.ScrollPosition?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['oldPosition']
                      : null,
                  parentState: hydroState),
          context: _36c2
              .maybeUnBoxAndBuildArgument<_3c93.ScrollContext, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['context'] : null,
                  parentState: hydroState),
          physics: _36c2.maybeUnBoxAndBuildArgument<_dbad.ScrollPhysics, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['physics'] : null,
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_0550.ScrollPositionWithSingleContext>(boxer: (
      {required _0550.ScrollPositionWithSingleContext vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedScrollPositionWithSingleContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
