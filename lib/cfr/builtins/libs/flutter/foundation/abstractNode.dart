import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/node.dart' as _b05e;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedAbstractNode extends _36c2.VMManagedBox<_b05e.AbstractNode> {
  VMManagedAbstractNode(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
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
    table['getAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
    });
    table['attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.attach(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_b05e.AbstractNode?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _b05e.AbstractNode vmObject;
}

class RTManagedAbstractNode extends _b05e.AbstractNode
    implements _36c2.Box<_b05e.AbstractNode> {
  RTManagedAbstractNode({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getDepth'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_redepthChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.redepthChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_redepthChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_getOwner'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getAttached'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_attach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.attach(
          _36c2.maybeUnBoxAndBuildArgument<_fac9.Object, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_detach'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_getParent'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_adoptChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.adoptChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_dropChild'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.dropChild(
          _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _b05e.AbstractNode unwrap() => this;
  _b05e.AbstractNode get vmObject => this;
  @_fac9.override
  _fac9.int get depth {
    _36c2.Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void redepthChild(child) {
    _36c2.Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void redepthChildren() {
    _36c2.Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.Object? get owner {
    _36c2.Closure closure = table["getOwner"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.Object?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.bool get attached {
    _36c2.Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void attach(owner) {
    super.attach(owner);
    _36c2.Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void detach() {
    super.detach();
    _36c2.Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _b05e.AbstractNode? get parent {
    _36c2.Closure closure = table["getParent"];
    return _36c2.maybeUnBoxAndBuildArgument<_b05e.AbstractNode?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  void adoptChild(child) {
    super.adoptChild(child);
    _36c2.Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void dropChild(child) {
    super.dropChild(child);
    _36c2.Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAbstractNode(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['abstractNode'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedAbstractNode(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_b05e.AbstractNode>(boxer: (
      {required _b05e.AbstractNode vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedAbstractNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
