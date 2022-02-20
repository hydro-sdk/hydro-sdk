import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/painting/inline_span.dart' as _b761;
import 'package:flutter/src/painting/strut_style.dart' as _ced4;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/services/text_editing.dart' as _7986;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextPainter extends _36c2.VMManagedBox<_fe5a.TextPainter> {
  VMManagedTextPainter(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['markNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.markNeedsLayout();
      return [];
    });
    table['getText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.text;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b761.InlineSpan?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.text =
          (_36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTextAlign'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _a643.TextAlign.values.indexWhere((x) {
          return x == vmObject.textAlign;
        }),
      ];
    });
    table['setTextAlign'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textAlign = (_36c2.maybeUnBoxEnum(
          values: _a643.TextAlign.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.textDirection;
      if (returnValue != null) {
        return [
          _a643.TextDirection.values.indexWhere((x) {
            return x == returnValue;
          }),
        ];
      }
      return [];
    });
    table['setTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textDirection = (_36c2.maybeUnBoxEnum(
          values: _a643.TextDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getTextScaleFactor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.textScaleFactor,
      ];
    });
    table['setTextScaleFactor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textScaleFactor = (luaCallerArguments[1]?.toDouble());
      return [];
    });
    table['getEllipsis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.ellipsis;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setEllipsis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.ellipsis = (luaCallerArguments[1]);
      return [];
    });
    table['getLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.locale;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.Locale?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.locale =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getMaxLines'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.maxLines;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['setMaxLines'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.maxLines = (luaCallerArguments[1]);
      return [];
    });
    table['getStrutStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.strutStyle;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_ced4.StrutStyle?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setStrutStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.strutStyle =
          (_36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['getTextWidthBasis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _fe5a.TextWidthBasis.values.indexWhere((x) {
          return x == vmObject.textWidthBasis;
        }),
      ];
    });
    table['setTextWidthBasis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textWidthBasis = (_36c2.maybeUnBoxEnum(
          values: _fe5a.TextWidthBasis.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['getTextHeightBehavior'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.textHeightBehavior;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_a643.TextHeightBehavior?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setTextHeightBehavior'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.textHeightBehavior = (_36c2.maybeUnBoxAndBuildArgument<
          _a643.TextHeightBehavior?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getInlinePlaceholderBoxes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.inlinePlaceholderBoxes;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
              object: returnValue
                  .map((x) => _36c2.maybeBoxObject<_a643.TextBox>(
                      object: x,
                      hydroState: hydroState,
                      table: _36c2.HydroTable()))
                  .toList(),
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getInlinePlaceholderScales'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.inlinePlaceholderScales;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.List<_fac9.double>?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['setPlaceholderDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.setPlaceholderDimensions(_36c2.maybeUnBoxAndBuildArgument<
              _fac9.List<_fe5a.PlaceholderDimensions>?,
              _fe5a.PlaceholderDimensions>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['getPreferredLineHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.preferredLineHeight,
      ];
    });
    table['getMinIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.minIntrinsicWidth,
      ];
    });
    table['getMaxIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.maxIntrinsicWidth,
      ];
    });
    table['getWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.width,
      ];
    });
    table['getHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.height,
      ];
    });
    table['getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Size>(
            object: vmObject.size,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['computeDistanceToActualBaseline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.computeDistanceToActualBaseline(_36c2.maybeUnBoxEnum(
            values: _a643.TextBaseline.values,
            boxedEnum: luaCallerArguments[1])),
      ];
    });
    table['getDidExceedMaxLines'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.didExceedMaxLines,
      ];
    });
    table['layout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.layout(
          maxWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxWidth']
              : null?.toDouble(),
          minWidth: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['minWidth']
              : null?.toDouble());
      return [];
    });
    table['paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['getOffsetAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getOffsetAfter(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getOffsetBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getOffsetBefore(luaCallerArguments[1]);
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getOffsetForCaret'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.Offset>(
            object: vmObject.getOffsetForCaret(
                _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getFullHeightForCaret'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.getFullHeightForCaret(
          _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getBoxesForSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .getBoxesForSelection(
                    _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection, _fac9.dynamic>(luaCallerArguments[1],
                        parentState: hydroState),
                    boxHeightStyle: _36c2.maybeUnBoxEnum(
                        values: _a643.BoxHeightStyle.values,
                        boxedEnum: luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['boxHeightStyle']
                            : null),
                    boxWidthStyle: _36c2.maybeUnBoxEnum(
                        values: _a643.BoxWidthStyle.values,
                        boxedEnum: luaCallerArguments.length >= 3
                            ? luaCallerArguments[2]['boxWidthStyle']
                            : null))
                .map((x) => _36c2.maybeBoxObject<_a643.TextBox>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getPositionForOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextPosition>(
            object: vmObject.getPositionForOffset(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getWordBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextRange>(
            object: vmObject.getWordBoundary(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getLineBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_a643.TextRange>(
            object: vmObject.getLineBoundary(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['computeLineMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .computeLineMetrics()
                .map((x) => _36c2.maybeBoxObject<_a643.LineMetrics>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _fe5a.TextPainter vmObject;
}

class RTManagedTextPainter extends _fe5a.TextPainter
    implements _36c2.Box<_fe5a.TextPainter> {
  RTManagedTextPainter(
      {_fac9.String? ellipsis,
      _a643.Locale? locale,
      _fac9.int? maxLines,
      _ced4.StrutStyle? strutStyle,
      _b761.InlineSpan? text,
      required _a643.TextAlign textAlign,
      _a643.TextDirection? textDirection,
      _a643.TextHeightBehavior? textHeightBehavior,
      required _fac9.double textScaleFactor,
      required _fe5a.TextWidthBasis textWidthBasis,
      required this.table,
      required this.hydroState})
      : super(
            ellipsis: ellipsis,
            locale: locale,
            maxLines: maxLines,
            strutStyle: strutStyle,
            text: text,
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
    table['_dart_markNeedsLayout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.markNeedsLayout();
      return [];
    });
    table['_dart_getText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.text];
    });
    table['_dart_setText'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.text =
          (_36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTextAlign'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textAlign];
    });
    table['_dart_setTextAlign'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textAlign = (_36c2.maybeUnBoxEnum(
          values: _a643.TextAlign.values, boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textDirection];
    });
    table['_dart_setTextDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textDirection = (_36c2.maybeUnBoxEnum(
          values: _a643.TextDirection.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getTextScaleFactor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textScaleFactor];
    });
    table['_dart_setTextScaleFactor'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textScaleFactor =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getEllipsis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.ellipsis];
    });
    table['_dart_setEllipsis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.ellipsis =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.locale];
    });
    table['_dart_setLocale'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.locale =
          (_36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getMaxLines'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maxLines];
    });
    table['_dart_setMaxLines'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.maxLines =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.int?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getStrutStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.strutStyle];
    });
    table['_dart_setStrutStyle'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.strutStyle =
          (_36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_getTextWidthBasis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textWidthBasis];
    });
    table['_dart_setTextWidthBasis'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textWidthBasis = (_36c2.maybeUnBoxEnum(
          values: _fe5a.TextWidthBasis.values,
          boxedEnum: luaCallerArguments[1]));
      return [];
    });
    table['_dart_getTextHeightBehavior'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textHeightBehavior];
    });
    table['_dart_setTextHeightBehavior'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.textHeightBehavior = (_36c2.maybeUnBoxAndBuildArgument<
          _a643.TextHeightBehavior?,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['_dart_getInlinePlaceholderBoxes'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.inlinePlaceholderBoxes];
    });
    table['_dart_getInlinePlaceholderScales'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.inlinePlaceholderScales];
    });
    table['_dart_setPlaceholderDimensions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.setPlaceholderDimensions(_36c2.maybeUnBoxAndBuildArgument<
              _fac9.List<_fe5a.PlaceholderDimensions>?,
              _fe5a.PlaceholderDimensions>(luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_getPreferredLineHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.preferredLineHeight];
    });
    table['_dart_getMinIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.minIntrinsicWidth];
    });
    table['_dart_getMaxIntrinsicWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.maxIntrinsicWidth];
    });
    table['_dart_getWidth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.width];
    });
    table['_dart_getHeight'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.height];
    });
    table['_dart_getSize'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.size];
    });
    table['_dart_computeDistanceToActualBaseline'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.computeDistanceToActualBaseline(_36c2.maybeUnBoxEnum(
                values: _a643.TextBaseline.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getDidExceedMaxLines'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.didExceedMaxLines];
    });
    table['_dart_layout'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.layout(
          maxWidth: _36c2
              .maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['maxWidth']
                      : null,
                  parentState: hydroState),
          minWidth:
              _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['minWidth']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_paint'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.paint(
          _36c2.maybeUnBoxAndBuildArgument<_a643.Canvas, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
              luaCallerArguments[2],
              parentState: hydroState));
      return [];
    });
    table['_dart_getOffsetAfter'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getOffsetAfter(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOffsetBefore'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getOffsetBefore(
                _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getOffsetForCaret'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getOffsetForCaret(
                _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getFullHeightForCaret'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getFullHeightForCaret(
                _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2.maybeUnBoxAndBuildArgument<_a643.Rect, _fac9.dynamic>(
                    luaCallerArguments[2],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getBoxesForSelection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getBoxesForSelection(
                _36c2.maybeUnBoxAndBuildArgument<_7986.TextSelection,
                        _fac9.dynamic>(luaCallerArguments[1],
                    parentState: hydroState),
                boxHeightStyle: _36c2.maybeUnBoxEnum(
                    values: _a643.BoxHeightStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['boxHeightStyle']
                        : null),
                boxWidthStyle: _36c2.maybeUnBoxEnum(
                    values: _a643.BoxWidthStyle.values,
                    boxedEnum: luaCallerArguments.length >= 3
                        ? luaCallerArguments[2]['boxWidthStyle']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getPositionForOffset'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getPositionForOffset(
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
                    luaCallerArguments[1],
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getWordBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getWordBoundary(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLineBoundary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.getLineBoundary(_36c2.maybeUnBoxAndBuildArgument<
                _a643.TextPosition,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_computeLineMetrics'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.computeLineMetrics(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _fe5a.TextPainter unwrap() => this;
  _fe5a.TextPainter get vmObject => this;
  @_fac9.override
  void markNeedsLayout() {
    _36c2.Closure closure = table["markNeedsLayout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b761.InlineSpan? get text {
    _36c2.Closure closure = table["getText"];
    return _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set text(value) {
    _36c2.Closure closure = table["setText"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.TextAlign get textAlign {
    _36c2.Closure closure = table["getTextAlign"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.TextAlign.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void set textAlign(value) {
    _36c2.Closure closure = table["setTextAlign"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.TextDirection? get textDirection {
    _36c2.Closure closure = table["getTextDirection"];
    return _36c2.maybeUnBoxEnum(
        values: _a643.TextDirection.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void set textDirection(value) {
    _36c2.Closure closure = table["setTextDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get textScaleFactor {
    _36c2.Closure closure = table["getTextScaleFactor"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  void set textScaleFactor(value) {
    _36c2.Closure closure = table["setTextScaleFactor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String? get ellipsis {
    _36c2.Closure closure = table["getEllipsis"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set ellipsis(value) {
    _36c2.Closure closure = table["setEllipsis"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Locale? get locale {
    _36c2.Closure closure = table["getLocale"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set locale(value) {
    _36c2.Closure closure = table["setLocale"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? get maxLines {
    _36c2.Closure closure = table["getMaxLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set maxLines(value) {
    _36c2.Closure closure = table["setMaxLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _ced4.StrutStyle? get strutStyle {
    _36c2.Closure closure = table["getStrutStyle"];
    return _36c2.maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void set strutStyle(value) {
    _36c2.Closure closure = table["setStrutStyle"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fe5a.TextWidthBasis get textWidthBasis {
    _36c2.Closure closure = table["getTextWidthBasis"];
    return _36c2.maybeUnBoxEnum(
        values: _fe5a.TextWidthBasis.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  void set textWidthBasis(value) {
    _36c2.Closure closure = table["setTextWidthBasis"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.TextHeightBehavior? get textHeightBehavior {
    _36c2.Closure closure = table["getTextHeightBehavior"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void set textHeightBehavior(value) {
    _36c2.Closure closure = table["setTextHeightBehavior"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_a643.TextBox>? get inlinePlaceholderBoxes {
    _36c2.Closure closure = table["getInlinePlaceholderBoxes"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_a643.TextBox>?, _a643.TextBox>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_fac9.double>? get inlinePlaceholderScales {
    _36c2.Closure closure = table["getInlinePlaceholderScales"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_fac9.double>?, _fac9.double>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  void setPlaceholderDimensions(value) {
    _36c2.Closure closure = table["setPlaceholderDimensions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.double get preferredLineHeight {
    _36c2.Closure closure = table["getPreferredLineHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get minIntrinsicWidth {
    _36c2.Closure closure = table["getMinIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get maxIntrinsicWidth {
    _36c2.Closure closure = table["getMaxIntrinsicWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get width {
    _36c2.Closure closure = table["getWidth"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.double get height {
    _36c2.Closure closure = table["getHeight"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _a643.Size get size {
    _36c2.Closure closure = table["getSize"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Size, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double computeDistanceToActualBaseline(baseline) {
    _36c2.Closure closure = table["computeDistanceToActualBaseline"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.bool get didExceedMaxLines {
    _36c2.Closure closure = table["getDidExceedMaxLines"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void layout(
      {_fac9.double maxWidth = _fac9.double.infinity,
      _fac9.double minWidth = 0.0}) {
    _36c2.Closure closure = table["layout"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void paint(canvas, offset) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? getOffsetAfter(offset) {
    _36c2.Closure closure = table["getOffsetAfter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.int? getOffsetBefore(offset) {
    _36c2.Closure closure = table["getOffsetBefore"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _a643.Offset getOffsetForCaret(position, caretPrototype) {
    _36c2.Closure closure = table["getOffsetForCaret"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.Offset, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.double? getFullHeightForCaret(position, caretPrototype) {
    _36c2.Closure closure = table["getFullHeightForCaret"];
    return closure.dispatch([table], parentState: hydroState)[0]?.toDouble();
  }

  @_fac9.override
  _fac9.List<_a643.TextBox> getBoxesForSelection(selection,
      {_a643.BoxHeightStyle boxHeightStyle = _a643.BoxHeightStyle.tight,
      _a643.BoxWidthStyle boxWidthStyle = _a643.BoxWidthStyle.tight}) {
    _36c2.Closure closure = table["getBoxesForSelection"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_a643.TextBox>, _a643.TextBox>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _a643.TextPosition getPositionForOffset(offset) {
    _36c2.Closure closure = table["getPositionForOffset"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextRange getWordBoundary(position) {
    _36c2.Closure closure = table["getWordBoundary"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _a643.TextRange getLineBoundary(position) {
    _36c2.Closure closure = table["getLineBoundary"];
    return _36c2.maybeUnBoxAndBuildArgument<_a643.TextRange, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_a643.LineMetrics> computeLineMetrics() {
    _36c2.Closure closure = table["computeLineMetrics"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a643.LineMetrics>,
            _a643.LineMetrics>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadTextPainter(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textPainter'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextPainter(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          ellipsis: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['ellipsis']
              : null,
          locale: _36c2
              .maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null,
                  parentState: hydroState),
          maxLines: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['maxLines']
              : null,
          strutStyle: _36c2
              .maybeUnBoxAndBuildArgument<_ced4.StrutStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['strutStyle']
                      : null,
                  parentState: hydroState),
          text: _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(
              luaCallerArguments.length >= 2 ? luaCallerArguments[1]['text'] : null,
              parentState: hydroState),
          textAlign: _36c2.maybeUnBoxEnum(values: _a643.TextAlign.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textAlign'] : null),
          textDirection: _36c2.maybeUnBoxEnum(values: _a643.TextDirection.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textDirection'] : null),
          textHeightBehavior: _36c2.maybeUnBoxAndBuildArgument<_a643.TextHeightBehavior?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textHeightBehavior'] : null, parentState: hydroState),
          textScaleFactor: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textScaleFactor'] : null?.toDouble(),
          textWidthBasis: _36c2.maybeUnBoxEnum(values: _fe5a.TextWidthBasis.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textWidthBasis'] : null))
    ];
  });
  _36c2.registerBoxer<_fe5a.TextPainter>(boxer: (
      {required _fe5a.TextPainter vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextPainter(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
