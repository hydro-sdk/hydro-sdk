import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/widgets/focus_manager.dart' as _b485;
import 'package:flutter/src/widgets/focus_traversal.dart' as _65d3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedReadingOrderTraversalPolicy
    extends _36c2.VMManagedBox<_65d3.ReadingOrderTraversalPolicy> {
  VMManagedReadingOrderTraversalPolicy(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['sortDescendants'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_fac9.Iterable>(
            object: vmObject.sortDescendants(
                _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_b485.FocusNode>,
                        _b485.FocusNode>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2
                    .maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                        luaCallerArguments[2],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['invalidateScopeData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.invalidateScopeData(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusScopeNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['changedScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.changedScope(
          node:
              _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['node']
                      : null,
                  parentState: hydroState),
          oldScope: _36c2
              .maybeUnBoxAndBuildArgument<_b485.FocusScopeNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['oldScope']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['findFirstFocusInDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findFirstFocusInDirection(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          _36c2.maybeUnBoxEnum(
              values: _65d3.TraversalDirection.values,
              boxedEnum: luaCallerArguments[2]));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b485.FocusNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['inDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.inDirection(
            _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState),
            _36c2.maybeUnBoxEnum(
                values: _65d3.TraversalDirection.values,
                boxedEnum: luaCallerArguments[2])),
      ];
    });
    table['findFirstFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.findFirstFocus(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b485.FocusNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['findLastFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_b485.FocusNode>(
            object: vmObject.findLastFocus(_36c2.maybeUnBoxAndBuildArgument<
                _b485.FocusNode,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['next'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.next(
            _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
    });
    table['previous'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.previous(
            _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                luaCallerArguments[1],
                parentState: hydroState)),
      ];
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
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _65d3.ReadingOrderTraversalPolicy vmObject;
}

class RTManagedReadingOrderTraversalPolicy
    extends _65d3.ReadingOrderTraversalPolicy
    implements _36c2.Box<_65d3.ReadingOrderTraversalPolicy> {
  RTManagedReadingOrderTraversalPolicy(
      {required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_sortDescendants'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.sortDescendants(
                _36c2.maybeUnBoxAndBuildArgument<
                        _fac9.Iterable<_b485.FocusNode>,
                        _b485.FocusNode>(luaCallerArguments[1],
                    parentState: hydroState),
                _36c2
                    .maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                        luaCallerArguments[2],
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_invalidateScopeData'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.invalidateScopeData(
          _36c2.maybeUnBoxAndBuildArgument<_b485.FocusScopeNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_changedScope'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.changedScope(
          node:
              _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['node']
                      : null,
                  parentState: hydroState),
          oldScope: _36c2
              .maybeUnBoxAndBuildArgument<_b485.FocusScopeNode?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['oldScope']
                      : null,
                  parentState: hydroState));
      return [];
    });
    table['_dart_findFirstFocusInDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.findFirstFocusInDirection(
                _36c2
                    .maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _65d3.TraversalDirection.values,
                    boxedEnum: luaCallerArguments[2])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_inDirection'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.inDirection(
                _36c2
                    .maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
                        luaCallerArguments[1],
                        parentState: hydroState),
                _36c2.maybeUnBoxEnum(
                    values: _65d3.TraversalDirection.values,
                    boxedEnum: luaCallerArguments[2])),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_findFirstFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.findFirstFocus(_36c2.maybeUnBoxAndBuildArgument<
                _b485.FocusNode,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_findLastFocus'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.findLastFocus(_36c2.maybeUnBoxAndBuildArgument<
                _b485.FocusNode,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_next'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.next(_36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_previous'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.previous(_36c2.maybeUnBoxAndBuildArgument<
                _b485.FocusNode,
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _65d3.ReadingOrderTraversalPolicy unwrap() => this;
  _65d3.ReadingOrderTraversalPolicy get vmObject => this;
  @_fac9.override
  _fac9.Iterable<_b485.FocusNode> sortDescendants(descendants, currentNode) {
    _36c2.Closure closure = table["sortDescendants"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_b485.FocusNode>,
            _b485.FocusNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void invalidateScopeData(node) {
    super.invalidateScopeData(node);
    _36c2.Closure closure = table["invalidateScopeData"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void changedScope({_b485.FocusNode? node, _b485.FocusScopeNode? oldScope}) {
    super.changedScope(node: node, oldScope: oldScope);
    _36c2.Closure closure = table["changedScope"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b485.FocusNode? findFirstFocusInDirection(currentNode, direction) {
    _36c2.Closure closure = table["findFirstFocusInDirection"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool inDirection(currentNode, direction) {
    super.inDirection(currentNode, direction);
    _36c2.Closure closure = table["inDirection"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b485.FocusNode? findFirstFocus(currentNode) {
    _36c2.Closure closure = table["findFirstFocus"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _b485.FocusNode findLastFocus(currentNode) {
    _36c2.Closure closure = table["findLastFocus"];
    return _36c2.maybeUnBoxAndBuildArgument<_b485.FocusNode, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool next(currentNode) {
    _36c2.Closure closure = table["next"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.bool previous(currentNode) {
    _36c2.Closure closure = table["previous"];
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
}

void loadReadingOrderTraversalPolicy(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['readingOrderTraversalPolicy'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedReadingOrderTraversalPolicy(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_65d3.ReadingOrderTraversalPolicy>(boxer: (
      {required _65d3.ReadingOrderTraversalPolicy vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedReadingOrderTraversalPolicy(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
