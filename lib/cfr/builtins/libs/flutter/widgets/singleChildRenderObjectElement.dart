import 'dart:core';
import 'dart:ui';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedSingleChildRenderObjectElement
    extends VMManagedBox<SingleChildRenderObjectElement> {
  VMManagedSingleChildRenderObjectElement(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<SingleChildRenderObjectWidget>(
            object: vmObject.widget,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['forgetChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.forgetChild(maybeUnBoxAndBuildArgument<Element, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['mount'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.mount(
          maybeUnBoxAndBuildArgument<Element?, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['update'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.update(
          maybeUnBoxAndBuildArgument<SingleChildRenderObjectWidget, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['insertRenderObjectChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.insertRenderObjectChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['moveRenderObjectChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.moveRenderObjectChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['removeRenderObjectChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.removeRenderObjectChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['performRebuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.performRebuild();
      return [];
    });
    table['deactivate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.deactivate();
      return [];
    });
    table['unmount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.unmount();
      return [];
    });
    table['attachRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attachRenderObject(maybeUnBoxAndBuildArgument<Object?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detachRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detachRenderObject();
      return [];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderObject>(
            object: vmObject.renderObject,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getDebugDoingBuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingBuild,
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
    table['describeOwnershipChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.describeOwnershipChain(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugVisitOnstageChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.debugVisitOnstageChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
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
    table['activate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.activate();
      return [];
    });
    table['debugDeactivated'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugDeactivated();
      return [];
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
    table['dependOnInheritedElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<InheritedWidget>(
            object: vmObject.dependOnInheritedElement(
                maybeUnBoxAndBuildArgument<InheritedElement, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                aspect: maybeUnBoxAndBuildArgument<Object?, dynamic>(
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
    table['didChangeDependencies'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.didChangeDependencies();
      return [];
    });
    table['debugGetCreatorChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugGetCreatorChain(luaCallerArguments[1]),
      ];
    });
    table['debugGetDiagnosticChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugGetDiagnosticChain()
                .map((x) => maybeBoxObject<Element>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['markNeedsBuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.markNeedsBuild();
      return [];
    });
    table['rebuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.rebuild();
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['getSlot'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.slot;
      if (returnValue != null) {
        return [
          maybeBoxObject<Object?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getDebugIsDefunct'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.debugIsDefunct,
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
    table['getDirty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.dirty,
      ];
    });
    table['toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final SingleChildRenderObjectElement vmObject;
}

class RTManagedSingleChildRenderObjectElement
    extends SingleChildRenderObjectElement
    implements Box<SingleChildRenderObjectElement> {
  RTManagedSingleChildRenderObjectElement(SingleChildRenderObjectWidget widget$,
      {required this.table, required this.hydroState})
      : super(
          widget$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.widget];
    });
    table['_dart_visitChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_forgetChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.forgetChild(maybeUnBoxAndBuildArgument<Element, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_mount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.mount(
          maybeUnBoxAndBuildArgument<Element?, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_update'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.update(
          maybeUnBoxAndBuildArgument<SingleChildRenderObjectWidget, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_insertRenderObjectChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.insertRenderObjectChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_moveRenderObjectChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.moveRenderObjectChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeRenderObjectChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.removeRenderObjectChild(
          maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_performRebuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.performRebuild();
      return [];
    });
    table['_dart_updateChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .updateChildren(
                    maybeUnBoxAndBuildArgument<List<Element>, Element>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                    maybeUnBoxAndBuildArgument<List<Widget>, Widget>(luaCallerArguments[2],
                        parentState: hydroState),
                    forgottenChildren: maybeUnBoxAndBuildArgument<Set<Element>?, Element>(
                        luaCallerArguments.length >= 4
                            ? luaCallerArguments[3]['forgottenChildren']
                            : null,
                        parentState: hydroState),
                    slots: maybeUnBoxAndBuildArgument<List<Object?>?, Object?>(
                        luaCallerArguments.length >= 4 ? luaCallerArguments[3]['slots'] : null,
                        parentState: hydroState))
                .map((x) => maybeBoxObject<Element>(object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_deactivate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.deactivate();
      return [];
    });
    table['_dart_unmount'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.unmount();
      return [];
    });
    table['_dart_attachRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attachRenderObject(maybeUnBoxAndBuildArgument<Object?, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detachRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detachRenderObject();
      return [];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.renderObject];
    });
    table['_dart_getDebugDoingBuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugDoingBuild];
    });
    table['_dart_reassemble'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_describeMissingAncestor'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
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
            table: HydroTable())
      ];
    });
    table['_dart_describeElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.describeElement(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.describeWidget(luaCallerArguments[1],
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_describeOwnershipChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.describeOwnershipChain(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugVisitOnstageChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.debugVisitOnstageChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_visitChildElements'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_updateChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Element?>(
            object: super.updateChild(
                maybeUnBoxAndBuildArgument<Element?, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Widget?, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Object?, dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_updateSlotForChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.updateSlotForChild(
          maybeUnBoxAndBuildArgument<Element, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          maybeUnBoxAndBuildArgument<Object?, dynamic>(luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_inflateWidget'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Element>(
            object: super.inflateWidget(
                maybeUnBoxAndBuildArgument<Widget, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                maybeUnBoxAndBuildArgument<Object?, dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_deactivateChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.deactivateChild(maybeUnBoxAndBuildArgument<Element, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_activate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.activate();
      return [];
    });
    table['_dart_debugDeactivated'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugDeactivated();
      return [];
    });
    table['_dart_findRenderObject'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<RenderObject?>(
            object: super.findRenderObject(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_dependOnInheritedElement'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<InheritedWidget>(
            object: super.dependOnInheritedElement(
                maybeUnBoxAndBuildArgument<InheritedElement, dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                aspect: maybeUnBoxAndBuildArgument<Object?, dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['aspect']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_dependOnInheritedWidgetOfExactType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.dependOnInheritedWidgetOfExactType(
            aspect: maybeUnBoxAndBuildArgument<Object?, dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['aspect']
                    : null,
                parentState: hydroState))
      ];
    });
    table['_dart_getElementForInheritedWidgetOfExactType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<InheritedElement?>(
            object: super.getElementForInheritedWidgetOfExactType(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_findAncestorWidgetOfExactType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.findAncestorWidgetOfExactType()];
    });
    table['_dart_findAncestorStateOfType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.findAncestorStateOfType()];
    });
    table['_dart_findRootAncestorStateOfType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.findRootAncestorStateOfType()];
    });
    table['_dart_findAncestorRenderObjectOfType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.findAncestorRenderObjectOfType()];
    });
    table['_dart_visitAncestorElements'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure unpackedvisitor = luaCallerArguments[1];
      super.visitAncestorElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['_dart_didChangeDependencies'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.didChangeDependencies();
      return [];
    });
    table['_dart_debugGetCreatorChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugGetCreatorChain(luaCallerArguments[1])];
    });
    table['_dart_debugGetDiagnosticChain'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugGetDiagnosticChain()
                .map((x) => maybeBoxObject<Element>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .debugDescribeChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_markNeedsBuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.markNeedsBuild();
      return [];
    });
    table['_dart_rebuild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.rebuild();
      return [];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_getSlot'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.slot];
    });
    table['_dart_getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getDebugIsDefunct'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.debugIsDefunct];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getSize'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_getDirty'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.dirty];
    });
    table['_dart_toStringShallow'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null)
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  SingleChildRenderObjectElement unwrap() => this;
  SingleChildRenderObjectElement get vmObject => this;
  @override
  SingleChildRenderObjectWidget get widget {
    Closure closure = table["getWidget"];
    return maybeUnBoxAndBuildArgument<SingleChildRenderObjectWidget, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void visitChildren(visitor) {
    Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void forgetChild(child) {
    super.forgetChild(child);
    Closure closure = table["forgetChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void mount(parent, newSlot) {
    super.mount(parent, newSlot);
    Closure closure = table["mount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void update(newWidget) {
    super.update(newWidget);
    Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void insertRenderObjectChild(child, slot) {
    Closure closure = table["insertRenderObjectChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void moveRenderObjectChild(child, oldSlot, newSlot) {
    Closure closure = table["moveRenderObjectChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void removeRenderObjectChild(child, slot) {
    Closure closure = table["removeRenderObjectChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void performRebuild() {
    Closure closure = table["performRebuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<Element> updateChildren(oldChildren, newWidgets,
      {Set? forgottenChildren, List? slots}) {
    Closure closure = table["updateChildren"];
    return maybeUnBoxAndBuildArgument<List<Element>, Element>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void deactivate() {
    super.deactivate();
    Closure closure = table["deactivate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void unmount() {
    super.unmount();
    Closure closure = table["unmount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attachRenderObject(newSlot) {
    Closure closure = table["attachRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void detachRenderObject() {
    Closure closure = table["detachRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  RenderObject get renderObject {
    Closure closure = table["getRenderObject"];
    return maybeUnBoxAndBuildArgument<RenderObject, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get debugDoingBuild {
    Closure closure = table["getDebugDoingBuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void reassemble() {
    super.reassemble();
    Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<DiagnosticsNode> describeMissingAncestor(
      {required Type expectedAncestorType}) {
    Closure closure = table["describeMissingAncestor"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DiagnosticsNode describeElement(name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.errorProperty}) {
    Closure closure = table["describeElement"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DiagnosticsNode describeWidget(name,
      {DiagnosticsTreeStyle style = DiagnosticsTreeStyle.errorProperty}) {
    Closure closure = table["describeWidget"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DiagnosticsNode describeOwnershipChain(name) {
    Closure closure = table["describeOwnershipChain"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void debugVisitOnstageChildren(visitor) {
    Closure closure = table["debugVisitOnstageChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitChildElements(visitor) {
    Closure closure = table["visitChildElements"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Element? updateChild(child, newWidget, newSlot) {
    Closure closure = table["updateChild"];
    return maybeUnBoxAndBuildArgument<Element?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void updateSlotForChild(child, newSlot) {
    Closure closure = table["updateSlotForChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Element inflateWidget(newWidget, newSlot) {
    Closure closure = table["inflateWidget"];
    return maybeUnBoxAndBuildArgument<Element, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void deactivateChild(child) {
    Closure closure = table["deactivateChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void activate() {
    super.activate();
    Closure closure = table["activate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugDeactivated() {
    super.debugDeactivated();
    Closure closure = table["debugDeactivated"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  RenderObject? findRenderObject() {
    Closure closure = table["findRenderObject"];
    return maybeUnBoxAndBuildArgument<RenderObject?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  InheritedWidget dependOnInheritedElement(ancestor, {Object? aspect}) {
    Closure closure = table["dependOnInheritedElement"];
    return maybeUnBoxAndBuildArgument<InheritedWidget, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  T? dependOnInheritedWidgetOfExactType<T extends InheritedWidget>(
      {Object? aspect}) {
    Closure closure = table["dependOnInheritedWidgetOfExactType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  InheritedElement?
      getElementForInheritedWidgetOfExactType<T extends InheritedWidget>() {
    Closure closure = table["getElementForInheritedWidgetOfExactType"];
    return maybeUnBoxAndBuildArgument<InheritedElement?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  T? findAncestorWidgetOfExactType<T extends Widget>() {
    Closure closure = table["findAncestorWidgetOfExactType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  T? findAncestorStateOfType<T extends State<StatefulWidget>>() {
    Closure closure = table["findAncestorStateOfType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  T? findRootAncestorStateOfType<T extends State<StatefulWidget>>() {
    Closure closure = table["findRootAncestorStateOfType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  T? findAncestorRenderObjectOfType<T extends RenderObject>() {
    Closure closure = table["findAncestorRenderObjectOfType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void visitAncestorElements(visitor) {
    Closure closure = table["visitAncestorElements"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Closure closure = table["didChangeDependencies"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String debugGetCreatorChain(limit) {
    Closure closure = table["debugGetCreatorChain"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<Element> debugGetDiagnosticChain() {
    Closure closure = table["debugGetDiagnosticChain"];
    return maybeUnBoxAndBuildArgument<List<Element>, Element>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    Closure closure = table["debugDescribeChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void markNeedsBuild() {
    Closure closure = table["markNeedsBuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void rebuild() {
    Closure closure = table["rebuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Object? get slot {
    Closure closure = table["getSlot"];
    return maybeUnBoxAndBuildArgument<Object?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get depth {
    Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get debugIsDefunct {
    Closure closure = table["getDebugIsDefunct"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  BuildOwner? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<BuildOwner?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Size? get size {
    Closure closure = table["getSize"];
    return maybeUnBoxAndBuildArgument<Size?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get dirty {
    Closure closure = table["getDirty"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSingleChildRenderObjectElement(
    {required HydroState hydroState, required HydroTable table}) {
  table['singleChildRenderObjectElement'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedSingleChildRenderObjectElement(
          maybeUnBoxAndBuildArgument<SingleChildRenderObjectWidget, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<SingleChildRenderObjectElement>(boxer: (
      {required SingleChildRenderObjectElement vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedSingleChildRenderObjectElement(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
