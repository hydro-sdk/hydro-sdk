import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/custom_layout.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedMultiChildLayoutDelegate
    extends VMManagedBox<MultiChildLayoutDelegate> {
  VMManagedMultiChildLayoutDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['hasChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasChild(maybeUnBoxAndBuildArgument<Object, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState)),
      ];
    });
    table['layoutChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.layoutChild(
                maybeUnBoxAndBuildArgument<Object, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['positionChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.positionChild(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: vmObject.getSize(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performLayout(maybeUnBoxAndBuildArgument<Size, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.shouldRelayout(
            maybeUnBoxAndBuildArgument<MultiChildLayoutDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final MultiChildLayoutDelegate vmObject;
}

class RTManagedMultiChildLayoutDelegate extends MultiChildLayoutDelegate
    implements Box<MultiChildLayoutDelegate> {
  RTManagedMultiChildLayoutDelegate(
      {Listenable? relayout, required this.table, required this.hydroState})
      : super(relayout: relayout) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_hasChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.hasChild(maybeUnBoxAndBuildArgument<Object, dynamic>(
            luaCallerArguments[1],
            parentState: hydroState))
      ];
    });
    table['_dart_layoutChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.layoutChild(
                maybeUnBoxAndBuildArgument<Object, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_positionChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.positionChild(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Offset, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Size>(
            object: super.getSize(
                maybeUnBoxAndBuildArgument<BoxConstraints, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_performLayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      performLayout(maybeUnBoxAndBuildArgument<Size, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_shouldRelayout'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        shouldRelayout(
            maybeUnBoxAndBuildArgument<MultiChildLayoutDelegate, dynamic>(
                luaCallerArguments[1],
                parentState: hydroState))
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toString()];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  MultiChildLayoutDelegate unwrap() => this;
  MultiChildLayoutDelegate get vmObject => this;
  @override
  bool hasChild(Object childId) {
    Closure closure = table["hasChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size layoutChild(Object childId, BoxConstraints constraints) {
    Closure closure = table["layoutChild"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void positionChild(Object childId, Offset offset) {
    Closure closure = table["positionChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Size getSize(BoxConstraints constraints) {
    Closure closure = table["getSize"];
    return maybeUnBoxAndBuildArgument<Size, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void performLayout(Size size) {
    Closure closure = table["performLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    Closure closure = table["shouldRelayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString() {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadMultiChildLayoutDelegate(
    {required HydroState hydroState, required HydroTable table}) {
  table['multiChildLayoutDelegate'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedMultiChildLayoutDelegate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          relayout: maybeUnBoxAndBuildArgument<Listenable?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['relayout']
                  : null,
              parentState: hydroState))
    ];
  });
  registerBoxer<MultiChildLayoutDelegate>(boxer: (
      {required MultiChildLayoutDelegate vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedMultiChildLayoutDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
