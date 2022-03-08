import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/inline_span.dart' as _b761;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/text.dart' as _0eb7;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedText extends _36c2.VMManagedBox<_0eb7.Text> {
  VMManagedText(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['data'] = vmObject.data;
    table['textSpan'] = _36c2.maybeBoxObject<_b761.InlineSpan?>(
        object: vmObject.textSpan,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['style'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.style,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['strutStyle'] = _36c2.maybeBoxObject<_ced4.StrutStyle?>(
        object: vmObject.strutStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textAlign'] = _a643.TextAlign.values.indexWhere((x) {
      return x == vmObject.textAlign;
    });
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == vmObject.textDirection;
    });
    table['locale'] = _36c2.maybeBoxObject<_a643.Locale?>(
        object: vmObject.locale,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['softWrap'] = vmObject.softWrap;
    table['overflow'] = _fe5a.TextOverflow.values.indexWhere((x) {
      return x == vmObject.overflow;
    });
    table['textScaleFactor'] = vmObject.textScaleFactor;
    table['maxLines'] = vmObject.maxLines;
    table['semanticsLabel'] = vmObject.semanticsLabel;
    table['textWidthBasis'] = _fe5a.TextWidthBasis.values.indexWhere((x) {
      return x == vmObject.textWidthBasis;
    });
    table['textHeightBehavior'] =
        _36c2.maybeBoxObject<_a643.TextHeightBehavior?>(
            object: vmObject.textHeightBehavior,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatelessElement>(
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

  final _0eb7.Text vmObject;
}

class RTManagedText extends _0eb7.Text implements _36c2.Box<_0eb7.Text> {
  RTManagedText(_fac9.String data$,
      {_ab4a.Key? key,
      _a643.Locale? locale,
      _fac9.int? maxLines,
      _fe5a.TextOverflow? overflow,
      _fac9.String? semanticsLabel,
      _fac9.bool? softWrap,
      _ced4.StrutStyle? strutStyle,
      _74d0.TextStyle? style,
      _a643.TextAlign? textAlign,
      _a643.TextDirection? textDirection,
      _a643.TextHeightBehavior? textHeightBehavior,
      _fac9.double? textScaleFactor,
      _fe5a.TextWidthBasis? textWidthBasis,
      required this.table,
      required this.hydroState})
      : super(data$,
            key: key,
            locale: locale,
            maxLines: maxLines,
            overflow: overflow,
            semanticsLabel: semanticsLabel,
            softWrap: softWrap,
            strutStyle: strutStyle,
            style: style,
            textAlign: textAlign,
            textDirection: textDirection,
            textHeightBehavior: textHeightBehavior,
            textScaleFactor: textScaleFactor,
            textWidthBasis: textWidthBasis) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['data'] = _36c2.maybeBoxObject(
        object: this.data, hydroState: hydroState, table: _36c2.HydroTable());
    table['textSpan'] = _36c2.maybeBoxObject(
        object: textSpan, hydroState: hydroState, table: _36c2.HydroTable());
    table['style'] = _36c2.maybeBoxObject(
        object: this.style, hydroState: hydroState, table: _36c2.HydroTable());
    table['strutStyle'] = _36c2.maybeBoxObject(
        object: this.strutStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textAlign'] = _a643.TextAlign.values.indexWhere((x) {
      return x == this.textAlign;
    });
    table['textDirection'] = _a643.TextDirection.values.indexWhere((x) {
      return x == this.textDirection;
    });
    table['locale'] = _36c2.maybeBoxObject(
        object: this.locale, hydroState: hydroState, table: _36c2.HydroTable());
    table['softWrap'] = _36c2.maybeBoxObject(
        object: this.softWrap,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['overflow'] = _fe5a.TextOverflow.values.indexWhere((x) {
      return x == this.overflow;
    });
    table['textScaleFactor'] = _36c2.maybeBoxObject(
        object: this.textScaleFactor,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['maxLines'] = _36c2.maybeBoxObject(
        object: this.maxLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['semanticsLabel'] = _36c2.maybeBoxObject(
        object: this.semanticsLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textWidthBasis'] = _fe5a.TextWidthBasis.values.indexWhere((x) {
      return x == this.textWidthBasis;
    });
    table['textHeightBehavior'] = _36c2.maybeBoxObject(
        object: this.textHeightBehavior,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_build'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.build(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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

  _0eb7.Text unwrap() => this;
  _0eb7.Text get vmObject => this;
  @_fac9.override
  _e2dc.Widget build(context) {
    _36c2.Closure closure = table["build"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _e2dc.StatelessElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatelessElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
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

void loadText(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['text'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedText(luaCallerArguments[1],
          table: luaCallerArguments[0],
          hydroState: hydroState,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['key']
                  : null,
              parentState: hydroState),
          locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['locale']
                  : null,
              parentState: hydroState),
          maxLines: luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['maxLines']
              : null,
          overflow: _36c2.maybeUnBoxEnum(
              values: _fe5a.TextOverflow.values,
              boxedEnum:
                  luaCallerArguments.length >= 3 ? luaCallerArguments[2]['overflow'] : null),
          semanticsLabel: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['semanticsLabel'] : null,
          softWrap: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['softWrap'] : null,
          strutStyle: _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['strutStyle'] : null, parentState: hydroState),
          style: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['style'] : null, parentState: hydroState),
          textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textAlign'] : null),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textDirection'] : null),
          textHeightBehavior: _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textHeightBehavior'] : null, parentState: hydroState),
          textScaleFactor: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textScaleFactor'] : null?.toDouble(),
          textWidthBasis: _36c2.maybeUnBoxEnum(values: _fe5a.TextWidthBasis.values, boxedEnum: luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textWidthBasis'] : null))
    ];
  });
  _36c2.registerBoxer<_0eb7.Text>(boxer: (
      {required _0eb7.Text vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedText(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
