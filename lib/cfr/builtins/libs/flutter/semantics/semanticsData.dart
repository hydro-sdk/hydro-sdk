import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/semantics/semantics.dart' as _4c98;
import 'package:flutter/src/services/text_editing.dart' as _7986;

import 'package:vector_math/vector_math_64.dart' as _db98;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSemanticsData extends _36c2.VMManagedBox<_4c98.SemanticsData> {
  VMManagedSemanticsData(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['flags'] = vmObject.flags;
    table['actions'] = vmObject.actions;
    table['attributedLabel'] = _36c2.maybeBoxObject<_4c98.AttributedString>(
        object: vmObject.attributedLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedValue'] = _36c2.maybeBoxObject<_4c98.AttributedString>(
        object: vmObject.attributedValue,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedIncreasedValue'] =
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedIncreasedValue,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['attributedDecreasedValue'] =
        _36c2.maybeBoxObject<_4c98.AttributedString>(
            object: vmObject.attributedDecreasedValue,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['attributedHint'] = _36c2.maybeBoxObject<_4c98.AttributedString>(
        object: vmObject.attributedHint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['textSelection'] = _36c2.maybeBoxObject<_7986.TextSelection?>(
        object: vmObject.textSelection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollChildCount'] = vmObject.scrollChildCount;
    table['scrollIndex'] = vmObject.scrollIndex;
    table['scrollPosition'] = vmObject.scrollPosition;
    table['scrollExtentMax'] = vmObject.scrollExtentMax;
    table['scrollExtentMin'] = vmObject.scrollExtentMin;
    table['platformViewId'] = vmObject.platformViewId;
    table['maxValueLength'] = vmObject.maxValueLength;
    table['currentValueLength'] = vmObject.currentValueLength;
    table['rect'] = _36c2.maybeBoxObject<_a643.Rect>(
        object: vmObject.rect,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['tags'] = _36c2.maybeBoxObject<_fac9.Set?>(
        object: vmObject.tags,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['transform'] = _36c2.maybeBoxObject<_db98.Matrix4?>(
        object: vmObject.transform,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = vmObject.elevation;
    table['thickness'] = vmObject.thickness;
    table['customSemanticsActionIds'] =
        _36c2.maybeBoxObject<_fac9.List<_fac9.int>?>(
            object: vmObject.customSemanticsActionIds,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['getLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.label,
      ];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.value,
      ];
    });
    table['getIncreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.increasedValue,
      ];
    });
    table['getDecreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.decreasedValue,
      ];
    });
    table['getHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hint,
      ];
    });
    table['hasFlag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasFlag(_36c2.maybeUnBoxAndBuildArgument<_a643.SemanticsFlag,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
      ];
    });
    table['hasAction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hasAction(_36c2.maybeUnBoxAndBuildArgument<
            _a643.SemanticsAction,
            _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  final _4c98.SemanticsData vmObject;
}

