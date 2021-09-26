import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedDiagnosticsNode extends VMManagedBox<DiagnosticsNode> {
  VMManagedDiagnosticsNode(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['name'] = vmObject.name;
    table['showSeparator'] = vmObject.showSeparator;
    table['showName'] = vmObject.showName;
    table['linePrefix'] = vmObject.linePrefix;
    table['style'] = DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == vmObject.style;
    });
    table['toDescription'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.toDescription(
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration, dynamic>(
                    args[1]['parentConfiguration'],
                    parentState: hydroState))
      ];
    });
    table['isFiltered'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.isFiltered(
            maybeUnBoxEnum(values: DiagnosticLevel.values, boxedEnum: args[1]))
      ];
    });
    table['getLevel'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        DiagnosticLevel.values.indexWhere((x) {
          return x == vmObject.level;
        })
      ];
    });
    table['getEmptyBodyDescription'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.emptyBodyDescription];
    });
    table['getValue'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Object?>(
            object: vmObject.value, hydroState: hydroState, table: HydroTable())
      ];
    });
    table['getAllowWrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.allowWrap];
    });
    table['getAllowNameWrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.allowNameWrap];
    });
    table['getAllowTruncate'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.allowTruncate];
    });
    table['getProperties'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getProperties()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getChildren'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject
                .getChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration, dynamic>(
                    args[1]['parentConfiguration'],
                    parentState: hydroState))
      ];
    });
    table['toStringDeep'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        vmObject.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration, dynamic>(
                    args[1]['parentConfiguration'],
                    parentState: hydroState),
            prefixLineOne: args[1]['prefixLineOne'],
            prefixOtherLines: args[1]['prefixOtherLines'])
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DiagnosticsNode vmObject;
}

class RTManagedDiagnosticsNode extends DiagnosticsNode
    implements Box<DiagnosticsNode> {
  RTManagedDiagnosticsNode(
      {String? linePrefix,
      required bool showName,
      required bool showSeparator,
      DiagnosticsTreeStyle? style,
      String? name,
      required this.table,
      required this.hydroState})
      : super(
            linePrefix: linePrefix,
            showName: showName,
            showSeparator: showSeparator,
            style: style,
            name: name) {
    table!['vmObject'] = vmObject;
    table!['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table!['name'] = name;
    table!['showSeparator'] = showSeparator;
    table!['showName'] = showName;
    table!['linePrefix'] = linePrefix;
    table!['style'] = DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == style;
    });
    table!['_dart_toDescription'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        toDescription(
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration, dynamic>(
                    args[1]['parentConfiguration'],
                    parentState: hydroState))
      ];
    });
    table!['_dart_isFiltered'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.isFiltered(
            maybeUnBoxEnum(values: DiagnosticLevel.values, boxedEnum: args[1]))
      ];
    });
    table!['_dart_getLevel'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.level];
    });
    table!['_dart_getEmptyBodyDescription'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.emptyBodyDescription];
    });
    table!['_dart_getValue'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [value];
    });
    table!['_dart_getAllowWrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.allowWrap];
    });
    table!['_dart_getAllowNameWrap'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.allowNameWrap];
    });
    table!['_dart_getAllowTruncate'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.allowTruncate];
    });
    table!['_dart_getProperties'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: getProperties()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_getChildren'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: getChildren()
                .map((x) => maybeBoxObject<DiagnosticsNode>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table!['_dart_toString'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration, dynamic>(
                    args[1]['parentConfiguration'],
                    parentState: hydroState))
      ];
    });
    table!['_dart_toStringDeep'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        super.toStringDeep(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values, boxedEnum: args[1]['minLevel']),
            parentConfiguration:
                maybeUnBoxAndBuildArgument<TextTreeConfiguration, dynamic>(
                    args[1]['parentConfiguration'],
                    parentState: hydroState),
            prefixLineOne: args[1]['prefixLineOne'],
            prefixOtherLines: args[1]['prefixOtherLines'])
      ];
    });
  }

  final HydroTable? table;

  final HydroState hydroState;

  DiagnosticsNode unwrap() => this;
  DiagnosticsNode get vmObject => this;
  @override
  String? toDescription({TextTreeConfiguration? parentConfiguration}) {
    Closure closure = table!["toDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool isFiltered(DiagnosticLevel minLevel) {
    Closure closure = table!["isFiltered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticLevel get level {
    Closure closure = table!["getLevel"];
    return maybeUnBoxEnum(
        values: DiagnosticLevel.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @override
  String? get emptyBodyDescription {
    Closure closure = table!["getEmptyBodyDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Object? get value {
    Closure closure = table!["getValue"];
    return maybeUnBoxAndBuildArgument<Object, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get allowWrap {
    Closure closure = table!["getAllowWrap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get allowNameWrap {
    Closure closure = table!["getAllowNameWrap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get allowTruncate {
    Closure closure = table!["getAllowTruncate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  List<DiagnosticsNode> getProperties() {
    Closure closure = table!["getProperties"];
    return maybeUnBoxAndBuildArgument<List, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<DiagnosticsNode> getChildren() {
    Closure closure = table!["getChildren"];
    return maybeUnBoxAndBuildArgument<List, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String toString(
      {DiagnosticLevel minLevel = DiagnosticLevel.info,
      TextTreeConfiguration? parentConfiguration}) {
    Closure closure = table!["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringDeep(
      {DiagnosticLevel minLevel = DiagnosticLevel.debug,
      TextTreeConfiguration? parentConfiguration,
      String prefixLineOne = '',
      String? prefixOtherLines}) {
    Closure closure = table!["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDiagnosticsNode(
    {required HydroState hydroState, required HydroTable table}) {
  table['diagnosticsNode'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedDiagnosticsNode(
          table: args[0],
          hydroState: hydroState,
          linePrefix: args[1]['linePrefix'],
          showName: args[1]['showName'],
          showSeparator: args[1]['showSeparator'],
          style: maybeUnBoxEnum(
              values: DiagnosticsTreeStyle.values, boxedEnum: args[1]['style']),
          name: args[1]['name'])
    ];
  });
  table['diagnosticsNodeMessage'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<DiagnosticsNode>(
          object: DiagnosticsNode.message(args[1],
              allowWrap: args[2]['allowWrap'],
              level: maybeUnBoxEnum(
                  values: DiagnosticLevel.values, boxedEnum: args[2]['level']),
              style: maybeUnBoxEnum(
                  values: DiagnosticsTreeStyle.values,
                  boxedEnum: args[2]['style'])),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['diagnosticsNodeToJsonList'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: DiagnosticsNode.toJsonList(
              maybeUnBoxAndBuildArgument<List<DiagnosticsNode>, dynamic>(
                  args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(args[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<DiagnosticsSerializationDelegate,
                  dynamic>(args[3], parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<DiagnosticsNode>(boxer: (
      {required DiagnosticsNode vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDiagnosticsNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
