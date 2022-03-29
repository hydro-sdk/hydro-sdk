import 'dart:async' as _7de1;
import 'dart:core' as _fac9;
import 'dart:developer' as _afe6;
import 'dart:typed_data' as _7537;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/binding.dart' as _8f1c;
import 'package:flutter/src/foundation/change_notifier.dart' as _e644;
import 'package:flutter/src/gestures/arena.dart' as _be6e;
import 'package:flutter/src/gestures/binding.dart' as _e62e;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/gestures/pointer_router.dart' as _f3e5;
import 'package:flutter/src/gestures/pointer_signal_resolver.dart' as _cfcd;
import 'package:flutter/src/painting/binding.dart' as _3036;
import 'package:flutter/src/painting/image_cache.dart' as _2e0e;
import 'package:flutter/src/rendering/binding.dart' as _5551;
import 'package:flutter/src/rendering/mouse_tracker.dart' as _1668;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/view.dart' as _8620;
import 'package:flutter/src/scheduler/binding.dart' as _fbe2;
import 'package:flutter/src/scheduler/priority.dart' as _49c2;
import 'package:flutter/src/semantics/binding.dart' as _b53a;
import 'package:flutter/src/services/binary_messenger.dart' as _71d1;
import 'package:flutter/src/services/binding.dart' as _7e2d;
import 'package:flutter/src/services/hardware_keyboard.dart' as _9e29;
import 'package:flutter/src/services/restoration.dart' as _6d4f;
import 'package:flutter/src/widgets/binding.dart' as _3e19;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWidgetsFlutterBinding
    extends _36c2.VMManagedBox<_3e19.WidgetsFlutterBinding> {
  VMManagedWidgetsFlutterBinding(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['pointerRouter'] = _36c2.maybeBoxObject<_f3e5.PointerRouter>(
        object: vmObject.pointerRouter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['gestureArena'] = _36c2.maybeBoxObject<_be6e.GestureArenaManager>(
        object: vmObject.gestureArena,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerSignalResolver'] =
        _36c2.maybeBoxObject<_cfcd.PointerSignalResolver>(
            object: vmObject.pointerSignalResolver,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['resamplingEnabled'] = vmObject.resamplingEnabled;
    table['samplingOffset'] = _36c2.maybeBoxObject<_fac9.Duration>(
        object: vmObject.samplingOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());

    table['debugBuildingDirtyElements'] = vmObject.debugBuildingDirtyElements;
    table['initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initInstances();
      return [];
    });
    table['unlocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.unlocked();
      return [];
    });
    table['cancelPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancelPointer(luaCallerArguments[1]);
      return [];
    });
    table['handlePointerEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handlePointerEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['dispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.dispatchEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['addTimingsCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['removeTimingsCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.removeTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['initServiceExtensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initServiceExtensions();
      return [];
    });
    table['scheduleTask'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedtask = luaCallerArguments[1];

      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.scheduleTask(
                () => unpackedtask.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                _36c2.maybeUnBoxAndBuildArgument<_49c2.Priority, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                debugLabel: luaCallerArguments.length >= 4
                    ? luaCallerArguments[3]['debugLabel']
                    : null,
                flow: _36c2
                    .maybeUnBoxAndBuildArgument<_afe6.Flow?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['flow']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['scheduleFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
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
    table['cancelFrameCallbackWithId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.cancelFrameCallbackWithId(luaCallerArguments[1]);
      return [];
    });
    table['debugAssertNoTransientCallbacks'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertNoTransientCallbacks(luaCallerArguments[1]),
      ];
    });
    table['addPersistentFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject
          .addPersistentFrameCallback((timeStamp) => unpackedcallback.dispatch(
                [luaCallerArguments[0], timeStamp],
                parentState: hydroState,
              ));
      return [];
    });
    table['addPostFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      vmObject.addPostFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['ensureVisualUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.ensureVisualUpdate();
      return [];
    });
    table['scheduleFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleFrame();
      return [];
    });
    table['scheduleForcedFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleForcedFrame();
      return [];
    });
    table['scheduleWarmUpFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.scheduleWarmUpFrame();
      return [];
    });
    table['resetEpoch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resetEpoch();
      return [];
    });
    table['handleBeginFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleBeginFrame(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['handleDrawFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.handleDrawFrame();
      return [];
    });
    table['getLifecycleState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.lifecycleState;
      if (returnValue != null) {
        return [
          _a643.AppLifecycleState.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['getTransientCallbackCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.transientCallbackCount,
      ];
    });
    table['getEndOfFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.endOfFrame,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHasScheduledFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasScheduledFrame,
      ];
    });
    table['getSchedulerPhase'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _fbe2.SchedulerPhase.values.indexWhere((x) {
          return x == vmObject.schedulerPhase;
        }),
      ];
    });
    table['getFramesEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.framesEnabled,
      ];
    });
    table['getCurrentFrameTimeStamp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.currentFrameTimeStamp,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getCurrentSystemFrameTimeStamp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Duration>(
            object: vmObject.currentSystemFrameTimeStamp,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setSystemUiChangeCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedcallback = luaCallerArguments[1];
      vmObject.setSystemUiChangeCallback(unpackedcallback != null
          ? (systemOverlaysAreVisible) =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedcallback.dispatch(
                    [luaCallerArguments[0], systemOverlaysAreVisible],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
          : null);
      return [];
    });
    table['getKeyboard'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9e29.HardwareKeyboard>(
            object: vmObject.keyboard,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getKeyEventManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9e29.KeyEventManager>(
            object: vmObject.keyEventManager,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDefaultBinaryMessenger'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_71d1.BinaryMessenger>(
            object: vmObject.defaultBinaryMessenger,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getChannelBuffers'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.ChannelBuffers>(
            object: vmObject.channelBuffers,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getRestorationManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_6d4f.RestorationManager>(
            object: vmObject.restorationManager,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['instantiateImageCodec'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.instantiateImageCodec(
                _36c2
                    .maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(
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
            table: _36c2.HydroTable()),
      ];
    });
    table['getImageCache'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.imageCache;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_2e0e.ImageCache?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getSystemFonts'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e644.Listenable>(
            object: vmObject.systemFonts,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createSemanticsUpdateBuilder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.SemanticsUpdateBuilder>(
            object: vmObject.createSemanticsUpdateBuilder(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getAccessibilityFeatures'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.AccessibilityFeatures>(
            object: vmObject.accessibilityFeatures,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDisableAnimations'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.disableAnimations,
      ];
    });
    table['initRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.initRenderView();
      return [];
    });
    table['createViewConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8620.ViewConfiguration>(
            object: vmObject.createViewConfiguration(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setSemanticsEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setSemanticsEnabled(luaCallerArguments[1]);
      return [];
    });
    table['deferFirstFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deferFirstFrame();
      return [];
    });
    table['allowFirstFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.allowFirstFrame();
      return [];
    });
    table['resetFirstFrameSent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.resetFirstFrameSent();
      return [];
    });
    table['performReassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.performReassemble(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getMouseTracker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_1668.MouseTracker>(
            object: vmObject.mouseTracker,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPipelineOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9742.PipelineOwner>(
            object: vmObject.pipelineOwner,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_8620.RenderView>(
            object: vmObject.renderView,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['setRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.renderView =
          (_36c2.maybeUnBoxAndBuildArgument<_8620.RenderView, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getSendFramesToEngine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.sendFramesToEngine,
      ];
    });
    table['addObserver'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.addObserver(_36c2.maybeUnBoxAndBuildArgument<
          _3e19.WidgetsBindingObserver,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['removeObserver'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.removeObserver(_36c2.maybeUnBoxAndBuildArgument<
            _3e19.WidgetsBindingObserver,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['attachRootWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attachRootWidget(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['computePlatformResolvedLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.computePlatformResolvedLocale(_36c2
          .maybeUnBoxAndBuildArgument<_fac9.List<_a643.Locale>, _a643.Locale>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Locale?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getBuildOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.buildOwner;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.BuildOwner?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getFocusManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_b485.FocusManager>(
            object: vmObject.focusManager,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getFirstFrameRasterized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.firstFrameRasterized,
      ];
    });
    table['getWaitUntilFirstFrameRasterized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.waitUntilFirstFrameRasterized,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDebugDidSendFirstFrameEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDidSendFirstFrameEvent,
      ];
    });
    table['getRenderViewElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.renderViewElement;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Element?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getIsRootWidgetAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isRootWidgetAttached,
      ];
    });
    table['reassembleApplication'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.reassembleApplication(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['getWindow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.SingletonFlutterWindow>(
            object: vmObject.window,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPlatformDispatcher'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.PlatformDispatcher>(
            object: vmObject.platformDispatcher,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
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

  final _3e19.WidgetsFlutterBinding vmObject;
}

class RTManagedWidgetsFlutterBinding extends _3e19.WidgetsFlutterBinding
    implements _36c2.Box<_3e19.WidgetsFlutterBinding> {
  RTManagedWidgetsFlutterBinding(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['pointerRouter'] = _36c2.maybeBoxObject(
        object: pointerRouter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['gestureArena'] = _36c2.maybeBoxObject(
        object: gestureArena,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['pointerSignalResolver'] = _36c2.maybeBoxObject(
        object: pointerSignalResolver,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['resamplingEnabled'] = _36c2.maybeBoxObject(
        object: resamplingEnabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['samplingOffset'] = _36c2.maybeBoxObject(
        object: samplingOffset,
        hydroState: hydroState,
        table: _36c2.HydroTable());

    table['debugBuildingDirtyElements'] = _36c2.maybeBoxObject(
        object: debugBuildingDirtyElements,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_initInstances'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initInstances();
      return [];
    });
    table['_dart_unlocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.unlocked();
      return [];
    });
    table['_dart_cancelPointer'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.cancelPointer(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_handlePointerEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handlePointerEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_hitTest'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.hitTest(
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_dispatchEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestResult?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleEvent(
          _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_resetGestureBinding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resetGestureBinding();
      return [];
    });
    table['_dart_getDebugSamplingClock'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugSamplingClock];
    });
    table['_dart_addTimingsCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.addTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_removeTimingsCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.removeTimingsCallback((timings) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timings],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_initServiceExtensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initServiceExtensions();
      return [];
    });
    table['_dart_handleAppLifecycleStateChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleAppLifecycleStateChanged(_36c2.maybeUnBoxEnum(
          values: _a643.AppLifecycleState.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_scheduleTask'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedtask = luaCallerArguments[1];

      return [
        _36c2.maybeBoxObject(
            object: super.scheduleTask(
                () => unpackedtask.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                _36c2.maybeUnBoxAndBuildArgument<_49c2.Priority, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                debugLabel: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['debugLabel']
                            : null,
                        parentState: hydroState),
                flow: _36c2
                    .maybeUnBoxAndBuildArgument<_afe6.Flow?, _fac9.dynamic>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['flow']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_scheduleFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.scheduleFrameCallback(
                (timeStamp) => unpackedcallback.dispatch(
                      [luaCallerArguments[0], timeStamp],
                      parentState: hydroState,
                    ),
                rescheduling:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['rescheduling']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_cancelFrameCallbackWithId'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.cancelFrameCallbackWithId(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugAssertNoTransientCallbacks'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugAssertNoTransientCallbacks(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_addPersistentFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.addPersistentFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_addPostFrameCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      super.addPostFrameCallback((timeStamp) => unpackedcallback.dispatch(
            [luaCallerArguments[0], timeStamp],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_ensureFrameCallbacksRegistered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.ensureFrameCallbacksRegistered();
      return [];
    });
    table['_dart_ensureVisualUpdate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.ensureVisualUpdate();
      return [];
    });
    table['_dart_scheduleFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleFrame();
      return [];
    });
    table['_dart_scheduleForcedFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleForcedFrame();
      return [];
    });
    table['_dart_scheduleWarmUpFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleWarmUpFrame();
      return [];
    });
    table['_dart_resetEpoch'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resetEpoch();
      return [];
    });
    table['_dart_handleBeginFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleBeginFrame(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_handleDrawFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleDrawFrame();
      return [];
    });
    table['_dart_getLifecycleState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.lifecycleState];
    });
    table['_dart_getTransientCallbackCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.transientCallbackCount];
    });
    table['_dart_getEndOfFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.endOfFrame];
    });
    table['_dart_getHasScheduledFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hasScheduledFrame];
    });
    table['_dart_getSchedulerPhase'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.schedulerPhase];
    });
    table['_dart_getFramesEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.framesEnabled];
    });
    table['_dart_getCurrentFrameTimeStamp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentFrameTimeStamp];
    });
    table['_dart_getCurrentSystemFrameTimeStamp'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.currentSystemFrameTimeStamp];
    });
    table['_dart_createBinaryMessenger'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createBinaryMessenger(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_handleMemoryPressure'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleMemoryPressure();
      return [];
    });
    table['_dart_handleSystemMessage'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.handleSystemMessage(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_initLicenses'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initLicenses();
      return [];
    });
    table['_dart_evict'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.evict(_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_readInitialLifecycleStateFromNativeWindow'] = _36c2
        .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.readInitialLifecycleStateFromNativeWindow();
      return [];
    });
    table['_dart_createRestorationManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createRestorationManager(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_setSystemUiChangeCallback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedcallback = luaCallerArguments[1];
      super.setSystemUiChangeCallback(unpackedcallback != null
          ? (systemOverlaysAreVisible) =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedcallback.dispatch(
                    [luaCallerArguments[0], systemOverlaysAreVisible],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
          : null);
      return [];
    });
    table['_dart_getKeyboard'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.keyboard];
    });
    table['_dart_getKeyEventManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.keyEventManager];
    });
    table['_dart_getDefaultBinaryMessenger'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.defaultBinaryMessenger];
    });
    table['_dart_getChannelBuffers'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.channelBuffers];
    });
    table['_dart_getRestorationManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.restorationManager];
    });
    table['_dart_createImageCache'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createImageCache(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_instantiateImageCodec'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.instantiateImageCodec(
                _36c2.maybeUnBoxAndBuildArgument<_7537.Uint8List, _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                allowUpscaling: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['allowUpscaling']
                        : null,
                    parentState: hydroState),
                cacheHeight: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3 ? luaCallerArguments[2]['cacheHeight'] : null,
                    parentState: hydroState),
                cacheWidth: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['cacheWidth'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getImageCache'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.imageCache];
    });
    table['_dart_getSystemFonts'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.systemFonts];
    });
    table['_dart_handleAccessibilityFeaturesChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleAccessibilityFeaturesChanged();
      return [];
    });
    table['_dart_createSemanticsUpdateBuilder'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createSemanticsUpdateBuilder(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getAccessibilityFeatures'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.accessibilityFeatures];
    });
    table['_dart_getDisableAnimations'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.disableAnimations];
    });
    table['_dart_initRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.initRenderView();
      return [];
    });
    table['_dart_handleMetricsChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleMetricsChanged();
      return [];
    });
    table['_dart_handleTextScaleFactorChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleTextScaleFactorChanged();
      return [];
    });
    table['_dart_handlePlatformBrightnessChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handlePlatformBrightnessChanged();
      return [];
    });
    table['_dart_createViewConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createViewConfiguration(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_setSemanticsEnabled'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setSemanticsEnabled(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_deferFirstFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deferFirstFrame();
      return [];
    });
    table['_dart_allowFirstFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.allowFirstFrame();
      return [];
    });
    table['_dart_resetFirstFrameSent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.resetFirstFrameSent();
      return [];
    });
    table['_dart_drawFrame'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.drawFrame();
      return [];
    });
    table['_dart_performReassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.performReassemble(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getMouseTracker'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.mouseTracker];
    });
    table['_dart_getPipelineOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.pipelineOwner];
    });
    table['_dart_getRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.renderView];
    });
    table['_dart_setRenderView'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.renderView =
          (_36c2.maybeUnBoxAndBuildArgument<_8620.RenderView, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getSendFramesToEngine'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.sendFramesToEngine];
    });
    table['_dart_addObserver'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.addObserver(_36c2.maybeUnBoxAndBuildArgument<
          _3e19.WidgetsBindingObserver,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_removeObserver'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.removeObserver(_36c2.maybeUnBoxAndBuildArgument<
                _3e19.WidgetsBindingObserver,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_handleLocaleChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.handleLocaleChanged();
      return [];
    });
    table['_dart_dispatchLocalesChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchLocalesChanged(_36c2.maybeUnBoxAndBuildArgument<
          _fac9.List<_a643.Locale>?,
          _a643.Locale>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_dispatchAccessibilityFeaturesChanged'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dispatchAccessibilityFeaturesChanged();
      return [];
    });
    table['_dart_handlePopRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.handlePopRoute(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_handlePushRoute'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.handlePushRoute(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_scheduleAttachRootWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.scheduleAttachRootWidget(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_attachRootWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.attachRootWidget(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_computePlatformResolvedLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.computePlatformResolvedLocale(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.Locale>,
                        _a643.Locale>(luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getBuildOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.buildOwner];
    });
    table['_dart_getFocusManager'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.focusManager];
    });
    table['_dart_getFirstFrameRasterized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.firstFrameRasterized];
    });
    table['_dart_getWaitUntilFirstFrameRasterized'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.waitUntilFirstFrameRasterized];
    });
    table['_dart_getDebugDidSendFirstFrameEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDidSendFirstFrameEvent];
    });
    table['_dart_getRenderViewElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.renderViewElement];
    });
    table['_dart_getIsRootWidgetAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.isRootWidgetAttached];
    });
    table['_dart_lockEvents'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject(
            object: super.lockEvents(() =>
                _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                    unpackedcallback.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_reassembleApplication'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.reassembleApplication(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_registerSignalServiceExtension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['callback']
          : null;
      super.registerSignalServiceExtension(
          callback: () =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedcallback.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState),
          name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['name']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_registerBoolServiceExtension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedgetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['getter']
          : null;

      _36c2.Closure unpackedsetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['setter']
          : null;
      super.registerBoolServiceExtension(
          getter: () => _36c2
              .maybeUnBoxAndBuildArgument<_7de1.Future<_fac9.bool>, _fac9.bool>(
                  unpackedgetter.dispatch(
                    [luaCallerArguments[0]],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState),
          name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['name']
                  : null,
              parentState: hydroState),
          setter: (value) =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedsetter.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState));
      return [];
    });
    table['_dart_registerNumericServiceExtension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedgetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['getter']
          : null;

      _36c2.Closure unpackedsetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['setter']
          : null;
      super.registerNumericServiceExtension(
          getter: () => _36c2.maybeUnBoxAndBuildArgument<
                  _7de1.Future<_fac9.double>, _fac9.double>(
              unpackedgetter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['name']
                  : null,
              parentState: hydroState),
          setter: (value) =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedsetter.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState));
      return [];
    });
    table['_dart_postEvent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.postEvent(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<
              _fac9.Map<_fac9.String, _fac9.dynamic>,
              _fac9.String>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_registerStringServiceExtension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedgetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['getter']
          : null;

      _36c2.Closure unpackedsetter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['setter']
          : null;
      super.registerStringServiceExtension(
          getter: () => _36c2.maybeUnBoxAndBuildArgument<
                  _7de1.Future<_fac9.String>, _fac9.String>(
              unpackedgetter.dispatch(
                [luaCallerArguments[0]],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['name']
                  : null,
              parentState: hydroState),
          setter: (value) =>
              _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
                  unpackedsetter.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState));
      return [];
    });
    table['_dart_registerServiceExtension'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedcallback = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['callback']
          : null;
      super.registerServiceExtension(
          callback: (parameters) => _36c2.maybeUnBoxAndBuildArgument<
                  _7de1.Future<_fac9.Map<_fac9.String, _fac9.dynamic>>,
                  _fac9.Map<_fac9.String, _fac9.dynamic>>(
              unpackedcallback.dispatch(
                [luaCallerArguments[0], parameters],
                parentState: hydroState,
              )[0],
              parentState: hydroState),
          name: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['name']
                  : null,
              parentState: hydroState));
      return [];
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
    table['_dart_getWindow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.window];
    });
    table['_dart_getPlatformDispatcher'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.platformDispatcher];
    });
    table['_dart_getLocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.locked];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _3e19.WidgetsFlutterBinding unwrap() => this;
  _3e19.WidgetsFlutterBinding get vmObject => this;
  @_fac9.override
  void initInstances() {
    super.initInstances();
    _36c2.Closure closure = table["initInstances"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void unlocked() {
    super.unlocked();
    _36c2.Closure closure = table["unlocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void cancelPointer(pointer) {
    _36c2.Closure closure = table["cancelPointer"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handlePointerEvent(event) {
    _36c2.Closure closure = table["handlePointerEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void hitTest(result, position) {
    _36c2.Closure closure = table["hitTest"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchEvent(event, hitTestResult) {
    _36c2.Closure closure = table["dispatchEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleEvent(event, entry) {
    _36c2.Closure closure = table["handleEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void resetGestureBinding() {
    _36c2.Closure closure = table["resetGestureBinding"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e62e.SamplingClock? get debugSamplingClock {
    _36c2.Closure closure = table["getDebugSamplingClock"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e62e.SamplingClock?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void addTimingsCallback(callback) {
    _36c2.Closure closure = table["addTimingsCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeTimingsCallback(callback) {
    _36c2.Closure closure = table["removeTimingsCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void initServiceExtensions() {
    super.initServiceExtensions();
    _36c2.Closure closure = table["initServiceExtensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleAppLifecycleStateChanged(state) {
    super.handleAppLifecycleStateChanged(state);
    _36c2.Closure closure = table["handleAppLifecycleStateChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<T> scheduleTask<T>(task, priority,
      {_fac9.String? debugLabel, _afe6.Flow? flow}) {
    _36c2.Closure closure = table["scheduleTask"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<T>, T>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool handleEventLoopCallback() {
    _36c2.Closure closure = table["handleEventLoopCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int scheduleFrameCallback(callback, {_fac9.bool rescheduling = false}) {
    _36c2.Closure closure = table["scheduleFrameCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void cancelFrameCallbackWithId(id) {
    _36c2.Closure closure = table["cancelFrameCallbackWithId"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool debugAssertNoTransientCallbacks(reason) {
    _36c2.Closure closure = table["debugAssertNoTransientCallbacks"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addPersistentFrameCallback(callback) {
    _36c2.Closure closure = table["addPersistentFrameCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addPostFrameCallback(callback) {
    _36c2.Closure closure = table["addPostFrameCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void ensureFrameCallbacksRegistered() {
    _36c2.Closure closure = table["ensureFrameCallbacksRegistered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void ensureVisualUpdate() {
    _36c2.Closure closure = table["ensureVisualUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void scheduleFrame() {
    _36c2.Closure closure = table["scheduleFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void scheduleForcedFrame() {
    _36c2.Closure closure = table["scheduleForcedFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void scheduleWarmUpFrame() {
    _36c2.Closure closure = table["scheduleWarmUpFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void resetEpoch() {
    _36c2.Closure closure = table["resetEpoch"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleBeginFrame(rawTimeStamp) {
    _36c2.Closure closure = table["handleBeginFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleDrawFrame() {
    _36c2.Closure closure = table["handleDrawFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.AppLifecycleState? get lifecycleState {
    _36c2.Closure closure = table["getLifecycleState"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.AppLifecycleState.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.int get transientCallbackCount {
    _36c2.Closure closure = table["getTransientCallbackCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> get endOfFrame {
    _36c2.Closure closure = table["getEndOfFrame"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get hasScheduledFrame {
    _36c2.Closure closure = table["getHasScheduledFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fbe2.SchedulerPhase get schedulerPhase {
    _36c2.Closure closure = table["getSchedulerPhase"];
    return _36c2.maybeUnBoxEnum(
        values: _fbe2.SchedulerPhase.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.bool get framesEnabled {
    _36c2.Closure closure = table["getFramesEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Duration get currentFrameTimeStamp {
    _36c2.Closure closure = table["getCurrentFrameTimeStamp"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Duration get currentSystemFrameTimeStamp {
    _36c2.Closure closure = table["getCurrentSystemFrameTimeStamp"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _71d1.BinaryMessenger createBinaryMessenger() {
    _36c2.Closure closure = table["createBinaryMessenger"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void handleMemoryPressure() {
    super.handleMemoryPressure();
    _36c2.Closure closure = table["handleMemoryPressure"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> handleSystemMessage(systemMessage) {
    super.handleSystemMessage(systemMessage);
    _36c2.Closure closure = table["handleSystemMessage"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void initLicenses() {
    super.initLicenses();
    _36c2.Closure closure = table["initLicenses"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void evict(asset) {
    super.evict(asset);
    _36c2.Closure closure = table["evict"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void readInitialLifecycleStateFromNativeWindow() {
    _36c2.Closure closure = table["readInitialLifecycleStateFromNativeWindow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _6d4f.RestorationManager createRestorationManager() {
    _36c2.Closure closure = table["createRestorationManager"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_6d4f.RestorationManager, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void setSystemUiChangeCallback(callback) {
    _36c2.Closure closure = table["setSystemUiChangeCallback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _9e29.HardwareKeyboard get keyboard {
    _36c2.Closure closure = table["getKeyboard"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_9e29.HardwareKeyboard, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _9e29.KeyEventManager get keyEventManager {
    _36c2.Closure closure = table["getKeyEventManager"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_9e29.KeyEventManager, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _71d1.BinaryMessenger get defaultBinaryMessenger {
    _36c2.Closure closure = table["getDefaultBinaryMessenger"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_71d1.BinaryMessenger, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.ChannelBuffers get channelBuffers {
    _36c2.Closure closure = table["getChannelBuffers"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a643.ChannelBuffers, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _6d4f.RestorationManager get restorationManager {
    _36c2.Closure closure = table["getRestorationManager"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_6d4f.RestorationManager, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _2e0e.ImageCache createImageCache() {
    _36c2.Closure closure = table["createImageCache"];
    return _36c2.maybeUnBoxAndBuildArgument<_2e0e.ImageCache, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<_a643.Codec> instantiateImageCodec(bytes,
      {_fac9.bool allowUpscaling = false,
      _fac9.int? cacheHeight,
      _fac9.int? cacheWidth}) {
    _36c2.Closure closure = table["instantiateImageCodec"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7de1.Future<_a643.Codec>, _a643.Codec>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _2e0e.ImageCache? get imageCache {
    _36c2.Closure closure = table["getImageCache"];
    return _36c2.maybeUnBoxAndBuildArgument<_2e0e.ImageCache?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e644.Listenable get systemFonts {
    _36c2.Closure closure = table["getSystemFonts"];
    return _36c2.maybeUnBoxAndBuildArgument<_e644.Listenable, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void handleAccessibilityFeaturesChanged() {
    _36c2.Closure closure = table["handleAccessibilityFeaturesChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.SemanticsUpdateBuilder createSemanticsUpdateBuilder() {
    _36c2.Closure closure = table["createSemanticsUpdateBuilder"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.SemanticsUpdateBuilder,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.AccessibilityFeatures get accessibilityFeatures {
    _36c2.Closure closure = table["getAccessibilityFeatures"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a643.AccessibilityFeatures, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get disableAnimations {
    _36c2.Closure closure = table["getDisableAnimations"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void initRenderView() {
    _36c2.Closure closure = table["initRenderView"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleMetricsChanged() {
    _36c2.Closure closure = table["handleMetricsChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleTextScaleFactorChanged() {
    _36c2.Closure closure = table["handleTextScaleFactorChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handlePlatformBrightnessChanged() {
    _36c2.Closure closure = table["handlePlatformBrightnessChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _8620.ViewConfiguration createViewConfiguration() {
    _36c2.Closure closure = table["createViewConfiguration"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_8620.ViewConfiguration, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void initMouseTracker([_1668.MouseTracker? tracker]) {
    _36c2.Closure closure = table["initMouseTracker"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setSemanticsEnabled(enabled) {
    _36c2.Closure closure = table["setSemanticsEnabled"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void deferFirstFrame() {
    _36c2.Closure closure = table["deferFirstFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void allowFirstFrame() {
    _36c2.Closure closure = table["allowFirstFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void resetFirstFrameSent() {
    _36c2.Closure closure = table["resetFirstFrameSent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void drawFrame() {
    _36c2.Closure closure = table["drawFrame"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> performReassemble() {
    super.performReassemble();
    _36c2.Closure closure = table["performReassemble"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _1668.MouseTracker get mouseTracker {
    _36c2.Closure closure = table["getMouseTracker"];
    return _36c2.maybeUnBoxAndBuildArgument<_1668.MouseTracker, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _9742.PipelineOwner get pipelineOwner {
    _36c2.Closure closure = table["getPipelineOwner"];
    return _36c2.maybeUnBoxAndBuildArgument<_9742.PipelineOwner, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _8620.RenderView get renderView {
    _36c2.Closure closure = table["getRenderView"];
    return _36c2.maybeUnBoxAndBuildArgument<_8620.RenderView, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set renderView(value) {
    _36c2.Closure closure = table["setRenderView"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get sendFramesToEngine {
    _36c2.Closure closure = table["getSendFramesToEngine"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void addObserver(observer) {
    _36c2.Closure closure = table["addObserver"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool removeObserver(observer) {
    _36c2.Closure closure = table["removeObserver"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void handleLocaleChanged() {
    super.handleLocaleChanged();
    _36c2.Closure closure = table["handleLocaleChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchLocalesChanged(locales) {
    super.dispatchLocalesChanged(locales);
    _36c2.Closure closure = table["dispatchLocalesChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dispatchAccessibilityFeaturesChanged() {
    super.dispatchAccessibilityFeaturesChanged();
    _36c2.Closure closure = table["dispatchAccessibilityFeaturesChanged"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> handlePopRoute() {
    _36c2.Closure closure = table["handlePopRoute"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<void> handlePushRoute(route) {
    super.handlePushRoute(route);
    _36c2.Closure closure = table["handlePushRoute"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void scheduleAttachRootWidget(rootWidget) {
    _36c2.Closure closure = table["scheduleAttachRootWidget"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void attachRootWidget(rootWidget) {
    _36c2.Closure closure = table["attachRootWidget"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Locale? computePlatformResolvedLocale(supportedLocales) {
    _36c2.Closure closure = table["computePlatformResolvedLocale"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.BuildOwner? get buildOwner {
    _36c2.Closure closure = table["getBuildOwner"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildOwner?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _b485.FocusManager get focusManager {
    _36c2.Closure closure = table["getFocusManager"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusManager, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get firstFrameRasterized {
    _36c2.Closure closure = table["getFirstFrameRasterized"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> get waitUntilFirstFrameRasterized {
    _36c2.Closure closure = table["getWaitUntilFirstFrameRasterized"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get debugDidSendFirstFrameEvent {
    _36c2.Closure closure = table["getDebugDidSendFirstFrameEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Element? get renderViewElement {
    _36c2.Closure closure = table["getRenderViewElement"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get isRootWidgetAttached {
    _36c2.Closure closure = table["getIsRootWidgetAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _7de1.Future<void> lockEvents(callback) {
    _36c2.Closure closure = table["lockEvents"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _7de1.Future<void> reassembleApplication() {
    _36c2.Closure closure = table["reassembleApplication"];
    return _36c2.maybeUnBoxAndBuildArgument<_7de1.Future<void>, void>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void registerSignalServiceExtension(
      {required _7de1.Future<void> Function() callback,
      required _fac9.String name}) {
    _36c2.Closure closure = table["registerSignalServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void registerBoolServiceExtension(
      {required _7de1.Future<_fac9.bool> Function() getter,
      required _fac9.String name,
      required _7de1.Future<void> Function(_fac9.bool value) setter}) {
    _36c2.Closure closure = table["registerBoolServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void registerNumericServiceExtension(
      {required _7de1.Future<_fac9.double> Function() getter,
      required _fac9.String name,
      required _7de1.Future<void> Function(_fac9.double value) setter}) {
    _36c2.Closure closure = table["registerNumericServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void postEvent(eventKind, eventData) {
    _36c2.Closure closure = table["postEvent"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void registerStringServiceExtension(
      {required _7de1.Future<_fac9.String> Function() getter,
      required _fac9.String name,
      required _7de1.Future<void> Function(_fac9.String value) setter}) {
    _36c2.Closure closure = table["registerStringServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void registerServiceExtension(
      {required _7de1.Future<_fac9.Map<_fac9.String, _fac9.dynamic>> Function(
              _fac9.Map<_fac9.String, _fac9.String> parameters)
          callback,
      required _fac9.String name}) {
    _36c2.Closure closure = table["registerServiceExtension"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString() {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.SingletonFlutterWindow get window {
    _36c2.Closure closure = table["getWindow"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.SingletonFlutterWindow,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.PlatformDispatcher get platformDispatcher {
    _36c2.Closure closure = table["getPlatformDispatcher"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a643.PlatformDispatcher, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get locked {
    _36c2.Closure closure = table["getLocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadWidgetsFlutterBinding(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['widgetsFlutterBinding'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedWidgetsFlutterBinding(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  table['widgetsFlutterBindingEnsureInitialized'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_3e19.WidgetsBinding>(
          object: _3e19.WidgetsFlutterBinding.ensureInitialized(),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_3e19.WidgetsFlutterBinding>(boxer: (
      {required _3e19.WidgetsFlutterBinding vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedWidgetsFlutterBinding(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
