import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/assertions.dart' as _5dcc;
import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedFlutterErrorDetails
    extends _36c2.VMManagedBox<_5dcc.FlutterErrorDetails> {
  VMManagedFlutterErrorDetails(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['exception'] = _36c2.maybeBoxObject<_fac9.Object>(
        object: vmObject.exception,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stack'] = _36c2.maybeBoxObject<_fac9.StackTrace?>(
        object: vmObject.stack,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['library'] = vmObject.library;
    table['context'] = _36c2.maybeBoxObject<_eaf3.DiagnosticsNode?>(
        object: vmObject.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['silent'] = vmObject.silent;
    table['copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedinformationCollector =
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['informationCollector']
              : null;

      _36c2.Closure? unpackedstackFilter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['stackFilter']
          : null;
      return [
        _36c2.maybeBoxObject<_5dcc.FlutterErrorDetails>(
            object: vmObject.copyWith(
                context: _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['context']
                        : null,
                    parentState: hydroState),
                exception: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['exception']
                        : null,
                    parentState: hydroState),
                informationCollector: unpackedinformationCollector != null
                    ? () => _36c2.maybeUnBoxAndBuildArgument<
                            _fac9.Iterable<_eaf3.DiagnosticsNode>,
                            _eaf3.DiagnosticsNode>(
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
                silent: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['silent'] : null,
                stack: _36c2.maybeUnBoxAndBuildArgument<_fac9.StackTrace?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stack'] : null, parentState: hydroState),
                stackFilter: unpackedstackFilter != null
                    ? (input) => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.String>, _fac9.String>(
                        unpackedstackFilter.dispatch(
                          [luaCallerArguments[0], input],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['exceptionAsString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.exceptionAsString(),
      ];
    });
    table['getSummary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
            object: vmObject.summary,
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

  final _5dcc.FlutterErrorDetails vmObject;
}

class RTManagedFlutterErrorDetails extends _5dcc.FlutterErrorDetails
    implements _36c2.Box<_5dcc.FlutterErrorDetails> {
  RTManagedFlutterErrorDetails(
      {_eaf3.DiagnosticsNode? context,
      _fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector,
      _fac9.String? library,
      required _fac9.bool silent,
      _fac9.StackTrace? stack,
      _fac9.Iterable<_fac9.String> Function(_fac9.Iterable<_fac9.String> input)?
          stackFilter,
      required _fac9.Object exception,
      required this.table,
      required this.hydroState})
      : super(
            context: context,
            informationCollector: informationCollector,
            library: library,
            silent: silent,
            stack: stack,
            stackFilter: stackFilter,
            exception: exception) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['exception'] = _36c2.maybeBoxObject(
        object: this.exception,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['stack'] = _36c2.maybeBoxObject(
        object: this.stack, hydroState: hydroState, table: _36c2.HydroTable());
    table['library'] = _36c2.maybeBoxObject(
        object: this.library,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['context'] = _36c2.maybeBoxObject(
        object: this.context,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['silent'] = _36c2.maybeBoxObject(
        object: this.silent, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_copyWith'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure? unpackedinformationCollector =
          luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['informationCollector']
              : null;

      _36c2.Closure? unpackedstackFilter = luaCallerArguments.length >= 2
          ? luaCallerArguments[1]['stackFilter']
          : null;
      return [
        _36c2.maybeBoxObject(
            object: super.copyWith(
                context: _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['context'] : null,
                    parentState: hydroState),
                exception: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['exception']
                        : null,
                    parentState: hydroState),
                informationCollector: unpackedinformationCollector != null
                    ? () => _36c2.maybeUnBoxAndBuildArgument<
                            _fac9.Iterable<_eaf3.DiagnosticsNode>,
                            _eaf3.DiagnosticsNode>(
                        unpackedinformationCollector.dispatch(
                          [
                            luaCallerArguments[0],
                          ],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null,
                library: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['library'] : null,
                    parentState: hydroState),
                silent: _36c2.maybeUnBoxAndBuildArgument<_fac9.bool?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['silent'] : null,
                    parentState: hydroState),
                stack: _36c2.maybeUnBoxAndBuildArgument<_fac9.StackTrace?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['stack'] : null, parentState: hydroState),
                stackFilter: unpackedstackFilter != null
                    ? (input) => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.String>, _fac9.String>(
                        unpackedstackFilter.dispatch(
                          [luaCallerArguments[0], input],
                          parentState: hydroState,
                        )[0],
                        parentState: hydroState)
                    : null),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_exceptionAsString'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.exceptionAsString(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getSummary'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.summary];
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

  _5dcc.FlutterErrorDetails unwrap() => this;
  _5dcc.FlutterErrorDetails get vmObject => this;
  @_fac9.override
  _5dcc.FlutterErrorDetails copyWith(
      {_eaf3.DiagnosticsNode? context,
      _fac9.Object? exception,
      _fac9.Iterable<_eaf3.DiagnosticsNode> Function()? informationCollector,
      _fac9.String? library,
      _fac9.bool? silent,
      _fac9.StackTrace? stack,
      _fac9.Iterable<_fac9.String> Function(_fac9.Iterable<_fac9.String> input)?
          stackFilter}) {
    _36c2.Closure closure = table["copyWith"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_5dcc.FlutterErrorDetails, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String exceptionAsString() {
    _36c2.Closure closure = table["exceptionAsString"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticsNode get summary {
    _36c2.Closure closure = table["getSummary"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode, _fac9.dynamic>(
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

void loadFlutterErrorDetails(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['flutterErrorDetails'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedinformationCollector = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['informationCollector']
        : null;

    _36c2.Closure? unpackedstackFilter = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['stackFilter']
        : null;

    return [
      RTManagedFlutterErrorDetails(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          context: _36c2
              .maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['context']
                      : null,
                  parentState: hydroState),
          informationCollector: unpackedinformationCollector != null
              ? () => _36c2.maybeUnBoxAndBuildArgument<
                      _fac9.Iterable<_eaf3.DiagnosticsNode>,
                      _eaf3.DiagnosticsNode>(
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
          stack: _36c2
              .maybeUnBoxAndBuildArgument<_fac9.StackTrace?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['stack']
                      : null,
                  parentState: hydroState),
          stackFilter: unpackedstackFilter != null
              ? (input) => _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_fac9.String>, _fac9.String>(
                  unpackedstackFilter.dispatch(
                    [luaCallerArguments[0], input],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          exception: _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['exception'] : null, parentState: hydroState))
    ];
  });
  _36c2.registerBoxer<_5dcc.FlutterErrorDetails>(boxer: (
      {required _5dcc.FlutterErrorDetails vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedFlutterErrorDetails(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
