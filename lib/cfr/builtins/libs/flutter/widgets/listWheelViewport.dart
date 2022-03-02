import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/rendering/list_wheel_viewport.dart' as _5bcb;
import 'package:flutter/src/rendering/object.dart' as _9742;
import 'package:flutter/src/rendering/viewport_offset.dart' as _f376;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/list_wheel_scroll_view.dart' as _7b25;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListWheelViewport
    extends _36c2.VMManagedBox<_7b25.ListWheelViewport> {
  VMManagedListWheelViewport(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['diameterRatio'] = vmObject.diameterRatio;
    table['perspective'] = vmObject.perspective;
    table['offAxisFraction'] = vmObject.offAxisFraction;
    table['useMagnifier'] = vmObject.useMagnifier;
    table['magnification'] = vmObject.magnification;
    table['overAndUnderCenterOpacity'] = vmObject.overAndUnderCenterOpacity;
    table['itemExtent'] = vmObject.itemExtent;
    table['squeeze'] = vmObject.squeeze;
    table['renderChildrenOutsideViewport'] =
        vmObject.renderChildrenOutsideViewport;
    table['offset'] = _36c2.maybeBoxObject<_f376.ViewportOffset>(
        object: vmObject.offset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['childDelegate'] = _36c2.maybeBoxObject<_7b25.ListWheelChildDelegate>(
        object: vmObject.childDelegate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == vmObject.clipBehavior;
    });
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_7b25.ListWheelElement>(
            object: vmObject.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_5bcb.RenderListWheelViewport>(
            object: vmObject.createRenderObject(_36c2
                .maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['updateRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.updateRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_5bcb.RenderListWheelViewport,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
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

  final _7b25.ListWheelViewport vmObject;
}

class RTManagedListWheelViewport extends _7b25.ListWheelViewport
    implements _36c2.Box<_7b25.ListWheelViewport> {
  RTManagedListWheelViewport(
      {required _a643.Clip clipBehavior,
      required _fac9.double diameterRatio,
      _ab4a.Key? key,
      required _fac9.double magnification,
      required _fac9.double offAxisFraction,
      required _fac9.double overAndUnderCenterOpacity,
      required _fac9.double perspective,
      required _fac9.bool renderChildrenOutsideViewport,
      required _fac9.double squeeze,
      required _fac9.bool useMagnifier,
      required _7b25.ListWheelChildDelegate childDelegate,
      required _fac9.double itemExtent,
      required _f376.ViewportOffset offset,
      required this.table,
      required this.hydroState})
      : super(
            clipBehavior: clipBehavior,
            diameterRatio: diameterRatio,
            key: key,
            magnification: magnification,
            offAxisFraction: offAxisFraction,
            overAndUnderCenterOpacity: overAndUnderCenterOpacity,
            perspective: perspective,
            renderChildrenOutsideViewport: renderChildrenOutsideViewport,
            squeeze: squeeze,
            useMagnifier: useMagnifier,
            childDelegate: childDelegate,
            itemExtent: itemExtent,
            offset: offset) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['diameterRatio'] = _36c2.maybeBoxObject(
        object: this.diameterRatio,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['perspective'] = _36c2.maybeBoxObject(
        object: this.perspective,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['offAxisFraction'] = _36c2.maybeBoxObject(
        object: this.offAxisFraction,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['useMagnifier'] = _36c2.maybeBoxObject(
        object: this.useMagnifier,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['magnification'] = _36c2.maybeBoxObject(
        object: this.magnification,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overAndUnderCenterOpacity'] = _36c2.maybeBoxObject(
        object: this.overAndUnderCenterOpacity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['itemExtent'] = _36c2.maybeBoxObject(
        object: this.itemExtent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['squeeze'] = _36c2.maybeBoxObject(
        object: this.squeeze,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['renderChildrenOutsideViewport'] = _36c2.maybeBoxObject(
        object: this.renderChildrenOutsideViewport,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['offset'] = _36c2.maybeBoxObject(
        object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
    table['childDelegate'] = _36c2.maybeBoxObject(
        object: this.childDelegate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['clipBehavior'] = _a643.Clip.values.indexWhere((x) {
      return x == this.clipBehavior;
    });
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createRenderObject(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_updateRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.updateRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_5bcb.RenderListWheelViewport,
              _fac9.dynamic>(luaCallerArguments[2], parentState: hydroState));
      return [];
    });
    table['_dart_didUnmountRenderObject'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.didUnmountRenderObject(
          _36c2.maybeUnBoxAndBuildArgument<_9742.RenderObject, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
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

  _7b25.ListWheelViewport unwrap() => this;
  _7b25.ListWheelViewport get vmObject => this;
  @_fac9.override
  _7b25.ListWheelElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_7b25.ListWheelElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _5bcb.RenderListWheelViewport createRenderObject(context) {
    _36c2.Closure closure = table["createRenderObject"];
    return _36c2.maybeUnBoxAndBuildArgument<_5bcb.RenderListWheelViewport,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void updateRenderObject(context, renderObject) {
    _36c2.Closure closure = table["updateRenderObject"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void didUnmountRenderObject(renderObject) {
    _36c2.Closure closure = table["didUnmountRenderObject"];
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

void loadListWheelViewport(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['listWheelViewport'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedListWheelViewport(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          clipBehavior: _36c2.maybeUnBoxEnum(
              values: _a643.Clip.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['clipBehavior']
                  : null),
          diameterRatio: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['diameterRatio']
              : null?.toDouble(),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['key']
                  : null,
              parentState: hydroState),
          magnification: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['magnification']
              : null?.toDouble(),
          offAxisFraction: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['offAxisFraction']
              : null?.toDouble(),
          overAndUnderCenterOpacity: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['overAndUnderCenterOpacity']
              : null?.toDouble(),
          perspective: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['perspective']
              : null?.toDouble(),
          renderChildrenOutsideViewport: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['renderChildrenOutsideViewport']
              : null,
          squeeze: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['squeeze']
              : null?.toDouble(),
          useMagnifier: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['useMagnifier']
              : null,
          childDelegate: _36c2
              .maybeUnBoxAndBuildArgument<_7b25.ListWheelChildDelegate, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['childDelegate'] : null,
                  parentState: hydroState),
          itemExtent: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['itemExtent'] : null?.toDouble(),
          offset: _36c2.maybeUnBoxAndBuildArgument<_f376.ViewportOffset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['offset'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_7b25.ListWheelViewport>(boxer: (
      {required _7b25.ListWheelViewport vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedListWheelViewport(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
