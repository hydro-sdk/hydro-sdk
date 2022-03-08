import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/box.dart' as _be2e;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/sliver.dart' as _021d;
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart' as _35be;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/sliver.dart' as _a8eb;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverMultiBoxAdaptorElement
    extends _36c2.VMManagedBox<_a8eb.SliverMultiBoxAdaptorElement> {
  VMManagedSliverMultiBoxAdaptorElement(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a8eb.SliverMultiBoxAdaptorWidget>(
            object: vmObject.widget,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_35be.RenderSliverMultiBoxAdaptor>(
            object: vmObject.renderObject,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.update(_36c2.maybeUnBoxAndBuildArgument<
          _a8eb.SliverMultiBoxAdaptorWidget,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['performRebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.performRebuild();
      return [];
    });
    table['createChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.createChild(luaCallerArguments[1],
          after:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['after']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['updateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.updateChild(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
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
    table['forgetChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.forgetChild(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['removeChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['estimateMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.estimateMaxScrollOffset(
            _36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
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
    table['getEstimatedChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.estimatedChildCount;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.childCount,
      ];
    });
    table['didStartLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didStartLayout();
      return [];
    });
    table['didFinishLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didFinishLayout();
      return [];
    });
    table['debugAssertChildListLocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugAssertChildListLocked(),
      ];
    });
    table['didAdoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didAdoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['setDidUnderflow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setDidUnderflow(luaCallerArguments[1]);
      return [];
    });
    table['insertRenderObjectChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.insertRenderObjectChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['moveRenderObjectChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.moveRenderObjectChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2],
          luaCallerArguments[3]);
      return [];
    });
    table['removeRenderObjectChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.removeRenderObjectChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['debugVisitOnstageChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.debugVisitOnstageChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['mount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.mount(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.deactivate();
      return [];
    });
    table['unmount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.unmount();
      return [];
    });
    table['attachRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attachRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['detachRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detachRenderObject();
      return [];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getDebugDoingBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugDoingBuild,
      ];
    });
    table['describeMissingAncestor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .describeMissingAncestor(
                    expectedAncestorType: _36c2
                        .maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(
                            luaCallerArguments.length >= 2
                                ? luaCallerArguments[1]['expectedAncestorType']
                                : null,
                            parentState: hydroState))
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['describeElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.describeElement(luaCallerArguments[1],
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['describeWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.describeWidget(luaCallerArguments[1],
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['describeOwnershipChain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.describeOwnershipChain(luaCallerArguments[1]),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['visitChildElements'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitChildElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['activate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.activate();
      return [];
    });
    table['debugDeactivated'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugDeactivated();
      return [];
    });
    table['findRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findRenderObject();
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_9742.RenderObject?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['dependOnInheritedElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.InheritedWidget>(
            object: vmObject.dependOnInheritedElement(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.InheritedElement,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                aspect: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['aspect']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['dependOnInheritedWidgetOfExactType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.dependOnInheritedWidgetOfExactType(
          aspect:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
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
    table['getElementForInheritedWidgetOfExactType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getElementForInheritedWidgetOfExactType();
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.InheritedElement?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['findAncestorWidgetOfExactType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findAncestorWidgetOfExactType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findAncestorStateOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findAncestorStateOfType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findRootAncestorStateOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findRootAncestorStateOfType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['findAncestorRenderObjectOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findAncestorRenderObjectOfType();
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['visitAncestorElements'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      vmObject.visitAncestorElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          )[0]);
      return [];
    });
    table['didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.didChangeDependencies();
      return [];
    });
    table['debugGetCreatorChain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugGetCreatorChain(luaCallerArguments[1]),
      ];
    });
    table['debugGetDiagnosticChain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugGetDiagnosticChain()
                .map((x) => _36c2.maybeBoxObject<_e2dc.Element>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .debugDescribeChildren()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['markNeedsBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsBuild();
      return [];
    });
    table['rebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.rebuild();
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['getSlot'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.slot;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Object?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['getDebugIsDefunct'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.debugIsDefunct,
      ];
    });
    table['getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
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
    table['getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.size;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Size?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getDirty'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.dirty,
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
    table['toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
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
    table['toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _a8eb.SliverMultiBoxAdaptorElement vmObject;
}

class RTManagedSliverMultiBoxAdaptorElement
    extends _a8eb.SliverMultiBoxAdaptorElement
    implements _36c2.Box<_a8eb.SliverMultiBoxAdaptorElement> {
  RTManagedSliverMultiBoxAdaptorElement(
      _a8eb.SliverMultiBoxAdaptorWidget widget$,
      {required _fac9.bool replaceMovedChildren,
      required this.table,
      required this.hydroState})
      : super(widget$, replaceMovedChildren: replaceMovedChildren) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.widget];
    });
    table['_dart_getRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.renderObject];
    });
    table['_dart_update'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.update(_36c2.maybeUnBoxAndBuildArgument<
          _a8eb.SliverMultiBoxAdaptorWidget,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_performRebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.performRebuild();
      return [];
    });
    table['_dart_createChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.createChild(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          after:
              _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox?, _fac9.dynamic>(
                  luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['after']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_updateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.updateChild(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments[3],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_forgetChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.forgetChild(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_estimateMaxScrollOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.estimateMaxScrollOffset(_36c2.maybeUnBoxAndBuildArgument<_021d.SliverConstraints?, _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
                firstIndex: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
                    luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['firstIndex']
                        : null,
                    parentState: hydroState),
                lastIndex: _36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['lastIndex'] : null,
                    parentState: hydroState),
                leadingScrollOffset:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3 ? luaCallerArguments[2]['leadingScrollOffset'] : null,
                        parentState: hydroState),
                trailingScrollOffset: _36c2.maybeUnBoxAndBuildArgument<_fac9.double?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['trailingScrollOffset'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getEstimatedChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.estimatedChildCount];
    });
    table['_dart_getChildCount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.childCount];
    });
    table['_dart_didStartLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didStartLayout();
      return [];
    });
    table['_dart_didFinishLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didFinishLayout();
      return [];
    });
    table['_dart_debugAssertChildListLocked'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugAssertChildListLocked(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_didAdoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didAdoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_be2e.RenderBox, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_setDidUnderflow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setDidUnderflow(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_insertRenderObjectChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.insertRenderObjectChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_moveRenderObjectChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveRenderObjectChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[3],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeRenderObjectChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeRenderObjectChild(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_visitChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_debugVisitOnstageChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.debugVisitOnstageChildren((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_mount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.mount(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_updateChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.updateChildren(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Element>, _e2dc.Element>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>, _e2dc.Widget>(
                    luaCallerArguments[2],
                    parentState: hydroState),
                forgottenChildren: _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_e2dc.Element>?, _e2dc.Element>(luaCallerArguments.length >= 4 ? luaCallerArguments[3]['forgottenChildren'] : null,
                    parentState: hydroState),
                slots: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.Object?>?, _fac9.Object?>(
                    luaCallerArguments.length >= 4 ? luaCallerArguments[3]['slots'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_deactivate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deactivate();
      return [];
    });
    table['_dart_unmount'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.unmount();
      return [];
    });
    table['_dart_attachRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.attachRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_detachRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.detachRenderObject();
      return [];
    });
    table['_dart_insertChildRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.insertChildRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_moveChildRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.moveChildRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_removeChildRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.removeChildRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getDebugDoingBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugDoingBuild];
    });
    table['_dart_reassemble'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.reassemble();
      return [];
    });
    table['_dart_describeMissingAncestor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeMissingAncestor(
                expectedAncestorType:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Type, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['expectedAncestorType']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_describeElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeElement(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_describeWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeWidget(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_describeOwnershipChain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.describeOwnershipChain(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_visitChildElements'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.visitChildElements((element) => unpackedvisitor.dispatch(
            [luaCallerArguments[0], element],
            parentState: hydroState,
          ));
      return [];
    });
    table['_dart_updateSlotForChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateSlotForChild(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_inflateWidget'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.inflateWidget(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_deactivateChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.deactivateChild(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_activate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.activate();
      return [];
    });
    table['_dart_debugDeactivated'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugDeactivated();
      return [];
    });
    table['_dart_findRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.findRenderObject(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dependOnInheritedElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.dependOnInheritedElement(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.InheritedElement,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                aspect: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['aspect']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_dependOnInheritedWidgetOfExactType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        super.dependOnInheritedWidgetOfExactType(
            aspect:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['aspect']
                        : null,
                    parentState: hydroState))
      ];
    });
    table['_dart_getElementForInheritedWidgetOfExactType'] = _36c2
        .makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getElementForInheritedWidgetOfExactType(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_findAncestorWidgetOfExactType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.findAncestorWidgetOfExactType()];
    });
    table['_dart_findAncestorStateOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.findAncestorStateOfType()];
    });
    table['_dart_findRootAncestorStateOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.findRootAncestorStateOfType()];
    });
    table['_dart_findAncestorRenderObjectOfType'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.findAncestorRenderObjectOfType()];
    });
    table['_dart_visitAncestorElements'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedvisitor = luaCallerArguments[1];
      super.visitAncestorElements((element) =>
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              unpackedvisitor.dispatch(
                [luaCallerArguments[0], element],
                parentState: hydroState,
              )[0],
              parentState: hydroState));
      return [];
    });
    table['_dart_didChangeDependencies'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didChangeDependencies();
      return [];
    });
    table['_dart_debugGetCreatorChain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugGetCreatorChain(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugGetDiagnosticChain'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugGetDiagnosticChain(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShort(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toDiagnosticsNode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toDiagnosticsNode(
                name: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['name']
                            : null,
                        parentState: hydroState),
                style: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_markNeedsBuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsBuild();
      return [];
    });
    table['_dart_rebuild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.rebuild();
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_getSlot'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.slot];
    });
    table['_dart_getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_getDebugIsDefunct'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.debugIsDefunct];
    });
    table['_dart_getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_getDirty'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dirty];
    });
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toStringDeep'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringDeep(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null),
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toString(
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _a8eb.SliverMultiBoxAdaptorElement unwrap() => this;
  _a8eb.SliverMultiBoxAdaptorElement get vmObject => this;
  @_fac9.override
  _a8eb.SliverMultiBoxAdaptorWidget get widget {
    _36c2.Closure closure = table["getWidget"];
    return _36c2.maybeUnBoxAndBuildArgument<_a8eb.SliverMultiBoxAdaptorWidget,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _35be.RenderSliverMultiBoxAdaptor get renderObject {
    _36c2.Closure closure = table["getRenderObject"];
    return _36c2.maybeUnBoxAndBuildArgument<_35be.RenderSliverMultiBoxAdaptor,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void update(newWidget) {
    super.update(newWidget);
    _36c2.Closure closure = table["update"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void performRebuild() {
    _36c2.Closure closure = table["performRebuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void createChild(index, {required _be2e.RenderBox? after}) {
    _36c2.Closure closure = table["createChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Element? updateChild(child, newWidget, newSlot) {
    _36c2.Closure closure = table["updateChild"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void forgetChild(child) {
    super.forgetChild(child);
    _36c2.Closure closure = table["forgetChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeChild(child) {
    _36c2.Closure closure = table["removeChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double estimateMaxScrollOffset(constraints,
      {_fac9.int? firstIndex,
      _fac9.int? lastIndex,
      _fac9.double? leadingScrollOffset,
      _fac9.double? trailingScrollOffset}) {
    _36c2.Closure closure = table["estimateMaxScrollOffset"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.int? get estimatedChildCount {
    _36c2.Closure closure = table["getEstimatedChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int get childCount {
    _36c2.Closure closure = table["getChildCount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didStartLayout() {
    _36c2.Closure closure = table["didStartLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didFinishLayout() {
    _36c2.Closure closure = table["didFinishLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool debugAssertChildListLocked() {
    _36c2.Closure closure = table["debugAssertChildListLocked"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didAdoptChild(child) {
    _36c2.Closure closure = table["didAdoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void setDidUnderflow(value) {
    _36c2.Closure closure = table["setDidUnderflow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void insertRenderObjectChild(child, slot) {
    _36c2.Closure closure = table["insertRenderObjectChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveRenderObjectChild(child, oldSlot, newSlot) {
    _36c2.Closure closure = table["moveRenderObjectChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeRenderObjectChild(child, slot) {
    _36c2.Closure closure = table["removeRenderObjectChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void visitChildren(visitor) {
    _36c2.Closure closure = table["visitChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugVisitOnstageChildren(visitor) {
    _36c2.Closure closure = table["debugVisitOnstageChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void mount(parent, newSlot) {
    super.mount(parent, newSlot);
    _36c2.Closure closure = table["mount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_e2dc.Element> updateChildren(oldChildren, newWidgets,
      {_fac9.Set? forgottenChildren, _fac9.List? slots}) {
    _36c2.Closure closure = table["updateChildren"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Element>, _e2dc.Element>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void deactivate() {
    super.deactivate();
    _36c2.Closure closure = table["deactivate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void unmount() {
    super.unmount();
    _36c2.Closure closure = table["unmount"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void attachRenderObject(newSlot) {
    _36c2.Closure closure = table["attachRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void detachRenderObject() {
    _36c2.Closure closure = table["detachRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void insertChildRenderObject(child, slot) {
    super.insertChildRenderObject(child, slot);
    _36c2.Closure closure = table["insertChildRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void moveChildRenderObject(child, slot) {
    super.moveChildRenderObject(child, slot);
    _36c2.Closure closure = table["moveChildRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void removeChildRenderObject(child) {
    super.removeChildRenderObject(child);
    _36c2.Closure closure = table["removeChildRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugDoingBuild {
    _36c2.Closure closure = table["getDebugDoingBuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void reassemble() {
    super.reassemble();
    _36c2.Closure closure = table["reassemble"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> describeMissingAncestor(
      {required _fac9.Type expectedAncestorType}) {
    _36c2.Closure closure = table["describeMissingAncestor"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _eaf3.DiagnosticsNode describeElement(name,
      {_eaf3.DiagnosticsTreeStyle style =
          _eaf3.DiagnosticsTreeStyle.errorProperty}) {
    _36c2.Closure closure = table["describeElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _eaf3.DiagnosticsNode describeWidget(name,
      {_eaf3.DiagnosticsTreeStyle style =
          _eaf3.DiagnosticsTreeStyle.errorProperty}) {
    _36c2.Closure closure = table["describeWidget"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _eaf3.DiagnosticsNode describeOwnershipChain(name) {
    _36c2.Closure closure = table["describeOwnershipChain"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void visitChildElements(visitor) {
    _36c2.Closure closure = table["visitChildElements"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void updateSlotForChild(child, newSlot) {
    _36c2.Closure closure = table["updateSlotForChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Element inflateWidget(newWidget, newSlot) {
    _36c2.Closure closure = table["inflateWidget"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Element, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void deactivateChild(child) {
    _36c2.Closure closure = table["deactivateChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void activate() {
    super.activate();
    _36c2.Closure closure = table["activate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugDeactivated() {
    super.debugDeactivated();
    _36c2.Closure closure = table["debugDeactivated"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _9742.RenderObject? findRenderObject() {
    _36c2.Closure closure = table["findRenderObject"];
    return _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.InheritedWidget dependOnInheritedElement(ancestor,
      {_fac9.Object? aspect}) {
    _36c2.Closure closure = table["dependOnInheritedElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.InheritedWidget, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  T? dependOnInheritedWidgetOfExactType<T extends _e2dc.InheritedWidget>(
      {_fac9.Object? aspect}) {
    _36c2.Closure closure = table["dependOnInheritedWidgetOfExactType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.InheritedElement? getElementForInheritedWidgetOfExactType<
      T extends _e2dc.InheritedWidget>() {
    _36c2.Closure closure = table["getElementForInheritedWidgetOfExactType"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.InheritedElement?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  T? findAncestorWidgetOfExactType<T extends _e2dc.Widget>() {
    _36c2.Closure closure = table["findAncestorWidgetOfExactType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  T? findAncestorStateOfType<T extends _e2dc.State<_e2dc.StatefulWidget>>() {
    _36c2.Closure closure = table["findAncestorStateOfType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  T? findRootAncestorStateOfType<
      T extends _e2dc.State<_e2dc.StatefulWidget>>() {
    _36c2.Closure closure = table["findRootAncestorStateOfType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  T? findAncestorRenderObjectOfType<T extends _9742.RenderObject>() {
    _36c2.Closure closure = table["findAncestorRenderObjectOfType"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void visitAncestorElements(visitor) {
    _36c2.Closure closure = table["visitAncestorElements"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _36c2.Closure closure = table["didChangeDependencies"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String debugGetCreatorChain(limit) {
    _36c2.Closure closure = table["debugGetCreatorChain"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_e2dc.Element> debugGetDiagnosticChain() {
    _36c2.Closure closure = table["debugGetDiagnosticChain"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Element>, _e2dc.Element>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode toDiagnosticsNode(
      {_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) {
    _36c2.Closure closure = table["toDiagnosticsNode"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void markNeedsBuild() {
    _36c2.Closure closure = table["markNeedsBuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void rebuild() {
    _36c2.Closure closure = table["rebuild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Object? get slot {
    _36c2.Closure closure = table["getSlot"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get depth {
    _36c2.Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get debugIsDefunct {
    _36c2.Closure closure = table["getDebugIsDefunct"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.BuildOwner? get owner {
    _36c2.Closure closure = table["getOwner"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildOwner?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Size? get size {
    _36c2.Closure closure = table["getSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get dirty {
    _36c2.Closure closure = table["getDirty"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadSliverMultiBoxAdaptorElement(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverMultiBoxAdaptorElement'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverMultiBoxAdaptorElement(
          _36c2.maybeUnBoxAndBuildArgument<_a8eb.SliverMultiBoxAdaptorWidget,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState,
          replaceMovedChildren: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['replaceMovedChildren']
              : null)
    ];
  });
  _36c2.registerBoxer<_a8eb.SliverMultiBoxAdaptorElement>(boxer: (
      {required _a8eb.SliverMultiBoxAdaptorElement vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverMultiBoxAdaptorElement(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
