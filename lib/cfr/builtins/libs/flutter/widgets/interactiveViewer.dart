import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/gestures/scale.dart' as _bb2d;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/interactive_viewer.dart' as _bb3c;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedInteractiveViewer
    extends _36c2.VMManagedBox<_bb3c.InteractiveViewer> {
  VMManagedInteractiveViewer(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['alignPanAxis'] = vmObject.alignPanAxis;
    table['boundaryMargin'] = _36c2.maybeBoxObject<_96d1.EdgeInsets>(
        object: vmObject.boundaryMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['constrained'] = vmObject.constrained;
    table['panEnabled'] = vmObject.panEnabled;
    table['scaleEnabled'] = vmObject.scaleEnabled;
    table['maxScale'] = vmObject.maxScale;
    table['minScale'] = vmObject.minScale;
    table['transformationController'] =
        _36c2.maybeBoxObject<_bb3c.TransformationController?>(
            object: vmObject.transformationController,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
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
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
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

  final _bb3c.InteractiveViewer vmObject;
}

class RTManagedInteractiveViewer extends _bb3c.InteractiveViewer
    implements _36c2.Box<_bb3c.InteractiveViewer> {
  RTManagedInteractiveViewer(
      {required _fac9.bool alignPanAxis,
      required _96d1.EdgeInsets boundaryMargin,
      required _a643.Clip clipBehavior,
      required _fac9.bool constrained,
      _ab4a.Key? key,
      required _fac9.double maxScale,
      required _fac9.double minScale,
      void Function(_bb2d.ScaleEndDetails details)? onInteractionEnd,
      void Function(_bb2d.ScaleStartDetails details)? onInteractionStart,
      void Function(_bb2d.ScaleUpdateDetails details)? onInteractionUpdate,
      required _fac9.bool panEnabled,
      required _fac9.bool scaleEnabled,
      _bb3c.TransformationController? transformationController,
      required _e2dc.Widget child,
      required this.table,
      required this.hydroState})
      : super(
            alignPanAxis: alignPanAxis,
            boundaryMargin: boundaryMargin,
            clipBehavior: clipBehavior,
            constrained: constrained,
            key: key,
            maxScale: maxScale,
            minScale: minScale,
            onInteractionEnd: onInteractionEnd,
            onInteractionStart: onInteractionStart,
            onInteractionUpdate: onInteractionUpdate,
            panEnabled: panEnabled,
            scaleEnabled: scaleEnabled,
            transformationController: transformationController,
            child: child) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['alignPanAxis'] = _36c2.maybeBoxObject(
        object: this.alignPanAxis,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['boundaryMargin'] = _36c2.maybeBoxObject(
        object: this.boundaryMargin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['constrained'] = _36c2.maybeBoxObject(
        object: this.constrained,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['panEnabled'] = _36c2.maybeBoxObject(
        object: this.panEnabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scaleEnabled'] = _36c2.maybeBoxObject(
        object: this.scaleEnabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxScale'] = _36c2.maybeBoxObject(
        object: this.maxScale,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minScale'] = _36c2.maybeBoxObject(
        object: this.minScale,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['transformationController'] = _36c2.maybeBoxObject(
        object: this.transformationController,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
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
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
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

  _bb3c.InteractiveViewer unwrap() => this;
  _bb3c.InteractiveViewer get vmObject => this;
  @_fac9.override
  _e2dc.State<_bb3c.InteractiveViewer> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _e2dc.State<_bb3c.InteractiveViewer>, _bb3c.InteractiveViewer>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
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
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInteractiveViewer(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['interactiveViewer'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonInteractionEnd = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onInteractionEnd']
        : null;
    _36c2.Closure? unpackedonInteractionStart = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onInteractionStart']
        : null;
    _36c2.Closure? unpackedonInteractionUpdate = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onInteractionUpdate']
        : null;

    return [
      RTManagedInteractiveViewer(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignPanAxis: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['alignPanAxis']
              : null,
          boundaryMargin:
              _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsets, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['boundaryMargin']
                      : null,
                  parentState: hydroState),
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          constrained: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['constrained']
              : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          maxScale: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxScale']
              : null?.toDouble(),
          minScale: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minScale'] : null?.toDouble(),
          onInteractionEnd: unpackedonInteractionEnd != null
              ? (details) => unpackedonInteractionEnd.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onInteractionStart: unpackedonInteractionStart != null
              ? (details) => unpackedonInteractionStart.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          onInteractionUpdate: unpackedonInteractionUpdate != null
              ? (details) => unpackedonInteractionUpdate.dispatch(
                    [luaCallerArguments[0], details],
                    parentState: hydroState,
                  )
              : null,
          panEnabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['panEnabled'] : null,
          scaleEnabled: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scaleEnabled'] : null,
          transformationController: _36c2.maybeUnBoxAndBuildArgument<_bb3c.TransformationController?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transformationController'] : null, parentState: hydroState),
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState))
    ];
  });
  table['interactiveViewerGetNearestPointOnLine'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_db98.Vector3>(
          object: _bb3c.InteractiveViewer.getNearestPointOnLine(
              _36c2.maybeUnBoxAndBuildArgument<_db98.Vector3, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_db98.Vector3, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_db98.Vector3, _fac9.dynamic>(
                  luaCallerArguments[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['interactiveViewerGetAxisAlignedBoundingBox'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_db98.Quad>(
          object: _bb3c.InteractiveViewer.getAxisAlignedBoundingBox(
              _36c2.maybeUnBoxAndBuildArgument<_db98.Quad, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['interactiveViewerPointIsInside'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _bb3c.InteractiveViewer.pointIsInside(
          _36c2.maybeUnBoxAndBuildArgument<_db98.Vector3, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_db98.Quad, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState)),
    ];
  });
  table['interactiveViewerGetNearestPointInside'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_db98.Vector3>(
          object: _bb3c.InteractiveViewer.getNearestPointInside(
              _36c2.maybeUnBoxAndBuildArgument<_db98.Vector3, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_db98.Quad, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_bb3c.InteractiveViewer>(boxer: (
      {required _bb3c.InteractiveViewer vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedInteractiveViewer(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
