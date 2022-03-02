import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/gestures/events.dart' as _0e77;
import 'package:flutter/src/gestures/hit_test.dart' as _baac;
import 'package:flutter/src/gestures/recognizer.dart' as _02d2;
import 'package:flutter/src/painting/basic_types.dart' as _487f;
import 'package:flutter/src/painting/inline_span.dart' as _b761;
import 'package:flutter/src/painting/text_painter.dart' as _fe5a;
import 'package:flutter/src/painting/text_span.dart' as _1584;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/mouse_cursor.dart' as _fd33;
import 'package:flutter/src/services/mouse_tracking.dart' as _23ad;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextSpan extends _36c2.VMManagedBox<_1584.TextSpan> {VMManagedTextSpan({required this.table, required this.vmObject, required this.hydroState}) : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) { table  [
'text'
] = vmObject.text;
table  [
'children'
] = _36c2.maybeBoxObject<_fac9.List<_b761.InlineSpan>?>(object: vmObject.children, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'recognizer'
] = _36c2.maybeBoxObject<_02d2.GestureRecognizer?>(object: vmObject.recognizer, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'mouseCursor'
] = _36c2.maybeBoxObject<_fd33.MouseCursor>(object: vmObject.mouseCursor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticsLabel'
] = vmObject.semanticsLabel;
table  [
'locale'
] = _36c2.maybeBoxObject<_a643.Locale?>(object: vmObject.locale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'spellOut'
] = vmObject.spellOut;
table  [
'style'
] = _36c2.maybeBoxObject<_74d0.TextStyle?>(object: vmObject.style, hydroState: hydroState, table: _36c2.HydroTable());


table  [
'cursor'
] = _36c2.maybeBoxObject<_fd33.MouseCursor>(object: vmObject.cursor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'validForMouseTracker'
] = vmObject.validForMouseTracker;
table  [
'getValidForMouseTracker'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.validForMouseTracker,]; } );
table  [
'handleEvent'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
vmObject.handleEvent(_36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));
return []; } );
table  [
'build'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.build(_36c2.maybeUnBoxAndBuildArgument<_a643.ParagraphBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), dimensions: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fe5a.PlaceholderDimensions>?, _fe5a.PlaceholderDimensions>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'dimensions'
] : null, parentState: hydroState), textScaleFactor: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'textScaleFactor'
] : null?.toDouble());
return []; } );
table  [
'visitChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { _36c2.Closure unpackedvisitor=luaCallerArguments  [
1
];return [vmObject.visitChildren((span) => unpackedvisitor.dispatch([luaCallerArguments[0],span],parentState:hydroState,)[0]),]; } );
table  [
'getSpanForPositionVisitor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.getSpanForPositionVisitor(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_b761.Accumulator, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_b761.InlineSpan?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'computeToPlainText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.computeToPlainText(_36c2.maybeUnBoxAndBuildArgument<_fac9.StringBuffer, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), includePlaceholders: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'includePlaceholders'
] : null, includeSemanticsLabels: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'includeSemanticsLabels'
] : null);
return []; } );
table  [
'computeSemanticsInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.computeSemanticsInformation(_36c2.maybeUnBoxAndBuildArgument<_fac9.List<_b761.InlineSpanSemanticsInformation>, _b761.InlineSpanSemanticsInformation>(luaCallerArguments  [
1
], parentState: hydroState), inheritedLocale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'inheritedLocale'
] : null, parentState: hydroState), inheritedSpellOut: luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
'inheritedSpellOut'
] : null);
return []; } );
table  [
'codeUnitAtVisitor'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
final returnValue = vmObject.codeUnitAtVisitor(luaCallerArguments  [
1
], _36c2.maybeUnBoxAndBuildArgument<_b761.Accumulator, _fac9.dynamic>(luaCallerArguments  [
2
], parentState: hydroState));if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'describeSemantics'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

vmObject.describeSemantics(_36c2.maybeUnBoxAndBuildArgument<_b761.Accumulator, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.int>, _fac9.int>(luaCallerArguments  [
2
], parentState: hydroState), _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.dynamic>, _fac9.dynamic>(luaCallerArguments  [
3
], parentState: hydroState));
return []; } );
table  [
'debugAssertIsValid'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.debugAssertIsValid(),]; } );
table  [
'compareTo'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_487f.RenderComparison.values.indexWhere((x) { return x == vmObject.compareTo(_36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState)); } ),]; } );
table  [
'getHashCode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.hashCode,]; } );
table  [
'toStringShort'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toStringShort(),]; } );
table  [
'debugFillProperties'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticPropertiesBuilder, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));
return []; } );
table  [
'debugDescribeChildren'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.debugDescribeChildren().map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'getSpanForPosition'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.getSpanForPosition(_36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(luaCallerArguments  [
1
], parentState: hydroState));if(returnValue!= null){return [_36c2.maybeBoxObject<_b761.InlineSpan?>(object: returnValue, hydroState: hydroState, table: _36c2.HydroTable()),];}return []; } );
table  [
'toPlainText'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.toPlainText(includePlaceholders: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'includePlaceholders'
] : null, includeSemanticsLabels: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'includeSemanticsLabels'
] : null),]; } );
table  [
'getSemanticsInformation'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [_36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(object: vmObject.getSemanticsInformation().map((x) => _36c2.maybeBoxObject<_b761.InlineSpanSemanticsInformation>(object: x, hydroState: hydroState, table: _36c2.HydroTable())).toList(), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'codeUnitAt'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { final returnValue = vmObject.codeUnitAt(luaCallerArguments  [
1
]);if(returnValue!= null){return [returnValue,];}return []; } );
table  [
'toStringShallow'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [vmObject.toStringShallow(joiner: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'joiner'
] : null, minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } );
table  [
'toStringDeep'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 

return [vmObject.toStringDeep(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null), prefixLineOne: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixLineOne'
] : null, prefixOtherLines: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'prefixOtherLines'
] : null),]; } );
table  [
'toDiagnosticsNode'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 
return [_36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(object: vmObject.toDiagnosticsNode(name: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'name'
] : null, style: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticsTreeStyle.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null)), hydroState: hydroState, table: _36c2.HydroTable()),]; } );
table  [
'toString'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return [vmObject.toString(minLevel: _36c2.maybeUnBoxEnum(values: _eaf3.DiagnosticLevel.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'minLevel'
] : null)),]; } ); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

