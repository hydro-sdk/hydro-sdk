import 'dart:core';

import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedFlutterErrorDetailsForPointerEventDispatcher
    extends VMManagedBox<FlutterErrorDetailsForPointerEventDispatcher> {
  VMManagedFlutterErrorDetailsForPointerEventDispatcher(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['event'] = maybeBoxObject<PointerEvent?>(
        object: vmObject.event, hydroState: hydroState, table: HydroTable());
    table['hitTestEntry'] = maybeBoxObject<HitTestEntry?>(
        object: vmObject.hitTestEntry,
        hydroState: hydroState,
        table: HydroTable());
    table['exception'] = maybeBoxObject<Object>(
        object: vmObject.exception,
        hydroState: hydroState,
        table: HydroTable());
    table['stack'] = maybeBoxObject<StackTrace?>(
        object: vmObject.stack, hydroState: hydroState, table: HydroTable());
    table['library'] = vmObject.library;
    table['context'] = maybeBoxObject<DiagnosticsNode?>(
        object: vmObject.context, hydroState: hydroState, table: HydroTable());

    table['silent'] = vmObject.silent;
    table['copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;

      Closure? unpackedstackFilter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['stackFilter']
          : null;
      return [
        maybeBoxObject<FlutterErrorDetails>(
            object: vmObject.copyWith(
                context: maybeUnBoxAndBuildArgument<DiagnosticsNode?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['context']
                        : null,
                    parentState: hydroState),
                exception: maybeUnBoxAndBuildArgument<Object?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['exception']
                        : null,
                    parentState: hydroState),
                informationCollector: unpackedinformationCollector != null
                    ? () => maybeUnBoxAndBuildArgument<
                            Iterable<DiagnosticsNode>, DiagnosticsNode>(
                        unpackedinformationCollector.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null,
                library: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['library']
                    : null,
                silent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['silent']
                    : null,
                stack: maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stack'] : null,
                    parentState: hydroState),
                stackFilter: unpackedstackFilter != null
                    ? (input) => maybeUnBoxAndBuildArgument<Iterable<String>, String>(
                        unpackedstackFilter.dispatch(
                          [luaCallerArguments[0], input],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['exceptionAsString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.exceptionAsString(),
      ];
    });
    table['debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
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
                    : null)),
      ];
    });
    table['toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getSummary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: vmObject.summary,
            hydroState: hydroState,
            table: HydroTable()),
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

  final FlutterErrorDetailsForPointerEventDispatcher vmObject;
}

