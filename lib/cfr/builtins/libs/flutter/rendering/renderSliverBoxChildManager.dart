import 'dart:core';

import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedRenderSliverBoxChildManager
    extends VMManagedBox<RenderSliverBoxChildManager> {
  VMManagedRenderSliverBoxChildManager(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['createChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.createChild(luaCallerArguments[1],
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['removeChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.removeChild(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['estimateMaxScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.estimateMaxScrollOffset(
            maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            firstIndex: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['firstIndex']
                : null,
            lastIndex: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['lastIndex']
                : null,
            leadingScrollOffset: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['leadingScrollOffset']
                : null?.toDouble(),
            trailingScrollOffset: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['trailingScrollOffset']
                : null?.toDouble()),
      ];
    });
    table['getChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['didAdoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.didAdoptChild(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['setDidUnderflow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.setDidUnderflow(luaCallerArguments[1]);
      return [];
    });
    table['didStartLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.didStartLayout();
      return [];
    });
    table['didFinishLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.didFinishLayout();
      return [];
    });
    table['debugAssertChildListLocked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertChildListLocked(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final RenderSliverBoxChildManager vmObject;
}

class RTManagedRenderSliverBoxChildManager extends RenderSliverBoxChildManager
    implements Box<RenderSliverBoxChildManager> {
  RTManagedRenderSliverBoxChildManager(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_createChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      createChild(luaCallerArguments[1],
          after: maybeUnBoxAndBuildArgument<RenderBox?, dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['after']
                  : null,
              parentState: hydroState));
      return [];
    });
    table['_dart_removeChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      removeChild(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_estimateMaxScrollOffset'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        estimateMaxScrollOffset(
            maybeUnBoxAndBuildArgument<SliverConstraints, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            firstIndex: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['firstIndex']
                : null,
            lastIndex: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['lastIndex']
                : null,
            leadingScrollOffset: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['leadingScrollOffset']
                : null?.toDouble(),
            trailingScrollOffset: luaCallerArguments.length >= 3
                ? luaCallerArguments[2]['trailingScrollOffset']
                : null?.toDouble())
      ];
    });
    table['_dart_getChildCount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [childCount];
    });
    table['_dart_didAdoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      didAdoptChild(maybeUnBoxAndBuildArgument<RenderBox, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_setDidUnderflow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      setDidUnderflow(luaCallerArguments[1]);
      return [];
    });
    table['_dart_didStartLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.didStartLayout();
      return [];
    });
    table['_dart_didFinishLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.didFinishLayout();
      return [];
    });
    table['_dart_debugAssertChildListLocked'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugAssertChildListLocked()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  RenderSliverBoxChildManager unwrap() => this;
  RenderSliverBoxChildManager get vmObject => this;
  @override
  void createChild(int index, {RenderBox? after}) {
    Closure closure = table["createChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeChild(RenderBox child) {
    Closure closure = table["removeChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  double estimateMaxScrollOffset(SliverConstraints constraints,
      {int? firstIndex,
      int? lastIndex,
      double? leadingScrollOffset,
      double? trailingScrollOffset}) {
    Closure closure = table["estimateMaxScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @override
  int get childCount {
    Closure closure = table["getChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didAdoptChild(RenderBox child) {
    Closure closure = table["didAdoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void setDidUnderflow(bool value) {
    Closure closure = table["setDidUnderflow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didStartLayout() {
    Closure closure = table["didStartLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didFinishLayout() {
    Closure closure = table["didFinishLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool debugAssertChildListLocked() {
    Closure closure = table["debugAssertChildListLocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadRenderSliverBoxChildManager(
    {required HydroState hydroState, required HydroTable table}) {
  table['renderSliverBoxChildManager'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedRenderSliverBoxChildManager(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<RenderSliverBoxChildManager>(boxer: (
      {required RenderSliverBoxChildManager vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedRenderSliverBoxChildManager(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
