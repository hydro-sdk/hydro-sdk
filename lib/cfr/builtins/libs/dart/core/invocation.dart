import 'dart:core';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/unboxers.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedInvocation extends VMManagedBox<Invocation> {
  VMManagedInvocation(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getMemberName'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Symbol>(
            object: vmObject.memberName,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getTypeArguments'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.typeArguments
                .map((x) => maybeBoxObject<Type>(
                    object: x, hydroState: hydroState, table: HydroTable()))
                .toList(),
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getPositionalArguments'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.positionalArguments,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getNamedArguments'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.namedArguments,
            hydroState: hydroState,
            table: HydroTable())
      ];
    });
    table['getIsMethod'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isMethod];
    });
    table['getIsGetter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isGetter];
    });
    table['getIsSetter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isSetter];
    });
    table['getIsAccessor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [vmObject.isAccessor];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Invocation vmObject;
}

class RTManagedInvocation extends Invocation implements Box<Invocation> {
  RTManagedInvocation({required this.table, required this.hydroState})
      : super() {
    table['vmObject'] = vmObject;
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['_dart_getMemberName'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [memberName];
    });
    table['_dart_getTypeArguments'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.typeArguments];
    });
    table['_dart_getPositionalArguments'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [positionalArguments];
    });
    table['_dart_getNamedArguments'] =
        makeLuaDartFunc(func: (List<dynamic> args) {
      return [namedArguments];
    });
    table['_dart_getIsMethod'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [isMethod];
    });
    table['_dart_getIsGetter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [isGetter];
    });
    table['_dart_getIsSetter'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [isSetter];
    });
    table['_dart_getIsAccessor'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [super.isAccessor];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  Invocation unwrap() => this;
  Invocation get vmObject => this;
  @override
  Symbol get memberName {
    Closure closure = table["getMemberName"];
    return maybeUnBoxAndBuildArgument<Symbol>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<Type> get typeArguments {
    Closure closure = table["getTypeArguments"];
    return maybeUnBoxAndBuildArgument<List<Type>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  List<dynamic> get positionalArguments {
    Closure closure = table["getPositionalArguments"];
    return maybeUnBoxAndBuildArgument<List<dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  Map<Symbol, dynamic> get namedArguments {
    Closure closure = table["getNamedArguments"];
    return maybeUnBoxAndBuildArgument<Map<Symbol, dynamic>>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @override
  bool get isMethod {
    Closure closure = table["getIsMethod"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isGetter {
    Closure closure = table["getIsGetter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isSetter {
    Closure closure = table["getIsSetter"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @override
  bool get isAccessor {
    Closure closure = table["getIsAccessor"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadInvocation(
    {required HydroState hydroState, required HydroTable table}) {
  table['invocation'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [RTManagedInvocation(table: args[0], hydroState: hydroState)];
  });
  table['invocationMethod'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Invocation>(
          object: Invocation.method(
              maybeUnBoxAndBuildArgument<Symbol>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Iterable<Object>>(args[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Map<Symbol, Object>>(args[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['invocationGenericMethod'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Invocation>(
          object: Invocation.genericMethod(
              maybeUnBoxAndBuildArgument<Symbol>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Iterable<Type>>(args[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Iterable<Object>>(args[3],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Map<Symbol, Object>>(args[4],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['invocationGetter'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Invocation>(
          object: Invocation.getter(maybeUnBoxAndBuildArgument<Symbol>(args[1],
              parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table['invocationSetter'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Invocation>(
          object: Invocation.setter(
              maybeUnBoxAndBuildArgument<Symbol>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<Object>(args[2],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<Invocation>(boxer: (
      {required Invocation vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedInvocation(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
