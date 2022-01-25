import 'dart:async';
import 'dart:core';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/src/foundation/binding.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/pointer_signal_resolver.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_cache.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/mouse_tracker.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/view.dart';
import 'package:flutter/src/scheduler/binding.dart';
import 'package:flutter/src/scheduler/priority.dart';
import 'package:flutter/src/semantics/binding.dart';
import 'package:flutter/src/services/binary_messenger.dart';
import 'package:flutter/src/services/binding.dart';
import 'package:flutter/src/services/hardware_keyboard.dart';
import 'package:flutter/src/services/restoration.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderingFlutterBinding
    extends VMManagedBox<RenderingFlutterBinding> {
  VMManagedRenderingFlutterBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['pointerRouter'] = maybeBoxObject<PointerRouter>(
        object: vmObject.pointerRouter,
        hydroState: hydroState,
        table: HydroTable());
    table['gestureArena'] = maybeBoxObject<GestureArenaManager>(
        object: vmObject.gestureArena,
        hydroState: hydroState,
        table: HydroTable());
    table['pointerSignalResolver'] = maybeBoxObject<PointerSignalResolver>(
        object: vmObject.pointerSignalResolver,
        hydroState: hydroState,
        table: HydroTable());
    table['resamplingEnabled'] = vmObject.resamplingEnabled;
    table['samplingOffset'] = maybeBoxObject<Duration>(
        object: vmObject.samplingOffset,
        hydroState: hydroState,
        table: HydroTable());

    table['initInstances'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['unlocked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.unlocked();
      return [];
    });
    table['cancelPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cancelPointer(luaCallerArguments[1]);
      return [];
    });
    table['handlePointerEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handlePointerEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.hitTest(
          maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['dispatchEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.dispatchEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<HitTestResult?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['addTimingsCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeTimingsCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject.removeTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['initServiceExtensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.initServiceExtensions();
      return [];
    });
    table['scheduleTask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtask = luaCallerArguments[1];

      return [
        maybeBoxObject<Future>(
            object: vmObject.scheduleTask(
                () => unpackedtask.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                maybeUnBoxAndBuildArgument<Priority, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                debugLabel: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['debugLabel']
                    : null,
                flow: maybeUnBoxAndBuildArgument<Flow?, dynamic>(
                    luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['flow']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['scheduleFrameCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        vmObject.scheduleFrameCallback(
            (timeStamp) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], timeStamp],
                  parentState: hydroState,
                ),
            rescheduling: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['rescheduling']
                : null),
      ];
    });
    table['cancelFrameCallbackWithId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.cancelFrameCallbackWithId(luaCallerArguments[1]);
      return [];
    });
    table['debugAssertNoTransientCallbacks'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertNoTransientCallbacks(luaCallerArguments[1]),
      ];
    });
    table['addPersistentFrameCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject
          .addPersistentFrameCallback((timeStamp) => unpackedcallback.dispatch(
                [luaCallerArguments[0], timeStamp],
                parentState: hydroState,
              ));
      return [];
    });
    table['addPostFrameCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addPostFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['ensureVisualUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.ensureVisualUpdate();
      return [];
    });
    table['scheduleFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleFrame();
      return [];
    });
    table['scheduleForcedFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleForcedFrame();
      return [];
    });
    table['scheduleWarmUpFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.scheduleWarmUpFrame();
      return [];
    });
    table['resetEpoch'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resetEpoch();
      return [];
    });
    table['handleBeginFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleBeginFrame(maybeUnBoxAndBuildArgument<Duration?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['handleDrawFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.handleDrawFrame();
      return [];
    });
    table['getLifecycleState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.lifecycleState;
      if (returnValue != null) {
        return [
          AppLifecycleState.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['getTransientCallbackCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.transientCallbackCount,
      ];
    });
    table['getEndOfFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.endOfFrame,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getHasScheduledFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasScheduledFrame,
      ];
    });
    table['getSchedulerPhase'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        SchedulerPhase.values.indexWhere((x) {
          return x == vmObject.schedulerPhase;
        }),
      ];
    });
    table['getFramesEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.framesEnabled,
      ];
    });
    table['getCurrentFrameTimeStamp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Duration>(
            object: vmObject.currentFrameTimeStamp,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getCurrentSystemFrameTimeStamp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Duration>(
            object: vmObject.currentSystemFrameTimeStamp,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setSystemUiChangeCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.setSystemUiChangeCallback(unpackedcallback != null
          ? (systemOverlaysAreVisible) =>
              maybeUnBoxAndBuildArgument<Future<void>, void>(
                  unpackedcallback.dispatch(
                    [luaCallerArguments[0], systemOverlaysAreVisible],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
          : null);
      return [];
    });
    table['getKeyboard'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<HardwareKeyboard>(
            object: vmObject.keyboard,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getKeyEventManager'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<KeyEventManager>(
            object: vmObject.keyEventManager,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDefaultBinaryMessenger'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BinaryMessenger>(
            object: vmObject.defaultBinaryMessenger,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getChannelBuffers'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ChannelBuffers>(
            object: vmObject.channelBuffers,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getRestorationManager'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RestorationManager>(
            object: vmObject.restorationManager,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['createSemanticsUpdateBuilder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsUpdateBuilder>(
            object: vmObject.createSemanticsUpdateBuilder(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getAccessibilityFeatures'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<AccessibilityFeatures>(
            object: vmObject.accessibilityFeatures,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDisableAnimations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.disableAnimations,
      ];
    });
    table['instantiateImageCodec'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.instantiateImageCodec(
                maybeUnBoxAndBuildArgument<Uint8List, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                allowUpscaling: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['allowUpscaling']
                    : null,
                cacheHeight: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cacheHeight']
                    : null,
                cacheWidth: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cacheWidth']
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getImageCache'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.imageCache;
      if (returnValue != null) {
        return [
          maybeBoxObject<ImageCache?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getSystemFonts'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Listenable>(
            object: vmObject.systemFonts,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['initRenderView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.initRenderView();
      return [];
    });
    table['createViewConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: vmObject.createViewConfiguration(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setSemanticsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setSemanticsEnabled(luaCallerArguments[1]);
      return [];
    });
    table['deferFirstFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.deferFirstFrame();
      return [];
    });
    table['allowFirstFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.allowFirstFrame();
      return [];
    });
    table['resetFirstFrameSent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.resetFirstFrameSent();
      return [];
    });
    table['performReassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.performReassemble(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getMouseTracker'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<MouseTracker>(
            object: vmObject.mouseTracker,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPipelineOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PipelineOwner>(
            object: vmObject.pipelineOwner,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getRenderView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderView>(
            object: vmObject.renderView,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['setRenderView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.renderView = (maybeUnBoxAndBuildArgument<RenderView, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getSendFramesToEngine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.sendFramesToEngine,
      ];
    });
    table['reassembleApplication'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: vmObject.reassembleApplication(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getWindow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SingletonFlutterWindow>(
            object: vmObject.window,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPlatformDispatcher'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<PlatformDispatcher>(
            object: vmObject.platformDispatcher,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RenderingFlutterBinding vmObject;
}

class RTManagedRenderingFlutterBinding extends RenderingFlutterBinding
    implements Box<RenderingFlutterBinding> {
  RTManagedRenderingFlutterBinding(
      {RenderBox? root, required this.table, required this.hydroState})
      : super(root: root) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['pointerRouter'] = maybeBoxObject<PointerRouter>(
        object: pointerRouter, hydroState: hydroState, table: HydroTable());
    table['gestureArena'] = maybeBoxObject<GestureArenaManager>(
        object: gestureArena, hydroState: hydroState, table: HydroTable());
    table['pointerSignalResolver'] = maybeBoxObject<PointerSignalResolver>(
        object: pointerSignalResolver,
        hydroState: hydroState,
        table: HydroTable());
    table['resamplingEnabled'] = resamplingEnabled;
    table['samplingOffset'] = maybeBoxObject<Duration>(
        object: samplingOffset, hydroState: hydroState, table: HydroTable());

    table['_dart_initInstances'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.initInstances();
      return [];
    });
    table['_dart_unlocked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.unlocked();
      return [];
    });
    table['_dart_cancelPointer'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cancelPointer(luaCallerArguments[1]);
      return [];
    });
    table['_dart_handlePointerEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handlePointerEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_hitTest'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.hitTest(
          maybeUnBoxAndBuildArgument<HitTestResult, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispatchEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dispatchEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<HitTestResult?, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleEvent(
          maybeUnBoxAndBuildArgument<PointerEvent, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<HitTestEntry, dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_resetGestureBinding'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resetGestureBinding();
      return [];
    });
    table['_dart_getDebugSamplingClock'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugSamplingClock];
    });
    table['_dart_addTimingsCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.addTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeTimingsCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.removeTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_initServiceExtensions'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.initServiceExtensions();
      return [];
    });
    table['_dart_handleAppLifecycleStateChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleAppLifecycleStateChanged(maybeUnBoxEnum(
          values: AppLifecycleState.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_scheduleTask'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedtask = luaCallerArguments[1];

      return [
        maybeBoxObject<Future>(
            object: super.scheduleTask(
                () => unpackedtask.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                maybeUnBoxAndBuildArgument<Priority, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                debugLabel: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['debugLabel']
                    : null,
                flow: maybeUnBoxAndBuildArgument<Flow?, dynamic>(
                    luaCallerArguments.length >= 4
                        ? luaCallerArguments[3]['flow']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_scheduleFrameCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        super.scheduleFrameCallback(
            (timeStamp) => unpackedcallback.dispatch(
                  [luaCallerArguments[0], timeStamp],
                  parentState: hydroState,
                ),
            rescheduling: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['rescheduling']
                : null)
      ];
    });
    table['_dart_cancelFrameCallbackWithId'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.cancelFrameCallbackWithId(luaCallerArguments[1]);
      return [];
    });
    table['_dart_debugAssertNoTransientCallbacks'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugAssertNoTransientCallbacks(luaCallerArguments[1])];
    });
    table['_dart_addPersistentFrameCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.addPersistentFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_addPostFrameCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      super.addPostFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_ensureFrameCallbacksRegistered'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.ensureFrameCallbacksRegistered();
      return [];
    });
    table['_dart_ensureVisualUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.ensureVisualUpdate();
      return [];
    });
    table['_dart_scheduleFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleFrame();
      return [];
    });
    table['_dart_scheduleForcedFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleForcedFrame();
      return [];
    });
    table['_dart_scheduleWarmUpFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.scheduleWarmUpFrame();
      return [];
    });
    table['_dart_resetEpoch'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resetEpoch();
      return [];
    });
    table['_dart_handleBeginFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleBeginFrame(maybeUnBoxAndBuildArgument<Duration?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_handleDrawFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleDrawFrame();
      return [];
    });
    table['_dart_getLifecycleState'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.lifecycleState];
    });
    table['_dart_getTransientCallbackCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.transientCallbackCount];
    });
    table['_dart_getEndOfFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.endOfFrame];
    });
    table['_dart_getHasScheduledFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hasScheduledFrame];
    });
    table['_dart_getSchedulerPhase'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.schedulerPhase];
    });
    table['_dart_getFramesEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.framesEnabled];
    });
    table['_dart_getCurrentFrameTimeStamp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentFrameTimeStamp];
    });
    table['_dart_getCurrentSystemFrameTimeStamp'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.currentSystemFrameTimeStamp];
    });
    table['_dart_createBinaryMessenger'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<BinaryMessenger>(
            object: super.createBinaryMessenger(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_handleMemoryPressure'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleMemoryPressure();
      return [];
    });
    table['_dart_handleSystemMessage'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.handleSystemMessage(
                maybeUnBoxAndBuildArgument<Object, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_initLicenses'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.initLicenses();
      return [];
    });
    table['_dart_evict'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.evict(luaCallerArguments[1]);
      return [];
    });
    table['_dart_readInitialLifecycleStateFromNativeWindow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.readInitialLifecycleStateFromNativeWindow();
      return [];
    });
    table['_dart_createRestorationManager'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RestorationManager>(
            object: super.createRestorationManager(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_setSystemUiChangeCallback'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedcallback = luaCallerArguments[1];
      super.setSystemUiChangeCallback(unpackedcallback != null
          ? (systemOverlaysAreVisible) =>
              maybeUnBoxAndBuildArgument<Future<void>, void>(
                  unpackedcallback.dispatch(
                    [luaCallerArguments[0], systemOverlaysAreVisible],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
          : null);
      return [];
    });
    table['_dart_getKeyboard'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.keyboard];
    });
    table['_dart_getKeyEventManager'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.keyEventManager];
    });
    table['_dart_getDefaultBinaryMessenger'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.defaultBinaryMessenger];
    });
    table['_dart_getChannelBuffers'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.channelBuffers];
    });
    table['_dart_getRestorationManager'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.restorationManager];
    });
    table['_dart_handleAccessibilityFeaturesChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleAccessibilityFeaturesChanged();
      return [];
    });
    table['_dart_createSemanticsUpdateBuilder'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SemanticsUpdateBuilder>(
            object: super.createSemanticsUpdateBuilder(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getAccessibilityFeatures'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.accessibilityFeatures];
    });
    table['_dart_getDisableAnimations'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.disableAnimations];
    });
    table['_dart_createImageCache'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ImageCache>(
            object: super.createImageCache(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_instantiateImageCodec'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.instantiateImageCodec(
                maybeUnBoxAndBuildArgument<Uint8List, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                allowUpscaling: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['allowUpscaling']
                    : null,
                cacheHeight: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cacheHeight']
                    : null,
                cacheWidth: luaCallerArguments.length >= 3
                    ? luaCallerArguments[2]['cacheWidth']
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getImageCache'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.imageCache];
    });
    table['_dart_getSystemFonts'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.systemFonts];
    });
    table['_dart_initRenderView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.initRenderView();
      return [];
    });
    table['_dart_handleMetricsChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleMetricsChanged();
      return [];
    });
    table['_dart_handleTextScaleFactorChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handleTextScaleFactorChanged();
      return [];
    });
    table['_dart_handlePlatformBrightnessChanged'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.handlePlatformBrightnessChanged();
      return [];
    });
    table['_dart_createViewConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<ViewConfiguration>(
            object: super.createViewConfiguration(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_setSemanticsEnabled'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.setSemanticsEnabled(luaCallerArguments[1]);
      return [];
    });
    table['_dart_deferFirstFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.deferFirstFrame();
      return [];
    });
    table['_dart_allowFirstFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.allowFirstFrame();
      return [];
    });
    table['_dart_resetFirstFrameSent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.resetFirstFrameSent();
      return [];
    });
    table['_dart_drawFrame'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.drawFrame();
      return [];
    });
    table['_dart_performReassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.performReassemble(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getMouseTracker'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.mouseTracker];
    });
    table['_dart_getPipelineOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.pipelineOwner];
    });
    table['_dart_getRenderView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.renderView];
    });
    table['_dart_setRenderView'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.renderView = (maybeUnBoxAndBuildArgument<RenderView, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getSendFramesToEngine'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.sendFramesToEngine];
    });
    table['_dart_lockEvents'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments[1];
      return [
        maybeBoxObject<Future>(
            object: super.lockEvents(
                () => maybeUnBoxAndBuildArgument<Future<void>, void>(
                    unpackedcallback.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_reassembleApplication'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Future>(
            object: super.reassembleApplication(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_registerSignalServiceExtension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['callback']
          : null;
      super.registerSignalServiceExtension(
          callback: () => maybeUnBoxAndBuildArgument<Future<void>, void>(
              unpackedcallback.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null);
      return [];
    });
    table['_dart_registerBoolServiceExtension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedgetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['getter']
          : null;

      Closure unpackedsetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['setter']
          : null;
      super.registerBoolServiceExtension(
          getter: () => maybeUnBoxAndBuildArgument<Future<bool>, bool>(
              unpackedgetter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null,
          setter: (value) => maybeUnBoxAndBuildArgument<Future<void>, void>(
              unpackedsetter.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_registerNumericServiceExtension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedgetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['getter']
          : null;

      Closure unpackedsetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['setter']
          : null;
      super.registerNumericServiceExtension(
          getter: () => maybeUnBoxAndBuildArgument<Future<double>, double>(
              unpackedgetter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null,
          setter: (value) => maybeUnBoxAndBuildArgument<Future<void>, void>(
              unpackedsetter.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_postEvent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.postEvent(
          luaCallerArguments[1],
          maybeUnBoxAndBuildArgument<Map<String, dynamic>, String>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_registerStringServiceExtension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedgetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['getter']
          : null;

      Closure unpackedsetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['setter']
          : null;
      super.registerStringServiceExtension(
          getter: () => maybeUnBoxAndBuildArgument<Future<String>, String>(
              unpackedgetter.dispatch(
                [
                  luaCallerArguments[0],
                ],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null,
          setter: (value) => maybeUnBoxAndBuildArgument<Future<void>, void>(
              unpackedsetter.dispatch(
                [luaCallerArguments[0], value],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_registerServiceExtension'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedcallback = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['callback']
          : null;
      super.registerServiceExtension(
          callback: (parameters) => maybeUnBoxAndBuildArgument<
                  Future<Map<String, dynamic>>, Map<String, dynamic>>(
              unpackedcallback.dispatch(
                [luaCallerArguments[0], parameters],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null);
      return [];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
    table['_dart_getWindow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.window];
    });
    table['_dart_getPlatformDispatcher'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.platformDispatcher];
    });
    table['_dart_getLocked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.locked];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RenderingFlutterBinding unwrap() => this;
  RenderingFlutterBinding get vmObject => this;
  @override
  void initInstances() {
    super.initInstances();
    Closure closure = table["initInstances"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void unlocked() {
    super.unlocked();
    Closure closure = table["unlocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void cancelPointer(pointer) {
    Closure closure = table["cancelPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handlePointerEvent(event) {
    Closure closure = table["handlePointerEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void hitTest(result, position) {
    Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dispatchEvent(event, hitTestResult) {
    Closure closure = table["dispatchEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleEvent(event, entry) {
    Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void resetGestureBinding() {
    Closure closure = table["resetGestureBinding"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SamplingClock? get debugSamplingClock {
    Closure closure = table["getDebugSamplingClock"];
    return maybeUnBoxAndBuildArgument<SamplingClock?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void addTimingsCallback(callback) {
    Closure closure = table["addTimingsCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeTimingsCallback(callback) {
    Closure closure = table["removeTimingsCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void initServiceExtensions() {
    super.initServiceExtensions();
    Closure closure = table["initServiceExtensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleAppLifecycleStateChanged(state) {
    super.handleAppLifecycleStateChanged(state);
    Closure closure = table["handleAppLifecycleStateChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<T> scheduleTask<T>(task, priority, {String? debugLabel, Flow? flow}) {
    Closure closure = table["scheduleTask"];
    return maybeUnBoxAndBuildArgument<Future<T>, T>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool handleEventLoopCallback() {
    Closure closure = table["handleEventLoopCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int scheduleFrameCallback(callback, {bool rescheduling = false}) {
    Closure closure = table["scheduleFrameCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void cancelFrameCallbackWithId(id) {
    Closure closure = table["cancelFrameCallbackWithId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugAssertNoTransientCallbacks(reason) {
    Closure closure = table["debugAssertNoTransientCallbacks"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPersistentFrameCallback(callback) {
    Closure closure = table["addPersistentFrameCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void addPostFrameCallback(callback) {
    Closure closure = table["addPostFrameCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void ensureFrameCallbacksRegistered() {
    Closure closure = table["ensureFrameCallbacksRegistered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void ensureVisualUpdate() {
    Closure closure = table["ensureVisualUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleFrame() {
    Closure closure = table["scheduleFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleForcedFrame() {
    Closure closure = table["scheduleForcedFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void scheduleWarmUpFrame() {
    Closure closure = table["scheduleWarmUpFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void resetEpoch() {
    Closure closure = table["resetEpoch"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleBeginFrame(rawTimeStamp) {
    Closure closure = table["handleBeginFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleDrawFrame() {
    Closure closure = table["handleDrawFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AppLifecycleState? get lifecycleState {
    Closure closure = table["getLifecycleState"];
    return maybeUnBoxEnum(
        values: AppLifecycleState.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  int get transientCallbackCount {
    Closure closure = table["getTransientCallbackCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<void> get endOfFrame {
    Closure closure = table["getEndOfFrame"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get hasScheduledFrame {
    Closure closure = table["getHasScheduledFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SchedulerPhase get schedulerPhase {
    Closure closure = table["getSchedulerPhase"];
    return maybeUnBoxEnum(
        values: SchedulerPhase.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  bool get framesEnabled {
    Closure closure = table["getFramesEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Duration get currentFrameTimeStamp {
    Closure closure = table["getCurrentFrameTimeStamp"];
    return maybeUnBoxAndBuildArgument<Duration, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Duration get currentSystemFrameTimeStamp {
    Closure closure = table["getCurrentSystemFrameTimeStamp"];
    return maybeUnBoxAndBuildArgument<Duration, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BinaryMessenger createBinaryMessenger() {
    Closure closure = table["createBinaryMessenger"];
    return maybeUnBoxAndBuildArgument<BinaryMessenger, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void handleMemoryPressure() {
    super.handleMemoryPressure();
    Closure closure = table["handleMemoryPressure"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<void> handleSystemMessage(systemMessage) {
    super.handleSystemMessage(systemMessage);
    Closure closure = table["handleSystemMessage"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void initLicenses() {
    super.initLicenses();
    Closure closure = table["initLicenses"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void evict(asset) {
    super.evict(asset);
    Closure closure = table["evict"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void readInitialLifecycleStateFromNativeWindow() {
    Closure closure = table["readInitialLifecycleStateFromNativeWindow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  RestorationManager createRestorationManager() {
    Closure closure = table["createRestorationManager"];
    return maybeUnBoxAndBuildArgument<RestorationManager, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void setSystemUiChangeCallback(callback) {
    Closure closure = table["setSystemUiChangeCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  HardwareKeyboard get keyboard {
    Closure closure = table["getKeyboard"];
    return maybeUnBoxAndBuildArgument<HardwareKeyboard, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  KeyEventManager get keyEventManager {
    Closure closure = table["getKeyEventManager"];
    return maybeUnBoxAndBuildArgument<KeyEventManager, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  BinaryMessenger get defaultBinaryMessenger {
    Closure closure = table["getDefaultBinaryMessenger"];
    return maybeUnBoxAndBuildArgument<BinaryMessenger, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ChannelBuffers get channelBuffers {
    Closure closure = table["getChannelBuffers"];
    return maybeUnBoxAndBuildArgument<ChannelBuffers, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RestorationManager get restorationManager {
    Closure closure = table["getRestorationManager"];
    return maybeUnBoxAndBuildArgument<RestorationManager, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void handleAccessibilityFeaturesChanged() {
    Closure closure = table["handleAccessibilityFeaturesChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsUpdateBuilder createSemanticsUpdateBuilder() {
    Closure closure = table["createSemanticsUpdateBuilder"];
    return maybeUnBoxAndBuildArgument<SemanticsUpdateBuilder, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  AccessibilityFeatures get accessibilityFeatures {
    Closure closure = table["getAccessibilityFeatures"];
    return maybeUnBoxAndBuildArgument<AccessibilityFeatures, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get disableAnimations {
    Closure closure = table["getDisableAnimations"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ImageCache createImageCache() {
    Closure closure = table["createImageCache"];
    return maybeUnBoxAndBuildArgument<ImageCache, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<Codec> instantiateImageCodec(bytes,
      {bool allowUpscaling = false, int? cacheHeight, int? cacheWidth}) {
    Closure closure = table["instantiateImageCodec"];
    return maybeUnBoxAndBuildArgument<Future<Codec>, Codec>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  ImageCache? get imageCache {
    Closure closure = table["getImageCache"];
    return maybeUnBoxAndBuildArgument<ImageCache?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Listenable get systemFonts {
    Closure closure = table["getSystemFonts"];
    return maybeUnBoxAndBuildArgument<Listenable, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void initRenderView() {
    Closure closure = table["initRenderView"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleMetricsChanged() {
    Closure closure = table["handleMetricsChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handleTextScaleFactorChanged() {
    Closure closure = table["handleTextScaleFactorChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void handlePlatformBrightnessChanged() {
    Closure closure = table["handlePlatformBrightnessChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  ViewConfiguration createViewConfiguration() {
    Closure closure = table["createViewConfiguration"];
    return maybeUnBoxAndBuildArgument<ViewConfiguration, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void initMouseTracker([MouseTracker? tracker]) {
    Closure closure = table["initMouseTracker"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setSemanticsEnabled(enabled) {
    Closure closure = table["setSemanticsEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void deferFirstFrame() {
    Closure closure = table["deferFirstFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void allowFirstFrame() {
    Closure closure = table["allowFirstFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void resetFirstFrameSent() {
    Closure closure = table["resetFirstFrameSent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void drawFrame() {
    Closure closure = table["drawFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<void> performReassemble() {
    super.performReassemble();
    Closure closure = table["performReassemble"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  MouseTracker get mouseTracker {
    Closure closure = table["getMouseTracker"];
    return maybeUnBoxAndBuildArgument<MouseTracker, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  PipelineOwner get pipelineOwner {
    Closure closure = table["getPipelineOwner"];
    return maybeUnBoxAndBuildArgument<PipelineOwner, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  RenderView get renderView {
    Closure closure = table["getRenderView"];
    return maybeUnBoxAndBuildArgument<RenderView, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set renderView(value) {
    Closure closure = table["setRenderView"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get sendFramesToEngine {
    Closure closure = table["getSendFramesToEngine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Future<void> lockEvents(callback) {
    Closure closure = table["lockEvents"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Future<void> reassembleApplication() {
    Closure closure = table["reassembleApplication"];
    return maybeUnBoxAndBuildArgument<Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void registerSignalServiceExtension(
      {required callback, required String name}) {
    Closure closure = table["registerSignalServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void registerBoolServiceExtension(
      {required getter, required String name, required setter}) {
    Closure closure = table["registerBoolServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void registerNumericServiceExtension(
      {required getter, required String name, required setter}) {
    Closure closure = table["registerNumericServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void postEvent(eventKind, eventData) {
    Closure closure = table["postEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void registerStringServiceExtension(
      {required getter, required String name, required setter}) {
    Closure closure = table["registerStringServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void registerServiceExtension({required callback, required String name}) {
    Closure closure = table["registerServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SingletonFlutterWindow get window {
    Closure closure = table["getWindow"];
    return maybeUnBoxAndBuildArgument<SingletonFlutterWindow, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  PlatformDispatcher get platformDispatcher {
    Closure closure = table["getPlatformDispatcher"];
    return maybeUnBoxAndBuildArgument<PlatformDispatcher, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get locked {
    Closure closure = table["getLocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderingFlutterBinding(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderingFlutterBinding'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRenderingFlutterBinding(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          root: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['root']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<RenderingFlutterBinding>(boxer: (
      {required RenderingFlutterBinding vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderingFlutterBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