class RTManagedSemanticsData extends _4c98.SemanticsData
    implements _36c2.Box<_4c98.SemanticsData> {
  RTManagedSemanticsData(
      {_fac9.List<_fac9.int>? customSemanticsActionIds,
      _fac9.Set<_4c98.SemanticsTag>? tags,
      _db98.Matrix4? transform,
      required _fac9.int actions,
      required _4c98.AttributedString attributedDecreasedValue,
      required _4c98.AttributedString attributedHint,
      required _4c98.AttributedString attributedIncreasedValue,
      required _4c98.AttributedString attributedLabel,
      required _4c98.AttributedString attributedValue,
      _fac9.int? currentValueLength,
      required _fac9.double elevation,
      required _fac9.int flags,
      _fac9.int? maxValueLength,
      _fac9.int? platformViewId,
      required _a643.Rect rect,
      _fac9.int? scrollChildCount,
      _fac9.double? scrollExtentMax,
      _fac9.double? scrollExtentMin,
      _fac9.int? scrollIndex,
      _fac9.double? scrollPosition,
      _a643.TextDirection? textDirection,
      _7986.TextSelection? textSelection,
      required _fac9.double thickness,
      required this.table,
      required this.hydroState})
      : super(
            customSemanticsActionIds: customSemanticsActionIds,
            tags: tags,
            transform: transform,
            actions: actions,
            attributedDecreasedValue: attributedDecreasedValue,
            attributedHint: attributedHint,
            attributedIncreasedValue: attributedIncreasedValue,
            attributedLabel: attributedLabel,
            attributedValue: attributedValue,
            currentValueLength: currentValueLength,
            elevation: elevation,
            flags: flags,
            maxValueLength: maxValueLength,
            platformViewId: platformViewId,
            rect: rect,
            scrollChildCount: scrollChildCount,
            scrollExtentMax: scrollExtentMax,
            scrollExtentMin: scrollExtentMin,
            scrollIndex: scrollIndex,
            scrollPosition: scrollPosition,
            textDirection: textDirection,
            textSelection: textSelection,
            thickness: thickness) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['flags'] = _36c2.maybeBoxObject(
        object: this.flags, hydroState: hydroState, table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject(
        object: this.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedLabel'] = _36c2.maybeBoxObject(
        object: this.attributedLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedValue'] = _36c2.maybeBoxObject(
        object: this.attributedValue,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedIncreasedValue'] = _36c2.maybeBoxObject(
        object: this.attributedIncreasedValue,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedDecreasedValue'] = _36c2.maybeBoxObject(
        object: this.attributedDecreasedValue,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['attributedHint'] = _36c2.maybeBoxObject(
        object: this.attributedHint,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['textSelection'] = _36c2.maybeBoxObject(
        object: this.textSelection,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollChildCount'] = _36c2.maybeBoxObject(
        object: this.scrollChildCount,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollIndex'] = _36c2.maybeBoxObject(
        object: this.scrollIndex,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollPosition'] = _36c2.maybeBoxObject(
        object: this.scrollPosition,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollExtentMax'] = _36c2.maybeBoxObject(
        object: this.scrollExtentMax,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['scrollExtentMin'] = _36c2.maybeBoxObject(
        object: this.scrollExtentMin,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['platformViewId'] = _36c2.maybeBoxObject(
        object: this.platformViewId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxValueLength'] = _36c2.maybeBoxObject(
        object: this.maxValueLength,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['currentValueLength'] = _36c2.maybeBoxObject(
        object: this.currentValueLength,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['rect'] = _36c2.maybeBoxObject(
        object: this.rect, hydroState: hydroState, table: _36c2.HydroTable());
    table['tags'] = _36c2.maybeBoxObject(
        object: this.tags, hydroState: hydroState, table: _36c2.HydroTable());
    table['transform'] = _36c2.maybeBoxObject(
        object: this.transform,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['elevation'] = _36c2.maybeBoxObject(
        object: this.elevation,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['thickness'] = _36c2.maybeBoxObject(
        object: this.thickness,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['customSemanticsActionIds'] = _36c2.maybeBoxObject(
        object: this.customSemanticsActionIds,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['_dart_getLabel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.label];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_getIncreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.increasedValue];
    });
    table['_dart_getDecreasedValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.decreasedValue];
    });
    table['_dart_getHint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.hint];
    });
    table['_dart_hasFlag'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hasFlag(_36c2.maybeUnBoxAndBuildArgument<
                _a643.SemanticsFlag,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_hasAction'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.hasAction(_36c2.maybeUnBoxAndBuildArgument<
                _a643.SemanticsAction,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  _4c98.SemanticsData unwrap() => this;
  _4c98.SemanticsData get vmObject => this;
  @_fac9.override
  _fac9.String get label {
    _36c2.Closure closure = table["getLabel"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get value {
    _36c2.Closure closure = table["getValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get increasedValue {
    _36c2.Closure closure = table["getIncreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get decreasedValue {
    _36c2.Closure closure = table["getDecreasedValue"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String get hint {
    _36c2.Closure closure = table["getHint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hasFlag(flag) {
    _36c2.Closure closure = table["hasFlag"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool hasAction(action) {
    _36c2.Closure closure = table["hasAction"];
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
  _fac9.int get hashCode {
    _36c2.Closure closure = table["getHashCode"];
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

void loadSemanticsData(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['semanticsData'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSemanticsData(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          customSemanticsActionIds:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.int>?, _fac9.int>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['customSemanticsActionIds']
                      : null,
                  parentState: hydroState),
          tags: _36c2.maybeUnBoxAndBuildArgument<_fac9.Set<_4c98.SemanticsTag>?, _4c98.SemanticsTag>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['tags']
                  : null,
              parentState: hydroState),
          transform: _36c2.maybeUnBoxAndBuildArgument<_db98.Matrix4?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['transform'] : null,
              parentState: hydroState),
          actions: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actions'] : null,
          attributedDecreasedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedDecreasedValue'] : null, parentState: hydroState),
          attributedHint: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedHint'] : null, parentState: hydroState),
          attributedIncreasedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedIncreasedValue'] : null, parentState: hydroState),
          attributedLabel: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedLabel'] : null, parentState: hydroState),
          attributedValue: _36c2.maybeUnBoxAndBuildArgument<_4c98.AttributedString, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['attributedValue'] : null, parentState: hydroState),
          currentValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['currentValueLength'] : null,
          elevation: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['elevation'] : null?.toDouble(),
          flags: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['flags'] : null,
          maxValueLength: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['maxValueLength'] : null,
          platformViewId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['platformViewId'] : null,
          rect: _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['rect'] : null, parentState: hydroState),
          scrollChildCount: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollChildCount'] : null,
          scrollExtentMax: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMax'] : null?.toDouble(),
          scrollExtentMin: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollExtentMin'] : null?.toDouble(),
          scrollIndex: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollIndex'] : null,
          scrollPosition: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['scrollPosition'] : null?.toDouble(),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          textSelection: _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textSelection'] : null, parentState: hydroState),
          thickness: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['thickness'] : null?.toDouble())
    ];
  });
  _36c2.registerBoxer<_4c98.SemanticsData>(boxer: (
      {required _4c98.SemanticsData vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSemanticsData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
