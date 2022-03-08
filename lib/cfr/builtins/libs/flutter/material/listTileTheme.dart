import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/material/list_tile.dart' as _fe2b;
import 'package:flutter/src/painting/borders.dart' as _6be9;
import 'package:flutter/src/painting/edge_insets.dart' as _96d1;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/inherited_theme.dart' as _ac47;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedListTileTheme extends _36c2.VMManagedBox<_fe2b.ListTileTheme> {
  VMManagedListTileTheme(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['child'] = _36c2.maybeBoxObject<_e2dc.Widget>(
        object: vmObject.child,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['getData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fe2b.ListTileThemeData>(
            object: vmObject.data,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getDense'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.dense;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.shape;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_6be9.ShapeBorder?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.style;
      if (returnValue != null) {
        return [
          _fe2b.ListTileStyle.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['getSelectedColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.selectedColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getIconColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.iconColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getTextColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.textColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getContentPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.contentPadding;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_96d1.EdgeInsetsGeometry?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getTileColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.tileColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getSelectedTileColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.selectedTileColor;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Color?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getHorizontalTitleGap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.horizontalTitleGap;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getMinVerticalPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.minVerticalPadding;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getMinLeadingWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.minLeadingWidth;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getEnableFeedback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.enableFeedback;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['wrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.wrap(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['updateShouldNotify'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.updateShouldNotify(_36c2.maybeUnBoxAndBuildArgument<
            _fe2b.ListTileTheme,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.InheritedElement>(
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

  final _fe2b.ListTileTheme vmObject;
}

class RTManagedListTileTheme extends _fe2b.ListTileTheme
    implements _36c2.Box<_fe2b.ListTileTheme> {
  RTManagedListTileTheme(
      {_96d1.EdgeInsetsGeometry? contentPadding,
      _fe2b.ListTileThemeData? data,
      _fac9.bool? dense,
      _fac9.bool? enableFeedback,
      _fac9.double? horizontalTitleGap,
      _a643.Color? iconColor,
      _ab4a.Key? key,
      _fac9.double? minLeadingWidth,
      _fac9.double? minVerticalPadding,
      _a643.Color? selectedColor,
      _a643.Color? selectedTileColor,
      _6be9.ShapeBorder? shape,
      _fe2b.ListTileStyle? style,
      _a643.Color? textColor,
      _a643.Color? tileColor,
      required _e2dc.Widget child,
      required this.table,
      required this.hydroState})
      : super(
            contentPadding: contentPadding,
            data: data,
            dense: dense,
            enableFeedback: enableFeedback,
            horizontalTitleGap: horizontalTitleGap,
            iconColor: iconColor,
            key: key,
            minLeadingWidth: minLeadingWidth,
            minVerticalPadding: minVerticalPadding,
            selectedColor: selectedColor,
            selectedTileColor: selectedTileColor,
            shape: shape,
            style: style,
            textColor: textColor,
            tileColor: tileColor,
            child: child) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['child'] = _36c2.maybeBoxObject(
        object: this.child, hydroState: hydroState, table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_getData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.data];
    });
    table['_dart_getDense'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.dense];
    });
    table['_dart_getShape'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.shape];
    });
    table['_dart_getStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.style];
    });
    table['_dart_getSelectedColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectedColor];
    });
    table['_dart_getIconColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.iconColor];
    });
    table['_dart_getTextColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textColor];
    });
    table['_dart_getContentPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.contentPadding];
    });
    table['_dart_getTileColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.tileColor];
    });
    table['_dart_getSelectedTileColor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.selectedTileColor];
    });
    table['_dart_getHorizontalTitleGap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.horizontalTitleGap];
    });
    table['_dart_getMinVerticalPadding'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minVerticalPadding];
    });
    table['_dart_getMinLeadingWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minLeadingWidth];
    });
    table['_dart_getEnableFeedback'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.enableFeedback];
    });
    table['_dart_wrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.wrap(
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_updateShouldNotify'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.updateShouldNotify(_36c2.maybeUnBoxAndBuildArgument<
                _fe2b.ListTileTheme,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  _fe2b.ListTileTheme unwrap() => this;
  _fe2b.ListTileTheme get vmObject => this;
  @_fac9.override
  _fe2b.ListTileThemeData get data {
    _36c2.Closure closure = table["getData"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool? get dense {
    _36c2.Closure closure = table["getDense"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _6be9.ShapeBorder? get shape {
    _36c2.Closure closure = table["getShape"];
    return _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fe2b.ListTileStyle? get style {
    _36c2.Closure closure = table["getStyle"];
    return _36c2.maybeUnBoxEnum(
        values: _fe2b.ListTileStyle.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _a643.Color? get selectedColor {
    _36c2.Closure closure = table["getSelectedColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get iconColor {
    _36c2.Closure closure = table["getIconColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get textColor {
    _36c2.Closure closure = table["getTextColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _96d1.EdgeInsetsGeometry? get contentPadding {
    _36c2.Closure closure = table["getContentPadding"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get tileColor {
    _36c2.Closure closure = table["getTileColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.Color? get selectedTileColor {
    _36c2.Closure closure = table["getSelectedTileColor"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double? get horizontalTitleGap {
    _36c2.Closure closure = table["getHorizontalTitleGap"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get minVerticalPadding {
    _36c2.Closure closure = table["getMinVerticalPadding"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double? get minLeadingWidth {
    _36c2.Closure closure = table["getMinLeadingWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool? get enableFeedback {
    _36c2.Closure closure = table["getEnableFeedback"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.Widget wrap(context, child) {
    _36c2.Closure closure = table["wrap"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool updateShouldNotify(oldWidget) {
    _36c2.Closure closure = table["updateShouldNotify"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.InheritedElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.InheritedElement, _fac9.dynamic>(
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

void loadListTileTheme(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['listTileTheme'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedListTileTheme(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          contentPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['contentPadding']
                  : null,
              parentState: hydroState),
          data: _36c2.maybeUnBoxAndBuildArgument<_fe2b.ListTileThemeData?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['data'] : null,
              parentState: hydroState),
          dense: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['dense']
              : null,
          enableFeedback: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['enableFeedback']
              : null,
          horizontalTitleGap: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['horizontalTitleGap']
              : null?.toDouble(),
          iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null,
              parentState: hydroState),
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          minLeadingWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLeadingWidth'] : null?.toDouble(),
          minVerticalPadding: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minVerticalPadding'] : null?.toDouble(),
          selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
          selectedTileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedTileColor'] : null, parentState: hydroState),
          shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
          style: _36c2.maybeUnBoxEnum(values: _fe2b.ListTileStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null),
          textColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textColor'] : null, parentState: hydroState),
          tileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tileColor'] : null, parentState: hydroState),
          child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState))
    ];
  });
  table['listTileThemeOf'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_fe2b.ListTileThemeData>(
          object: _fe2b.ListTileTheme.of(_36c2.maybeUnBoxAndBuildArgument<
              _e2dc.BuildContext,
              _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['listTileThemeMerge'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_e2dc.Widget>(
          object: _fe2b.ListTileTheme.merge(
              contentPadding: _36c2.maybeUnBoxAndBuildArgument<_96d1.EdgeInsetsGeometry?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['contentPadding']
                      : null,
                  parentState: hydroState),
              dense: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['dense']
                  : null,
              enableFeedback: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['enableFeedback']
                  : null,
              horizontalTitleGap: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['horizontalTitleGap']
                  : null?.toDouble(),
              iconColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['iconColor'] : null,
                  parentState: hydroState),
              key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
              minLeadingWidth: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minLeadingWidth'] : null?.toDouble(),
              minVerticalPadding: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['minVerticalPadding'] : null?.toDouble(),
              selectedColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedColor'] : null, parentState: hydroState),
              selectedTileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['selectedTileColor'] : null, parentState: hydroState),
              shape: _36c2.maybeUnBoxAndBuildArgument<_6be9.ShapeBorder?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shape'] : null, parentState: hydroState),
              style: _36c2.maybeUnBoxEnum(values: _fe2b.ListTileStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['style'] : null),
              textColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textColor'] : null, parentState: hydroState),
              tileColor: _36c2.maybeUnBoxAndBuildArgument<_a643.Color?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['tileColor'] : null, parentState: hydroState),
              child: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['child'] : null, parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_fe2b.ListTileTheme>(boxer: (
      {required _fe2b.ListTileTheme vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedListTileTheme(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
