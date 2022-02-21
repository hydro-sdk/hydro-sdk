import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedDiagnosticsNode
    extends _36c2.VMManagedBox<_eaf3.DiagnosticsNode> {
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
    table['style'] = _eaf3.DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == vmObject.style;
    });
    table['toDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.toDescription(
          parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                  _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['parentConfiguration']
                  : null,
              parentState: hydroState));
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['isFiltered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.isFiltered(_36c2.maybeUnBoxEnum(
            values: _eaf3.DiagnosticLevel.values,
            boxedEnum: luaCallerArguments[1])),
      ];
    });
    table['getLevel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _eaf3.DiagnosticLevel.values.indexWhere((x) {
          return x == vmObject.level;
        }),
      ];
    });
    table['getEmptyBodyDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.emptyBodyDescription;
      if (returnValue != null) {
        return [
          returnValue,
        ];
      }
      return [];
    });
    table['getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.value;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.Object?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['getAllowWrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.allowWrap,
      ];
    });
    table['getAllowNameWrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.allowNameWrap,
      ];
    });
    table['getAllowTruncate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.allowTruncate,
      ];
    });
    table['getProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .getProperties()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
            object: vmObject
                .getChildren()
                .map((x) => _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
                    object: x,
                    hydroState: hydroState,
                    table: _36c2.HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toJsonMap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Map>(
            object: vmObject.toJsonMap(_36c2.maybeUnBoxAndBuildArgument<
                _eaf3.DiagnosticsSerializationDelegate,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
                    : null),
            parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                    _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['parentConfiguration']
                    : null,
                parentState: hydroState)),
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
            parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                    _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _eaf3.DiagnosticsNode vmObject;
}

class RTManagedDiagnosticsNode extends _eaf3.DiagnosticsNode
    implements _36c2.Box<_eaf3.DiagnosticsNode> {
  RTManagedDiagnosticsNode(
      {_fac9.String? linePrefix,
      required _fac9.bool showName,
      required _fac9.bool showSeparator,
      _eaf3.DiagnosticsTreeStyle? style,
      _fac9.String? name,
      required this.table,
      required this.hydroState})
      : super(
            linePrefix: linePrefix,
            showName: showName,
            showSeparator: showSeparator,
            style: style,
            name: name) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['name'] = _36c2.maybeBoxObject(
        object: this.name, hydroState: hydroState, table: _36c2.HydroTable());
    table['showSeparator'] = _36c2.maybeBoxObject(
        object: this.showSeparator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showName'] = _36c2.maybeBoxObject(
        object: this.showName,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['linePrefix'] = _36c2.maybeBoxObject(
        object: this.linePrefix,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['style'] = _eaf3.DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == this.style;
    });
    table['_dart_toDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: toDescription(
                parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                        _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_isFiltered'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.isFiltered(_36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments[1])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getLevel'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.level];
    });
    table['_dart_getEmptyBodyDescription'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.emptyBodyDescription];
    });
    table['_dart_getValue'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [value];
    });
    table['_dart_getAllowWrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.allowWrap];
    });
    table['_dart_getAllowNameWrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.allowNameWrap];
    });
    table['_dart_getAllowTruncate'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.allowTruncate];
    });
    table['_dart_getProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getProperties(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: getChildren(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_toJsonMap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toJsonMap(_36c2.maybeUnBoxAndBuildArgument<
                _eaf3.DiagnosticsSerializationDelegate,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
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
                        : null),
                parentConfiguration: _36c2.maybeUnBoxAndBuildArgument<
                        _eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['parentConfiguration']
                        : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getTextTreeConfiguration'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.textTreeConfiguration];
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
                parentConfiguration:
                    _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['parentConfiguration']
                            : null,
                        parentState: hydroState),
                prefixLineOne: _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixLineOne'] : null,
                    parentState: hydroState),
                prefixOtherLines: _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2 ? luaCallerArguments[1]['prefixOtherLines'] : null,
                    parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _eaf3.DiagnosticsNode unwrap() => this;
  _eaf3.DiagnosticsNode get vmObject => this;
  @_fac9.override
  _fac9.String? toDescription(
      {_eaf3.TextTreeConfiguration? parentConfiguration}) {
    _36c2.Closure closure = table["toDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool isFiltered(minLevel) {
    _36c2.Closure closure = table["isFiltered"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.DiagnosticLevel get level {
    _36c2.Closure closure = table["getLevel"];
    return _36c2.maybeUnBoxEnum(
        values: _eaf3.DiagnosticLevel.values,
        boxedEnum: closure.dispatch([table], parentState: hydroState)[0]);
  }

  @_fac9.override
  _fac9.String? get emptyBodyDescription {
    _36c2.Closure closure = table["getEmptyBodyDescription"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Object? get value {
    _36c2.Closure closure = table["getValue"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get allowWrap {
    _36c2.Closure closure = table["getAllowWrap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get allowNameWrap {
    _36c2.Closure closure = table["getAllowNameWrap"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool get allowTruncate {
    _36c2.Closure closure = table["getAllowTruncate"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> getProperties() {
    _36c2.Closure closure = table["getProperties"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_eaf3.DiagnosticsNode> getChildren() {
    _36c2.Closure closure = table["getChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.Map<_fac9.String, _fac9.Object?> toJsonMap(delegate) {
    super.toJsonMap(delegate);
    _36c2.Closure closure = table["toJsonMap"];
    return _36c2.maybeUnBoxAndBuildArgument<
            _fac9.Map<_fac9.String, _fac9.Object?>,
            _fac9.String>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info,
      _eaf3.TextTreeConfiguration? parentConfiguration}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _eaf3.TextTreeConfiguration? get textTreeConfiguration {
    _36c2.Closure closure = table["getTextTreeConfiguration"];
    return _36c2.maybeUnBoxAndBuildArgument<_eaf3.TextTreeConfiguration?,
            _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _eaf3.TextTreeConfiguration? parentConfiguration,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadDiagnosticsNode(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['diagnosticsNode'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedDiagnosticsNode(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          linePrefix: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['linePrefix']
              : null,
          showName: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['showName']
              : null,
          showSeparator: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['showSeparator']
              : null,
          style: _36c2.maybeUnBoxEnum(
              values: _eaf3.DiagnosticsTreeStyle.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['style']
                  : null),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['name']
              : null)
    ];
  });
  table['diagnosticsNodeMessage'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_eaf3.DiagnosticsNode>(
          object: _eaf3.DiagnosticsNode.message(luaCallerArguments[1],
              allowWrap: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2]['allowWrap']
                  : null,
              level: _36c2.maybeUnBoxEnum(
                  values: _eaf3.DiagnosticLevel.values,
                  boxedEnum: luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['level']
                      : null),
              style: _36c2.maybeUnBoxEnum(
                  values: _eaf3.DiagnosticsTreeStyle.values,
                  boxedEnum: luaCallerArguments.length >= 3
                      ? luaCallerArguments[2]['style']
                      : null)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  table['diagnosticsNodeToJsonList'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
          object: _eaf3.DiagnosticsNode.toJsonList(
              _36c2.maybeUnBoxAndBuildArgument<
                      _fac9.List<_eaf3.DiagnosticsNode>?,
                      _eaf3.DiagnosticsNode>(luaCallerArguments[1],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<_eaf3.DiagnosticsNode?, _fac9.dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              _36c2.maybeUnBoxAndBuildArgument<
                      _eaf3.DiagnosticsSerializationDelegate,
                      _fac9.dynamic>(luaCallerArguments[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_eaf3.DiagnosticsNode>(boxer: (
      {required _eaf3.DiagnosticsNode vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedDiagnosticsNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