class RTManagedFlutterErrorDetailsForPointerEventDispatcher
    extends FlutterErrorDetailsForPointerEventDispatcher
    implements Box<FlutterErrorDetailsForPointerEventDispatcher> {
  RTManagedFlutterErrorDetailsForPointerEventDispatcher(
      {DiagnosticsNode? context,
      PointerEvent? event,
      HitTestEntry? hitTestEntry,
      informationCollector,
      String? library,
      required bool silent,
      StackTrace? stack,
      required Object exception,
      required this.table,
      required this.hydroState})
      : super(
            context: context,
            event: event,
            hitTestEntry: hitTestEntry,
            informationCollector: informationCollector,
            library: library,
            silent: silent,
            stack: stack,
            exception: exception) {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['event'] = maybeBoxObject<PointerEvent?>(
        object: this.event, hydroState: hydroState, table: HydroTable());
    table['hitTestEntry'] = maybeBoxObject<HitTestEntry?>(
        object: this.hitTestEntry, hydroState: hydroState, table: HydroTable());
    table['exception'] = maybeBoxObject<Object>(
        object: this.exception, hydroState: hydroState, table: HydroTable());
    table['stack'] = maybeBoxObject<StackTrace?>(
        object: this.stack, hydroState: hydroState, table: HydroTable());
    table['library'] = this.library;
    table['context'] = maybeBoxObject<DiagnosticsNode?>(
        object: this.context, hydroState: hydroState, table: HydroTable());

    table['silent'] = this.silent;
    table['_dart_copyWith'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['informationCollector']
          : null;

      Closure? unpackedstackFilter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['stackFilter']
          : null;
      return [
        maybeBoxObject<FlutterErrorDetails>(
            object: super.copyWith(
                context: maybeUnBoxAndBuildArgument<DiagnosticsNode?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['context']
                        : null,
                    parentState: hydroState),
                exception: maybeUnBoxAndBuildArgument<Object?, dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['exception']
                        : null,
                    parentState: hydroState),
                informationCollector: unpackedinformationCollector != null
                    ? () => maybeUnBoxAndBuildArgument<
                            Iterable<DiagnosticsNode>, DiagnosticsNode>(
                        unpackedinformationCollector.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null,
                library: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['library']
                    : null,
                silent: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['silent']
                    : null,
                stack: maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stack'] : null,
                    parentState: hydroState),
                stackFilter: unpackedstackFilter != null
                    ? (input) => maybeUnBoxAndBuildArgument<Iterable<String>, String>(
                        unpackedstackFilter.dispatch(
                          [luaCallerArguments[0], input],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_exceptionAsString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.exceptionAsString()];
    });
    table['_dart_debugFillProperties'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.debugFillProperties(
          maybeUnBoxAndBuildArgument<DiagnosticPropertiesBuilder, dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_toStringShort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.toStringShort()];
    });
    table['_dart_toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        super.toString(
            minLevel: maybeUnBoxEnum(
                values: DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null))
      ];
    });
    table['_dart_toDiagnosticsNode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<DiagnosticsNode>(
            object: super.toDiagnosticsNode(
                name: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['name']
                    : null,
                style: maybeUnBoxEnum(
                    values: DiagnosticsTreeStyle.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['style']
                        : null)),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['_dart_getSummary'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.summary];
    });
    table['_dart_getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.hashCode];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  FlutterErrorDetailsForPointerEventDispatcher unwrap() => this;
  FlutterErrorDetailsForPointerEventDispatcher get vmObject => this;
  @override
  FlutterErrorDetails copyWith(
      {DiagnosticsNode? context,
      Object? exception,
      informationCollector,
      String? library,
      bool? silent,
      StackTrace? stack,
      stackFilter}) {
    Closure closure = table["copyWith"];
    return maybeUnBoxAndBuildArgument<FlutterErrorDetails, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  String exceptionAsString() {
    Closure closure = table["exceptionAsString"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toStringShort() {
    Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  DiagnosticsNode toDiagnosticsNode(
      {String? name, DiagnosticsTreeStyle? style}) {
    Closure closure = table["toDiagnosticsNode"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  DiagnosticsNode get summary {
    Closure closure = table["getSummary"];
    return maybeUnBoxAndBuildArgument<DiagnosticsNode, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  int get hashCode {
    Closure closure = table["getHashCode"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadFlutterErrorDetailsForPointerEventDispatcher(
    {required HydroState hydroState, required HydroTable table}) {
  table['flutterErrorDetailsForPointerEventDispatcher'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['informationCollector']
        : null;

    return [
      RTManagedFlutterErrorDetailsForPointerEventDispatcher(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          context: maybeUnBoxAndBuildArgument<DiagnosticsNode?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['context']
                  : null,
              parentState: hydroState),
          event: maybeUnBoxAndBuildArgument<PointerEvent?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['event']
                  : null,
              parentState: hydroState),
          hitTestEntry: maybeUnBoxAndBuildArgument<HitTestEntry?, dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['hitTestEntry']
                  : null,
              parentState: hydroState),
          informationCollector: unpackedinformationCollector != null
              ? () =>
                  maybeUnBoxAndBuildArgument<Iterable<DiagnosticsNode>, DiagnosticsNode>(
                      unpackedinformationCollector.dispatch(
                        [
                          luaCallerArguments[0],
                        ],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)
              : null,
          library: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['library'] : null,
          silent: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['silent'] : null,
          stack: maybeUnBoxAndBuildArgument<StackTrace?, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stack'] : null, parentState: hydroState),
          exception: maybeUnBoxAndBuildArgument<Object, dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['exception'] : null, parentState: hydroState))
    ];
  });
  registerBoxer<FlutterErrorDetailsForPointerEventDispatcher>(boxer: (
      {required FlutterErrorDetailsForPointerEventDispatcher vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedFlutterErrorDetailsForPointerEventDispatcher(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
