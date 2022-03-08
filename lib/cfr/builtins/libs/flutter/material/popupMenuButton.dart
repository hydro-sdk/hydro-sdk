import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/popup_menu.dart' as _2891;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedPopupMenuButton
    extends _36c2.VMManagedBox<_2891.PopupMenuButton<_fac9.dynamic>> {
  VMManagedPopupMenuButton(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['tooltip'] = vmObject.tooltip;
    table['elevation'] = vmObject.elevation;
    table['padding'] = _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['icon'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.icon,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['offset'] = _36c2.maybeBoxObject<_a643.Offset>(
        object: vmObject.offset,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enabled'] = vmObject.enabled;
    table['shape'] = _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject<_a643.Color?>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = vmObject.enableFeedback;
    table['iconSize'] = vmObject.iconSize;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_2891.PopupMenuButtonState>(
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

  final _2891.PopupMenuButton<_fac9.dynamic> vmObject;
}

class RTManagedPopupMenuButton extends _2891.PopupMenuButton
    implements _36c2.Box<_2891.PopupMenuButton> {
  RTManagedPopupMenuButton(
      {_e2dc.Widget? child,
      _a643.Color? color,
      _fac9.double? elevation,
      _fac9.bool? enableFeedback,
      required _fac9.bool enabled,
      _e2dc.Widget? icon,
      _fac9.double? iconSize,
      _fac9.dynamic? initialValue,
      _ab4a.Key? key,
      required _a643.Offset offset,
      void Function()? onCanceled,
      void Function(_fac9.dynamic value)? onSelected,
      required _96d1.EdgeInsetsGeometry padding,
      _6be9.ShapeBorder? shape,
      _fac9.String? tooltip,
      required _fac9.List<_2891.PopupMenuEntry<_fac9.dynamic>> Function(
              _e2dc.BuildContext context)
          itemBuilder,
      required this.table,
      required this.hydroState})
      : super(
            child: child,
            color: color,
            elevation: elevation,
            enableFeedback: enableFeedback,
            enabled: enabled,
            icon: icon,
            iconSize: iconSize,
            initialValue: initialValue,
            key: key,
            offset: offset,
            onCanceled: onCanceled,
            onSelected: onSelected,
            padding: padding,
            shape: shape,
            tooltip: tooltip,
            itemBuilder: itemBuilder) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['tooltip'] = _36c2.maybeBoxObject(
        object: this.tooltip,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject(
        object: this.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['icon'] = _36c2.maybeBoxObject(
        object: this.icon, hydroState: hydroState, table: _36c2.HydroTable());
    table['offset'] = _36c2.maybeBoxObject(
        object: this.offset, hydroState: hydroState, table: _36c2.HydroTable());
    table['enabled'] = _36c2.maybeBoxObject(
        object: this.enabled,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['iconSize'] = _36c2.maybeBoxObject(
        object: this.iconSize,
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

  _2891.PopupMenuButton unwrap() => this;
  _2891.PopupMenuButton get vmObject => this;
  @_fac9.override
  _2891.PopupMenuButtonState<_fac9.dynamic> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _2891.PopupMenuButtonState<_fac9.dynamic>, _fac9.dynamic>(
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

void loadPopupMenuButton(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['popupMenuButton'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedonCanceled = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onCanceled']
        : null;
    _36c2.Closure? unpackedonSelected = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onSelected']
        : null;

    _36c2.Closure unpackeditemBuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['itemBuilder']
        : null;
    return [
      RTManagedPopupMenuButton(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['child']
                  : null,
              parentState: hydroState),
          color: _36c2
              .maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null,
                  parentState: hydroState),
          elevation: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['elevation']
              : null?.toDouble(),
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          enabled: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enabled']
              : null,
          icon: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['icon'] : null,
              parentState: hydroState),
          iconSize: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconSize'] : null?.toDouble(),
          initialValue: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['initialValue'] : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          offset: _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['offset'] : null, parentState: hydroState),
          onCanceled: unpackedonCanceled != null
              ? () => unpackedonCanceled.dispatch(
                    [
                      luaCallerArguments[0],
                    ],
                    parentState: hydroState,
                  )
              : null,
          onSelected: unpackedonSelected != null
              ? (value) => unpackedonSelected.dispatch(
                    [luaCallerArguments[0], value],
                    parentState: hydroState,
                  )
              : null,
          padding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          tooltip: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tooltip'] : null,
          itemBuilder: (context) => _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_2891.PopupMenuEntry<_fac9.dynamic>>, _2891.PopupMenuEntry<_fac9.dynamic>>(
              unpackeditemBuilder.dispatch(
                [luaCallerArguments[0], context],
                parentState: hydroState,
              )[0],
              parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_2891.PopupMenuButton>(boxer: (
      {required _2891.PopupMenuButton vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedPopupMenuButton(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
