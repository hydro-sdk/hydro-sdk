import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/rendering/sliver.dart' as _021d;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSliverGeometry extends _36c2.VMManagedBox<_021d.SliverGeometry> {
  VMManagedSliverGeometry(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['scrollExtent'] = vmObject.scrollExtent;
    table['paintOrigin'] = vmObject.paintOrigin;
    table['paintExtent'] = vmObject.paintExtent;
    table['layoutExtent'] = vmObject.layoutExtent;
    table['maxPaintExtent'] = vmObject.maxPaintExtent;
    table['maxScrollObstructionExtent'] = vmObject.maxScrollObstructionExtent;
    table['hitTestExtent'] = vmObject.hitTestExtent;
    table['visible'] = vmObject.visible;
    table['hasVisualOverflow'] = vmObject.hasVisualOverflow;
    table['scrollOffsetCorrection'] = vmObject.scrollOffsetCorrection;
    table['cacheExtent'] = vmObject.cacheExtent;
    table['debugAssertIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedinformationCollector =
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['informationCollector']
              : null;
      return [
        vmObject.debugAssertIsValid(
            informationCollector: unpackedinformationCollector != null
                ? () => _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_eaf3.DiagnosticsNode>,
                        _eaf3.DiagnosticsNode>(
                    unpackedinformationCollector.dispatch(
                      [luaCallerArguments[0]],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState)
                : null),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _021d.SliverGeometry vmObject;
}

class RTManagedSliverGeometry extends _021d.SliverGeometry
    implements _36c2.Box<_021d.SliverGeometry> {
  RTManagedSliverGeometry(
      {_fac9.double? cacheExtent,
      required _fac9.bool hasVisualOverflow,
      _fac9.double? hitTestExtent,
      _fac9.double? layoutExtent,
      required _fac9.double maxPaintExtent,
      required _fac9.double maxScrollObstructionExtent,
      required _fac9.double paintExtent,
      required _fac9.double paintOrigin,
      required _fac9.double scrollExtent,
      _fac9.double? scrollOffsetCorrection,
      _fac9.bool? visible,
      required this.table,
      required this.hydroState})
      : super(
            cacheExtent: cacheExtent,
            hasVisualOverflow: hasVisualOverflow,
            hitTestExtent: hitTestExtent,
            layoutExtent: layoutExtent,
            maxPaintExtent: maxPaintExtent,
            maxScrollObstructionExtent: maxScrollObstructionExtent,
            paintExtent: paintExtent,
            paintOrigin: paintOrigin,
            scrollExtent: scrollExtent,
            scrollOffsetCorrection: scrollOffsetCorrection,
            visible: visible) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['scrollExtent'] = _36c2.maybeBoxObject(
        object: this.scrollExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['paintOrigin'] = _36c2.maybeBoxObject(
        object: this.paintOrigin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['paintExtent'] = _36c2.maybeBoxObject(
        object: this.paintExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['layoutExtent'] = _36c2.maybeBoxObject(
        object: this.layoutExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxPaintExtent'] = _36c2.maybeBoxObject(
        object: this.maxPaintExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxScrollObstructionExtent'] = _36c2.maybeBoxObject(
        object: this.maxScrollObstructionExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hitTestExtent'] = _36c2.maybeBoxObject(
        object: this.hitTestExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visible'] = _36c2.maybeBoxObject(
        object: this.visible,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['hasVisualOverflow'] = _36c2.maybeBoxObject(
        object: this.hasVisualOverflow,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollOffsetCorrection'] = _36c2.maybeBoxObject(
        object: this.scrollOffsetCorrection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['cacheExtent'] = _36c2.maybeBoxObject(
        object: this.cacheExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_debugAssertIsValid'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedinformationCollector =
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['informationCollector']
              : null;
      return [
        _36c2.maybeBoxObject(
            object: super.debugAssertIsValid(
                informationCollector: unpackedinformationCollector != null
                    ? () => _36c2.maybeUnBoxAndBuildArgument<
                            _fac9.Iterable<_eaf3.DiagnosticsNode>,
                            _eaf3.DiagnosticsNode>(
                        unpackedinformationCollector.dispatch(
                          [luaCallerArguments[0]],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _021d.SliverGeometry unwrap() => this;
  _021d.SliverGeometry get vmObject => this;
  @_fac9.override
  _fac9.bool debugAssertIsValid(
      {_fac9.Iterable<_eaf3.DiagnosticsNode> Function()?
          informationCollector}) {
    _36c2.Closure closure = table["debugAssertIsValid"];
    return closure.dispatch([table], parentState: hydroState)[0];
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
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
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
}

void loadSliverGeometry(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['sliverGeometry'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSliverGeometry(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          cacheExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['cacheExtent']
              : null?.toDouble(),
          hasVisualOverflow: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hasVisualOverflow']
              : null,
          hitTestExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['hitTestExtent']
              : null?.toDouble(),
          layoutExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['layoutExtent']
              : null?.toDouble(),
          maxPaintExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxPaintExtent']
              : null?.toDouble(),
          maxScrollObstructionExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxScrollObstructionExtent']
              : null?.toDouble(),
          paintExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['paintExtent']
              : null?.toDouble(),
          paintOrigin: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['paintOrigin']
              : null?.toDouble(),
          scrollExtent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollExtent']
              : null?.toDouble(),
          scrollOffsetCorrection: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['scrollOffsetCorrection']
              : null?.toDouble(),
          visible: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['visible']
              : null)
    ];
  });
  _36c2.registerBoxer<_021d.SliverGeometry>(boxer: (
      {required _021d.SliverGeometry vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSliverGeometry(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
