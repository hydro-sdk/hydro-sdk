import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/material/button_style.dart' as _9bb8;
import 'package:flutter/src/material/ink_well.dart' as _cd32;
import 'package:flutter/src/material/material_state.dart' as _da12;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/alignment.dart' as _ca85;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedButtonStyle extends _36c2.VMManagedBox<_9bb8.ButtonStyle> {
  VMManagedButtonStyle(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['textStyle'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] =
        _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
            object: vmObject.backgroundColor,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['foregroundColor'] =
        _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
            object: vmObject.foregroundColor,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadowColor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.shadowColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['padding'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.padding,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['minimumSize'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.minimumSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fixedSize'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.fixedSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maximumSize'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.maximumSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.side,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.shape,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject<_da12.MaterialStateProperty?>(
        object: vmObject.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visualDensity'] = _36c2.maybeBoxObject<_9716.VisualDensity?>(
        object: vmObject.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tapTargetSize'] = _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == vmObject.tapTargetSize;
    });
    table['animationDuration'] = _36c2.maybeBoxObject<_fac9.Duration?>(
        object: vmObject.animationDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = vmObject.enableFeedback;
    table['alignment'] = _36c2.maybeBoxObject<_ca85.AlignmentGeometry?>(
        object: vmObject.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashFactory'] =
        _36c2.maybeBoxObject<_cd32.InteractiveInkFeatureFactory?>(
            object: vmObject.splashFactory,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9bb8.ButtonStyle>(
            object: vmObject.copyWith(
                alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['alignment'] : null,
                    parentState: hydroState),
                animationDuration:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['animationDuration']
                            : null,
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fac9.double?>?, _fac9.double?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null, parentState: hydroState),
                enableFeedback: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null,
                fixedSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fixedSize'] : null, parentState: hydroState),
                foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
                maximumSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maximumSize'] : null, parentState: hydroState),
                minimumSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minimumSize'] : null, parentState: hydroState),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fd33.MouseCursor?>?, _fd33.MouseCursor?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_96d1.EdgeInsetsGeometry?>?, _96d1.EdgeInsetsGeometry?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_6be9.OutlinedBorder?>?, _6be9.OutlinedBorder?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                side: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_6be9.BorderSide?>?, _6be9.BorderSide?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
                splashFactory: _36c2.maybeUnBoxAndBuildArgument<_cd32.InteractiveInkFeatureFactory?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashFactory'] : null, parentState: hydroState),
                tapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tapTargetSize'] : null),
                textStyle: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_74d0.TextStyle?>?, _74d0.TextStyle?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
                visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9bb8.ButtonStyle>(
            object: vmObject.merge(_36c2.maybeUnBoxAndBuildArgument<
                _9bb8.ButtonStyle?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
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

  final _9bb8.ButtonStyle vmObject;
}

class RTManagedButtonStyle extends _9bb8.ButtonStyle
    implements _36c2.Box<_9bb8.ButtonStyle> {
  RTManagedButtonStyle(
      {_ca85.AlignmentGeometry? alignment,
      _fac9.Duration? animationDuration,
      _da12.MaterialStateProperty<_a643.Color?>? backgroundColor,
      _da12.MaterialStateProperty<_fac9.double?>? elevation,
      _fac9.bool? enableFeedback,
      _da12.MaterialStateProperty<_a643.Size?>? fixedSize,
      _da12.MaterialStateProperty<_a643.Color?>? foregroundColor,
      _da12.MaterialStateProperty<_a643.Size?>? maximumSize,
      _da12.MaterialStateProperty<_a643.Size?>? minimumSize,
      _da12.MaterialStateProperty<_fd33.MouseCursor?>? mouseCursor,
      _da12.MaterialStateProperty<_a643.Color?>? overlayColor,
      _da12.MaterialStateProperty<_96d1.EdgeInsetsGeometry?>? padding,
      _da12.MaterialStateProperty<_a643.Color?>? shadowColor,
      _da12.MaterialStateProperty<_6be9.OutlinedBorder?>? shape,
      _da12.MaterialStateProperty<_6be9.BorderSide?>? side,
      _cd32.InteractiveInkFeatureFactory? splashFactory,
      _9716.MaterialTapTargetSize? tapTargetSize,
      _da12.MaterialStateProperty<_74d0.TextStyle?>? textStyle,
      _9716.VisualDensity? visualDensity,
      required this.table,
      required this.hydroState})
      : super(
            alignment: alignment,
            animationDuration: animationDuration,
            backgroundColor: backgroundColor,
            elevation: elevation,
            enableFeedback: enableFeedback,
            fixedSize: fixedSize,
            foregroundColor: foregroundColor,
            maximumSize: maximumSize,
            minimumSize: minimumSize,
            mouseCursor: mouseCursor,
            overlayColor: overlayColor,
            padding: padding,
            shadowColor: shadowColor,
            shape: shape,
            side: side,
            splashFactory: splashFactory,
            tapTargetSize: tapTargetSize,
            textStyle: textStyle,
            visualDensity: visualDensity) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['textStyle'] = _36c2.maybeBoxObject(
        object: this.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backgroundColor'] = _36c2.maybeBoxObject(
        object: this.backgroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['foregroundColor'] = _36c2.maybeBoxObject(
        object: this.foregroundColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overlayColor'] = _36c2.maybeBoxObject(
        object: this.overlayColor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shadowColor'] = _36c2.maybeBoxObject(
        object: this.shadowColor,
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
    table['minimumSize'] = _36c2.maybeBoxObject(
        object: this.minimumSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['fixedSize'] = _36c2.maybeBoxObject(
        object: this.fixedSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maximumSize'] = _36c2.maybeBoxObject(
        object: this.maximumSize,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['side'] = _36c2.maybeBoxObject(
        object: this.side, hydroState: hydroState, table: _36c2.HydroTable());
    table['shape'] = _36c2.maybeBoxObject(
        object: this.shape, hydroState: hydroState, table: _36c2.HydroTable());
    table['mouseCursor'] = _36c2.maybeBoxObject(
        object: this.mouseCursor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['visualDensity'] = _36c2.maybeBoxObject(
        object: this.visualDensity,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tapTargetSize'] = _9716.MaterialTapTargetSize.values.indexWhere((x) {
      return x == this.tapTargetSize;
    });
    table['animationDuration'] = _36c2.maybeBoxObject(
        object: this.animationDuration,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['enableFeedback'] = _36c2.maybeBoxObject(
        object: this.enableFeedback,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['alignment'] = _36c2.maybeBoxObject(
        object: this.alignment,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['splashFactory'] = _36c2.maybeBoxObject(
        object: this.splashFactory,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['alignment'] : null,
                    parentState: hydroState),
                animationDuration:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['animationDuration']
                            : null,
                        parentState: hydroState),
                backgroundColor:
                    _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
                        luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
                        parentState: hydroState),
                elevation: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fac9.double?>?, _fac9.double?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null, parentState: hydroState),
                enableFeedback: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null, parentState: hydroState),
                fixedSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fixedSize'] : null, parentState: hydroState),
                foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
                maximumSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maximumSize'] : null, parentState: hydroState),
                minimumSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minimumSize'] : null, parentState: hydroState),
                mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fd33.MouseCursor?>?, _fd33.MouseCursor?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
                overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
                padding: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_96d1.EdgeInsetsGeometry?>?, _96d1.EdgeInsetsGeometry?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
                shadowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
                shape: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_6be9.OutlinedBorder?>?, _6be9.OutlinedBorder?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
                side: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_6be9.BorderSide?>?, _6be9.BorderSide?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
                splashFactory: _36c2.maybeUnBoxAndBuildArgument<_cd32.InteractiveInkFeatureFactory?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashFactory'] : null, parentState: hydroState),
                tapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tapTargetSize'] : null),
                textStyle: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_74d0.TextStyle?>?, _74d0.TextStyle?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
                visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_merge'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.merge(_36c2.maybeUnBoxAndBuildArgument<
                _9bb8.ButtonStyle?,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
    table['_dart_debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
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

  _9bb8.ButtonStyle unwrap() => this;
  _9bb8.ButtonStyle get vmObject => this;
  @_fac9.override
  _9bb8.ButtonStyle copyWith(
      {_ca85.AlignmentGeometry? alignment,
      _fac9.Duration? animationDuration,
      _da12.MaterialStateProperty? backgroundColor,
      _da12.MaterialStateProperty? elevation,
      _fac9.bool? enableFeedback,
      _da12.MaterialStateProperty? fixedSize,
      _da12.MaterialStateProperty? foregroundColor,
      _da12.MaterialStateProperty? maximumSize,
      _da12.MaterialStateProperty? minimumSize,
      _da12.MaterialStateProperty? mouseCursor,
      _da12.MaterialStateProperty? overlayColor,
      _da12.MaterialStateProperty? padding,
      _da12.MaterialStateProperty? shadowColor,
      _da12.MaterialStateProperty? shape,
      _da12.MaterialStateProperty? side,
      _cd32.InteractiveInkFeatureFactory? splashFactory,
      _9716.MaterialTapTargetSize? tapTargetSize,
      _da12.MaterialStateProperty? textStyle,
      _9716.VisualDensity? visualDensity}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2.maybeUnBoxAndBuildArgument<_9bb8.ButtonStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _9bb8.ButtonStyle merge(style) {
    _36c2.Closure closure = table["merge"];
    return _36c2.maybeUnBoxAndBuildArgument<_9bb8.ButtonStyle, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
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

void loadButtonStyle(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['buttonStyle'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedButtonStyle(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          alignment: _36c2.maybeUnBoxAndBuildArgument<_ca85.AlignmentGeometry?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['alignment']
                  : null,
              parentState: hydroState),
          animationDuration:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.Duration?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['animationDuration']
                      : null,
                  parentState: hydroState),
          backgroundColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['backgroundColor'] : null,
              parentState: hydroState),
          elevation: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fac9.double?>?, _fac9.double?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null, parentState: hydroState),
          enableFeedback: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['enableFeedback'] : null,
          fixedSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['fixedSize'] : null, parentState: hydroState),
          foregroundColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['foregroundColor'] : null, parentState: hydroState),
          maximumSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maximumSize'] : null, parentState: hydroState),
          minimumSize: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Size?>?, _a643.Size?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minimumSize'] : null, parentState: hydroState),
          mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_fd33.MouseCursor?>?, _fd33.MouseCursor?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['mouseCursor'] : null, parentState: hydroState),
          overlayColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['overlayColor'] : null, parentState: hydroState),
          padding: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_96d1.EdgeInsetsGeometry?>?, _96d1.EdgeInsetsGeometry?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['padding'] : null, parentState: hydroState),
          shadowColor: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_a643.Color?>?, _a643.Color?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shadowColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_6be9.OutlinedBorder?>?, _6be9.OutlinedBorder?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          side: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_6be9.BorderSide?>?, _6be9.BorderSide?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['side'] : null, parentState: hydroState),
          splashFactory: _36c2.maybeUnBoxAndBuildArgument<_cd32.InteractiveInkFeatureFactory?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['splashFactory'] : null, parentState: hydroState),
          tapTargetSize: _36c2.maybeUnBoxEnum(values: _9716.MaterialTapTargetSize.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tapTargetSize'] : null),
          textStyle: _36c2.maybeUnBoxAndBuildArgument<_da12.MaterialStateProperty<_74d0.TextStyle?>?, _74d0.TextStyle?>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
          visualDensity: _36c2.maybeUnBoxAndBuildArgument<_9716.VisualDensity?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['visualDensity'] : null, parentState: hydroState))
    ];
  });
  table['buttonStyleLerp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    final returnValue = _9bb8.ButtonStyle.lerp(
        _36c2.maybeUnBoxAndBuildArgument<_9bb8.ButtonStyle?, _fac9.dynamic>(
            luaCallerArguments[1],
            parentState: hydroState),
        _36c2.maybeUnBoxAndBuildArgument<_9bb8.ButtonStyle?, _fac9.dynamic>(
            luaCallerArguments[2],
            parentState: hydroState),
        luaCallerArguments[3]?.toDouble());
    if (returnValue != null) {
      return [
        _36c2.maybeBoxObject<_9bb8.ButtonStyle?>(
            object: returnValue,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    }
    return [];
  });
  _36c2.registerBoxer<_9bb8.ButtonStyle>(boxer: (
      {required _9bb8.ButtonStyle vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedButtonStyle(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
