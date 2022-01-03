import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedBuildContext extends VMManagedBox<BuildContext> {
  VMManagedBuildContext(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Widget>(
            object: vmObject.widget,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<BuildOwner?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getDebugDoingBuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingBuild,
      ];
    });
    table['findRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.findRenderObject();
      if (returnValue != null) {
        return [
          maybeBoxObject<RenderObject?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.size;
      if (returnValue != null) {
        return [
          maybeBoxObject<Size?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['dependOnInheritedElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<InheritedWidget>(
            object: vmObject.dependOnInheritedElement(
                maybeUnBoxAndBuildArgument<InheritedElement, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                aspect: maybeUnBoxAndBuildArgument<Object, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['aspect']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['dependOnInheritedWidgetOfExactType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.dependOnInheritedWidgetOfExactType(
          aspect: maybeUnBoxAndBuildArgument<Object?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['aspect']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getElementForInheritedWidgetOfExactType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.getElementForInheritedWidgetOfExactType();
      if (returnValue != null) {
        return [
          maybeBoxObject<InheritedElement?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['findAncestorWidgetOfExactType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.findAncestorWidgetOfExactType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findAncestorStateOfType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.findAncestorStateOfType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findRootAncestorStateOfType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.findRootAncestorStateOfType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findAncestorRenderObjectOfType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.findAncestorRenderObjectOfType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['visitAncestorElements'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitAncestorElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['visitChildElements'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['describeElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeElement(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['describeWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeWidget(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['describeMissingAncestor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .describeMissingAncestor(
                    expectedAncestorType:
                        maybeUnBoxAndBuildArgument<Type, dynamic>(
                            luaCallerArguments.length >= 2
                                ? luaCallerArguments[1]['expectedAncestorType']
                                : null,
                            parentState: hydroState))
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['describeOwnershipChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeOwnershipChain(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final BuildContext vmObject;
}

void loadBuildContext(
    {required HydroState hydroState, required HydroTable table}) {
  registerBoxer<BuildContext>(boxer: (
      {required BuildContext vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedBuildContext(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