final _1584.TextSpan vmObject;

 }

class RTManagedTextSpan extends _1584.TextSpan implements _36c2.Box<_1584.TextSpan> {RTManagedTextSpan({_fac9.List<_b761.InlineSpan>? children, _a643.Locale? locale, _fd33.MouseCursor? mouseCursor, void Function(_0e77.PointerEnterEvent event)? onEnter, void Function(_0e77.PointerExitEvent event)? onExit, _02d2.GestureRecognizer? recognizer, _fac9.String? semanticsLabel, _fac9.bool? spellOut, _74d0.TextStyle? style, _fac9.String? text, required this.table, required this.hydroState}) : super(children: children,locale: locale,mouseCursor: mouseCursor,onEnter: onEnter,onExit: onExit,recognizer: recognizer,semanticsLabel: semanticsLabel,spellOut: spellOut,style: style,text: text) { table  [
'vmObject'
] = vmObject;
table  [
'unwrap'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { return  [unwrap()]; } );
table  [
'text'
] = _36c2.maybeBoxObject(object: this.text, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'children'
] = _36c2.maybeBoxObject(object: this.children, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'recognizer'
] = _36c2.maybeBoxObject(object: this.recognizer, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'mouseCursor'
] = _36c2.maybeBoxObject(object: this.mouseCursor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'semanticsLabel'
] = _36c2.maybeBoxObject(object: this.semanticsLabel, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'locale'
] = _36c2.maybeBoxObject(object: this.locale, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'spellOut'
] = _36c2.maybeBoxObject(object: this.spellOut, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'style'
] = _36c2.maybeBoxObject(object: this.style, hydroState: hydroState, table: _36c2.HydroTable());


table  [
'cursor'
] = _36c2.maybeBoxObject(object: cursor, hydroState: hydroState, table: _36c2.HydroTable());
table  [
'validForMouseTracker'
] = _36c2.maybeBoxObject(object: validForMouseTracker, hydroState: hydroState, table: _36c2.HydroTable());
table['_dart_getCursor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.cursor];
});
table['_dart_getValidForMouseTracker'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.validForMouseTracker];
});
table['_dart_handleEvent'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.handleEvent(
      _36c2.maybeUnBoxAndBuildArgument<_0e77.PointerEvent, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_baac.HitTestEntry, _fac9.dynamic>(
          luaCallerArguments[2],
          parentState: hydroState));
  return [];
});
table['_dart_build'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.build(
      _36c2.maybeUnBoxAndBuildArgument<_a643.ParagraphBuilder, _fac9.dynamic>(luaCallerArguments[1],
          parentState: hydroState),
      dimensions: _36c2.maybeUnBoxAndBuildArgument<
              _fac9.List<_fe5a.PlaceholderDimensions>?,
              _fe5a.PlaceholderDimensions>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['dimensions']
              : null,
          parentState: hydroState),
      textScaleFactor: _36c2.maybeUnBoxAndBuildArgument<_fac9.double, _fac9.dynamic>(
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['textScaleFactor'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_visitChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  _36c2.Closure unpackedvisitor = luaCallerArguments[1];
  return [
    _36c2.maybeBoxObject(
        object: super.visitChildren((span) =>
            _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                unpackedvisitor.dispatch(
                  [luaCallerArguments[0], span],
                  parentState: hydroState,
                )[0],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getSpanForPositionVisitor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getSpanForPositionVisitor(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_b761.Accumulator, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_computeToPlainText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.computeToPlainText(
      _36c2.maybeUnBoxAndBuildArgument<_fac9.StringBuffer, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      includePlaceholders: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['includePlaceholders']
              : null,
          parentState: hydroState),
      includeSemanticsLabels:
          _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
              luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['includeSemanticsLabels']
                  : null,
              parentState: hydroState));
  return [];
});
table['_dart_computeSemanticsInformation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.computeSemanticsInformation(
      _36c2.maybeUnBoxAndBuildArgument<
              _fac9.List<_b761.InlineSpanSemanticsInformation>,
              _b761.InlineSpanSemanticsInformation>(luaCallerArguments[1],
          parentState: hydroState),
      inheritedLocale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
          luaCallerArguments.length >= 3
              ? luaCallerArguments[2]['inheritedLocale']
              : null,
          parentState: hydroState),
      inheritedSpellOut: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
          luaCallerArguments.length >= 3 ? luaCallerArguments[2]['inheritedSpellOut'] : null,
          parentState: hydroState));
  return [];
});
table['_dart_codeUnitAtVisitor'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.codeUnitAtVisitor(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxAndBuildArgument<_b761.Accumulator, _fac9.dynamic>(
                luaCallerArguments[2],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_describeSemantics'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.describeSemantics(
      _36c2.maybeUnBoxAndBuildArgument<_b761.Accumulator, _fac9.dynamic>(
          luaCallerArguments[1],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.int>, _fac9.int>(
          luaCallerArguments[2],
          parentState: hydroState),
      _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_fac9.dynamic>,
          _fac9.dynamic>(luaCallerArguments[3], parentState: hydroState));
  return [];
});
table['_dart_debugAssertIsValid'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugAssertIsValid(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_compareTo'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _487f.RenderComparison.values.indexWhere((x) {
      return x ==
          super.compareTo(
              _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan, _fac9.dynamic>(
                  luaCallerArguments[1],
                  parentState: hydroState));
    })
  ];
});
table['_dart_getHashCode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [super.hashCode];
});
table['_dart_toStringShort'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShort(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_debugFillProperties'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  super.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
      _eaf3.DiagnosticPropertiesBuilder,
      _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
  return [];
});
table['_dart_debugDescribeChildren'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.debugDescribeChildren(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getSpanForPosition'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getSpanForPosition(
            _36c2.maybeUnBoxAndBuildArgument<_a643.TextPosition, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toPlainText'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toPlainText(
            includePlaceholders:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['includePlaceholders']
                        : null,
                    parentState: hydroState),
            includeSemanticsLabels:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.bool, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['includeSemanticsLabels']
                        : null,
                    parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_getSemanticsInformation'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.getSemanticsInformation(),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_codeUnitAt'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.codeUnitAt(
            _36c2.maybeUnBoxAndBuildArgument<_fac9.int, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
        hydroState: hydroState,
        table: _36c2.HydroTable())
  ];
});
table['_dart_toStringShallow'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toStringShallow(
            joiner:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
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
table['_dart_toStringDeep'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
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
table['_dart_toDiagnosticsNode'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
  return [
    _36c2.maybeBoxObject(
        object: super.toDiagnosticsNode(
            name:
                _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
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
table['_dart_toString'] =
    _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
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
}); }

final _36c2.HydroTable table;

final _36c2.HydroState hydroState;

_1584.TextSpan unwrap() => this;
_1584.TextSpan get vmObject => this;
@_fac9.override _fd33.MouseCursor get cursor { 
_36c2.Closure closure = table["getCursor"];
return _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.bool get validForMouseTracker { 
_36c2.Closure closure = table["getValidForMouseTracker"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void handleEvent(event, entry) { 
_36c2.Closure closure = table["handleEvent"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void build(builder, {_fac9.List? dimensions, _fac9.double textScaleFactor = 1.0}) { 
_36c2.Closure closure = table["build"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool visitChildren(visitor) { 
_36c2.Closure closure = table["visitChildren"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _b761.InlineSpan? getSpanForPositionVisitor(position, offset) { 
_36c2.Closure closure = table["getSpanForPositionVisitor"];
return _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override void computeToPlainText(buffer, {_fac9.bool includePlaceholders = true, _fac9.bool includeSemanticsLabels = true}) { 
_36c2.Closure closure = table["computeToPlainText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void computeSemanticsInformation(collector, {_a643.Locale? inheritedLocale, _fac9.bool inheritedSpellOut = false}) { 
_36c2.Closure closure = table["computeSemanticsInformation"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.int? codeUnitAtVisitor(index, offset) { 
_36c2.Closure closure = table["codeUnitAtVisitor"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void describeSemantics(offset, semanticsOffsets, semanticsElements) { 
_36c2.Closure closure = table["describeSemantics"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.bool debugAssertIsValid() { 
_36c2.Closure closure = table["debugAssertIsValid"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _487f.RenderComparison compareTo(other) { 
_36c2.Closure closure = table["compareTo"];
return _36c2.maybeUnBoxEnum(values: _487f.RenderComparison.values, boxedEnum: closure.dispatch([table],parentState: hydroState)[0]); } 
@_fac9.override _fac9.int get hashCode { 
_36c2.Closure closure = table["getHashCode"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShort() { 
_36c2.Closure closure = table["toStringShort"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override void debugFillProperties(properties) { super.debugFillProperties(properties);
_36c2.Closure closure = table["debugFillProperties"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() { 
_36c2.Closure closure = table["debugDescribeChildren"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>, _eaf3.DiagnosticsNode>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _b761.InlineSpan? getSpanForPosition(position) { 
_36c2.Closure closure = table["getSpanForPosition"];
return _36c2.maybeUnBoxAndBuildArgument<_b761.InlineSpan?, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toPlainText({_fac9.bool includePlaceholders = true, _fac9.bool includeSemanticsLabels = true}) { 
_36c2.Closure closure = table["toPlainText"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.List<_b761.InlineSpanSemanticsInformation> getSemanticsInformation() { 
_36c2.Closure closure = table["getSemanticsInformation"];
return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_b761.InlineSpanSemanticsInformation>, _b761.InlineSpanSemanticsInformation>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.int? codeUnitAt(index) { 
_36c2.Closure closure = table["codeUnitAt"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringShallow({_fac9.String joiner = ', ', _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) { 
_36c2.Closure closure = table["toStringShallow"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _fac9.String toStringDeep({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug, _fac9.String prefixLineOne = '', _fac9.String? prefixOtherLines}) { 
_36c2.Closure closure = table["toStringDeep"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
@_fac9.override _eaf3.DiagnosticsNode toDiagnosticsNode({_fac9.String? name, _eaf3.DiagnosticsTreeStyle? style}) { 
_36c2.Closure closure = table["toDiagnosticsNode"];
return _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(closure.dispatch([table],parentState: hydroState)[0], parentState: hydroState); } 
@_fac9.override _fac9.String toString({_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) { 
_36c2.Closure closure = table["__tostring"];
return closure.dispatch([table],parentState: hydroState)[0]; } 
 }
void loadTextSpan({required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { table  [
'textSpan'
] = _36c2.makeLuaDartFunc(func: (_fac9.List<_fac9.dynamic> luaCallerArguments) { 


_36c2.Closure? unpackedonEnter=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onEnter'
] : null;
_36c2.Closure? unpackedonExit=luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'onExit'
] : null;





return  [RTManagedTextSpan(table: luaCallerArguments  [
0
], hydroState: hydroState, children: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_b761.InlineSpan>?, _b761.InlineSpan>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'children'
] : null, parentState: hydroState), locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'locale'
] : null, parentState: hydroState), mouseCursor: _36c2.maybeUnBoxAndBuildArgument<_fd33.MouseCursor?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'mouseCursor'
] : null, parentState: hydroState), onEnter: unpackedonEnter != null ? (event) => unpackedonEnter.dispatch([luaCallerArguments[0],event],parentState:hydroState,) : null , onExit: unpackedonExit != null ? (event) => unpackedonExit.dispatch([luaCallerArguments[0],event],parentState:hydroState,) : null , recognizer: _36c2.maybeUnBoxAndBuildArgument<_02d2.GestureRecognizer?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'recognizer'
] : null, parentState: hydroState), semanticsLabel: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'semanticsLabel'
] : null, spellOut: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'spellOut'
] : null, style: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'style'
] : null, parentState: hydroState), text: luaCallerArguments.length >= 2 ? luaCallerArguments  [
1
]  [
'text'
] : null)]; } );
_36c2.registerBoxer<_1584.TextSpan>(boxer: ({required _1584.TextSpan vmObject, required _36c2.HydroState hydroState, required _36c2.HydroTable table}) { return  VMManagedTextSpan(vmObject: vmObject, hydroState: hydroState, table: table); } ); } 
