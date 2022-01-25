import 'dart:core';

import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/object.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedDiagnosticsDebugCreator
    extends VMManagedBox<DiagnosticsDebugCreator> {
  VMManagedDiagnosticsDebugCreator(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['expandableValue'] = vmObject.expandableValue;
    table['allowWrap'] = vmObject.allowWrap;
    table['allowNameWrap'] = vmObject.allowNameWrap;
    table['ifNull'] = vmObject.ifNull;
    table['ifEmpty'] = vmObject.ifEmpty;
    table['tooltip'] = vmObject.tooltip;
    table['missingIfNull'] = vmObject.missingIfNull;
    table['defaultValue'] = maybeBoxObject<Object?>(
        object: vmObject.defaultValue,
        hydroState: hydroState,
        table: HydroTable());
    table['name'] = vmObject.name;
    table['showSeparator'] = vmObject.showSeparator;
    table['showName'] = vmObject.showName;
    table['linePrefix'] = vmObject.linePrefix;
    table['style'] = DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == vmObject.style;
    });
    table['toJsonMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.toJsonMap(maybeUnBoxAndBuildArgument<
                DiagnosticsSerializationDelegate,
                dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['valueToString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.valueToString(
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['toDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toDescription(
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['getProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getProperties()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getPropertyType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Type>(
            object: vmObject.propertyType,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.value;
      if (returnValue != null) {
        return [
          maybeBoxObject<Object?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getException'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.exception;
      if (returnValue != null) {
        return [
          maybeBoxObject<Object?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getIsInteresting'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isInteresting,
      ];
    });
    table['getLevel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        DiagnosticLevel.values.indexWhere((x) {
          return x == vmObject.level;
        }),
      ];
    });
    table['isFiltered'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isFiltered(maybeUnBoxEnum(
            values: DiagnosticLevel.values, boxedEnum: luaCallerArguments[1])),
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState)),
      ];
    });
    table['toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
      ];
    });
    table['getEmptyBodyDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.emptyBodyDescription;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getAllowWrap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.allowWrap,
      ];
    });
    table['getAllowNameWrap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.allowNameWrap,
      ];
    });
    table['getAllowTruncate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.allowTruncate,
      ];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DiagnosticsDebugCreator vmObject;
}

class RTManagedDiagnosticsDebugCreator extends DiagnosticsDebugCreator
    implements Box<DiagnosticsDebugCreator> {
  RTManagedDiagnosticsDebugCreator(Object value$,
      {required this.table, required this.hydroState})
      : super(
          value$,
        ) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['expandableValue'] = expandableValue;
    table['allowWrap'] = allowWrap;
    table['allowNameWrap'] = allowNameWrap;
    table['ifNull'] = ifNull;
    table['ifEmpty'] = ifEmpty;
    table['tooltip'] = tooltip;
    table['missingIfNull'] = missingIfNull;
    table['defaultValue'] = maybeBoxObject<Object?>(
        object: defaultValue, hydroState: hydroState, table: HydroTable());
    table['name'] = name;
    table['showSeparator'] = showSeparator;
    table['showName'] = showName;
    table['linePrefix'] = linePrefix;
    table['style'] = DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == style;
    });
    table['_dart_toJsonMap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: super.toJsonMap(maybeUnBoxAndBuildArgument<
                DiagnosticsSerializationDelegate,
                dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_valueToString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.valueToString(
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState))
      ];
    });
    table['_dart_toDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toDescription(
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState))
      ];
    });
    table['_dart_getProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .getProperties()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: super
                .getChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getPropertyType'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.propertyType];
    });
    table['_dart_getValue'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.value];
    });
    table['_dart_getException'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.exception];
    });
    table['_dart_getIsInteresting'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.isInteresting];
    });
    table['_dart_getLevel'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.level];
    });
    table['_dart_isFiltered'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.isFiltered(maybeUnBoxEnum(
            values: DiagnosticLevel.values, boxedEnum: luaCallerArguments[1]))
      ];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState))
      ];
    });
    table['_dart_toStringDeep'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState),
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null)
      ];
    });
    table['_dart_getEmptyBodyDescription'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.emptyBodyDescription];
    });
    table['_dart_getAllowWrap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.allowWrap];
    });
    table['_dart_getAllowNameWrap'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.allowNameWrap];
    });
    table['_dart_getAllowTruncate'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.allowTruncate];
    });
    table['_dart_getTextTreeConfiguration'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.textTreeConfiguration];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  DiagnosticsDebugCreator unwrap() => this;
  DiagnosticsDebugCreator get vmObject => this;
  @override
  Map<String, Object?> toJsonMap(delegate) {
    super.toJsonMap(delegate);
    Closure closure = table["toJsonMap"];
    return maybeUnBoxAndBuildArgument<Map<String, Object?>, String>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String valueToString({TextTreeConfiguration? parentConfiguration}) {
    Closure closure = table["valueToString"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toDescription({TextTreeConfiguration? parentConfiguration}) {
    Closure closure = table["toDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<DiagnosticsNode> getProperties() {
    Closure closure = table["getProperties"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<DiagnosticsNode> getChildren() {
    Closure closure = table["getChildren"];
    return maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Type get propertyType {
    Closure closure = table["getPropertyType"];
    return maybeUnBoxAndBuildArgument<Type, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Object? get value {
    Closure closure = table["getValue"];
    return maybeUnBoxAndBuildArgument<Object?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Object? get exception {
    Closure closure = table["getException"];
    return maybeUnBoxAndBuildArgument<Object?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get isInteresting {
    Closure closure = table["getIsInteresting"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticLevel get level {
    Closure closure = table["getLevel"];
    return maybeUnBoxEnum(
        values: DiagnosticLevel.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  bool isFiltered(minLevel) {
    Closure closure = table["isFiltered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString(
      {DiagnosticLevel minLevel = DiagnosticLevel.info,
      TextTreeConfiguration? parentConfiguration}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      TextTreeConfiguration? parentConfiguration,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String? get emptyBodyDescription {
    Closure closure = table["getEmptyBodyDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get allowWrap {
    Closure closure = table["getAllowWrap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get allowNameWrap {
    Closure closure = table["getAllowNameWrap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get allowTruncate {
    Closure closure = table["getAllowTruncate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  TextTreeConfiguration? get textTreeConfiguration {
    Closure closure = table["getTextTreeConfiguration"];
    return maybeUnBoxAndBuildArgument<TextTreeConfiguration?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDiagnosticsDebugCreator(
    {required HydroState hydroState, required HydroTable table}) {
  table['diagnosticsDebugCreator'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDiagnosticsDebugCreator(
          maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  registerBoxer<DiagnosticsDebugCreator>(boxer: (
      {required DiagnosticsDebugCreator vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDiagnosticsDebugCreator(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
