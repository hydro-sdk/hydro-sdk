import 'dart:core';

import 'package:flutter/src/foundation/node.dart';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedAbstractNode extends VMManagedBox<AbstractNode> {
  VMManagedAbstractNode(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.depth,
      ];
    });
    table['redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.redepthChildren();
      return [];
    });
    table['getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.owner;
      if (returnValue != null) {
        return [
          maybeBoxObject<Object?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.attached,
      ];
    });
    table['attach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.attach(maybeUnBoxAndBuildArgument<Object, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['detach'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      vmObject.detach();
      return [];
    });
    table['getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.parent;
      if (returnValue != null) {
        return [
          maybeBoxObject<AbstractNode?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final AbstractNode vmObject;
}

class RTManagedAbstractNode extends AbstractNode implements Box<AbstractNode> {
  RTManagedAbstractNode({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['_dart_getDepth'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.depth];
    });
    table['_dart_redepthChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_redepthChildren'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.redepthChildren();
      return [];
    });
    table['_dart_getOwner'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.owner];
    });
    table['_dart_getAttached'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.attached];
    });
    table['_dart_attach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.attach(maybeUnBoxAndBuildArgument<Object, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_detach'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.detach();
      return [];
    });
    table['_dart_getParent'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [super.parent];
    });
    table['_dart_adoptChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.adoptChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
    table['_dart_dropChild'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      super.dropChild(maybeUnBoxAndBuildArgument<AbstractNode, dynamic>(
          luaCallerArguments[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  AbstractNode unwrap() => this;
  AbstractNode get vmObject => this;
  @override
  int get depth {
    Closure closure = table["getDepth"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void redepthChild(AbstractNode child) {
    Closure closure = table["redepthChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void redepthChildren() {
    Closure closure = table["redepthChildren"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  Object? get owner {
    Closure closure = table["getOwner"];
    return maybeUnBoxAndBuildArgument<Object?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get attached {
    Closure closure = table["getAttached"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void attach(Object owner) {
    super.attach(owner);
    Closure closure = table["attach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void detach() {
    super.detach();
    Closure closure = table["detach"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  AbstractNode? get parent {
    Closure closure = table["getParent"];
    return maybeUnBoxAndBuildArgument<AbstractNode?, dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  void adoptChild(AbstractNode child) {
    super.adoptChild(child);
    Closure closure = table["adoptChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  void dropChild(AbstractNode child) {
    super.dropChild(child);
    Closure closure = table["dropChild"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadAbstractNode(
    {required HydroState hydroState, required HydroTable table}) {
  table['abstractNode'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedAbstractNode(
          table: luaCallerArguments[0], hydroState: hydroState)
    ];
  });
  registerBoxer<AbstractNode>(boxer: (
      {required AbstractNode vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedAbstractNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
