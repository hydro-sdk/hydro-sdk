import 'dart:core';

import 'package:flutter/src/foundation/node.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/semantics/semantics.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedPipelineOwner extends VMManagedBox<PipelineOwner> {
  VMManagedPipelineOwner(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['requestVisualUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.requestVisualUpdate();
      return [];
    });
    table['getRootNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.rootNode;
      if (returnValue != null) {
        return [
          maybeBoxObject<AbstractNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['setRootNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rootNode = (maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getDebugDoingLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingLayout,
      ];
    });
    table['flushLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.flushLayout();
      return [];
    });
    table['flushCompositingBits'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.flushCompositingBits();
      return [];
    });
    table['getDebugDoingPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingPaint,
      ];
    });
    table['flushPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.flushPaint();
      return [];
    });
    table['getSemanticsOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.semanticsOwner;
      if (returnValue != null) {
        return [
          maybeBoxObject<SemanticsOwner?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getDebugOutstandingSemanticsHandles'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugOutstandingSemanticsHandles,
      ];
    });
    table['ensureSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedlistener = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['listener']
          : null;
      return [
        maybeBoxObject<SemanticsHandle>(
            object: vmObject.ensureSemantics(
                listener: unpackedlistener != null
                    ? () => unpackedlistener.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['flushSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.flushSemantics();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final PipelineOwner vmObject;
}

class RTManagedPipelineOwner extends PipelineOwner
    implements Box<PipelineOwner> {
  RTManagedPipelineOwner(
      {onNeedVisualUpdate,
      onSemanticsOwnerCreated,
      onSemanticsOwnerDisposed,
      required this.table,
      required this.hydroState})
      : super(
            onNeedVisualUpdate: onNeedVisualUpdate,
            onSemanticsOwnerCreated: onSemanticsOwnerCreated,
            onSemanticsOwnerDisposed: onSemanticsOwnerDisposed) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_requestVisualUpdate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.requestVisualUpdate();
      return [];
    });
    table['_dart_getRootNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.rootNode];
    });
    table['_dart_setRootNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rootNode = (maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getDebugDoingLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingLayout];
    });
    table['_dart_flushLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.flushLayout();
      return [];
    });
    table['_dart_flushCompositingBits'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.flushCompositingBits();
      return [];
    });
    table['_dart_getDebugDoingPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingPaint];
    });
    table['_dart_flushPaint'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.flushPaint();
      return [];
    });
    table['_dart_getSemanticsOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.semanticsOwner];
    });
    table['_dart_getDebugOutstandingSemanticsHandles'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugOutstandingSemanticsHandles];
    });
    table['_dart_ensureSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedlistener = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['listener']
          : null;
      return [
        maybeBoxObject<SemanticsHandle>(
            object: super.ensureSemantics(
                listener: unpackedlistener != null
                    ? () => unpackedlistener.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_flushSemantics'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.flushSemantics();
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  PipelineOwner unwrap() => this;
  PipelineOwner get vmObject => this;
  @override
  void requestVisualUpdate() {
    Closure closure = table["requestVisualUpdate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AbstractNode? get rootNode {
    Closure closure = table["getRootNode"];
    return maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void set rootNode(value) {
    Closure closure = table["setRootNode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingLayout {
    Closure closure = table["getDebugDoingLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void flushLayout() {
    Closure closure = table["flushLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void flushCompositingBits() {
    Closure closure = table["flushCompositingBits"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugDoingPaint {
    Closure closure = table["getDebugDoingPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void flushPaint() {
    Closure closure = table["flushPaint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsOwner? get semanticsOwner {
    Closure closure = table["getSemanticsOwner"];
    return maybeUnBoxAndBuildArgument<SemanticsOwner?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get debugOutstandingSemanticsHandles {
    Closure closure = table["getDebugOutstandingSemanticsHandles"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  SemanticsHandle ensureSemantics({listener}) {
    Closure closure = table["ensureSemantics"];
    return maybeUnBoxAndBuildArgument<SemanticsHandle, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void flushSemantics() {
    Closure closure = table["flushSemantics"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadPipelineOwner(
    {required HydroState hydroState, required HydroTable table}) {
  table['pipelineOwner'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedonNeedVisualUpdate = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onNeedVisualUpdate']
        : null;
    Closure? unpackedonSemanticsOwnerCreated = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSemanticsOwnerCreated']
        : null;
    Closure? unpackedonSemanticsOwnerDisposed = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSemanticsOwnerDisposed']
        : null;
    return [
      RTManagedPipelineOwner(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          onNeedVisualUpdate: unpackedonNeedVisualUpdate != null
              ? () => unpackedonNeedVisualUpdate.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSemanticsOwnerCreated: unpackedonSemanticsOwnerCreated != null
              ? () => unpackedonSemanticsOwnerCreated.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSemanticsOwnerDisposed: unpackedonSemanticsOwnerDisposed != null
              ? () => unpackedonSemanticsOwnerDisposed.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null)
    ];
  });
  registerBoxer<PipelineOwner>(boxer: (
      {required PipelineOwner vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedPipelineOwner(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
