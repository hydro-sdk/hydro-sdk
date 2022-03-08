import 'dart:core' as _fac9;

import 'package:flutter/src/animation/animation.dart' as _86ca;
import 'package:flutter/src/material/input_decorator.dart' as _ea86;
import 'package:flutter/src/material/search.dart' as _baef;
import 'package:flutter/src/material/theme_data.dart' as _9716;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/services/text_input.dart' as _8577;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/preferred_size.dart' as _75de;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedSearchDelegate
    extends _36c2.VMManagedBox<_baef.SearchDelegate<_fac9.dynamic>> {
  VMManagedSearchDelegate(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['searchFieldLabel'] = vmObject.searchFieldLabel;
    table['searchFieldStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.searchFieldStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['searchFieldDecorationTheme'] =
        _36c2.maybeBoxObject<_ea86.InputDecorationTheme?>(
            object: vmObject.searchFieldDecorationTheme,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['keyboardType'] = _36c2.maybeBoxObject<_8577.TextInputType?>(
        object: vmObject.keyboardType,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textInputAction'] = _8577.TextInputAction.values.indexWhere((x) {
      return x == vmObject.textInputAction;
    });
    table['buildSuggestions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildSuggestions(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildResults'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.Widget>(
            object: vmObject.buildResults(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['buildLeading'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.buildLeading(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_e2dc.Widget?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['buildActions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.buildActions(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_fac9.List<_fac9.dynamic>>(
              object: returnValue
                  .map((x) => _36c2.maybeBoxObject<_e2dc.Widget>(
                      object: x,
                      hydroState: hydroState,
                      table: _36c2.HydroTable()))
                  .toList(),
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['buildBottom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      final returnValue = vmObject.buildBottom(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      if (returnValue != null) {
        return [
          _36c2.maybeBoxObject<_75de.PreferredSizeWidget?>(
              object: returnValue,
              hydroState: hydroState,
              table: _36c2.HydroTable()),
        ];
      }
      return [];
    });
    table['appBarTheme'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_9716.ThemeData>(
            object: vmObject.appBarTheme(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['getQuery'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.query,
      ];
    });
    table['setQuery'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.query = (luaCallerArguments[1]);
      return [];
    });
    table['showResults'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showResults(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['showSuggestions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.showSuggestions(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['close'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.close(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['getTransitionAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_86ca.Animation>(
            object: vmObject.transitionAnimation,
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _baef.SearchDelegate<_fac9.dynamic> vmObject;
}

class RTManagedSearchDelegate extends _baef.SearchDelegate
    implements _36c2.Box<_baef.SearchDelegate> {
  RTManagedSearchDelegate(
      {_8577.TextInputType? keyboardType,
      _ea86.InputDecorationTheme? searchFieldDecorationTheme,
      _fac9.String? searchFieldLabel,
      _74d0.TextStyle? searchFieldStyle,
      required _8577.TextInputAction textInputAction,
      required this.table,
      required this.hydroState})
      : super(
            keyboardType: keyboardType,
            searchFieldDecorationTheme: searchFieldDecorationTheme,
            searchFieldLabel: searchFieldLabel,
            searchFieldStyle: searchFieldStyle,
            textInputAction: textInputAction) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['searchFieldLabel'] = _36c2.maybeBoxObject(
        object: this.searchFieldLabel,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['searchFieldStyle'] = _36c2.maybeBoxObject(
        object: this.searchFieldStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['searchFieldDecorationTheme'] = _36c2.maybeBoxObject(
        object: this.searchFieldDecorationTheme,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['keyboardType'] = _36c2.maybeBoxObject(
        object: this.keyboardType,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['textInputAction'] = _8577.TextInputAction.values.indexWhere((x) {
      return x == this.textInputAction;
    });
    table['_dart_buildSuggestions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: buildSuggestions(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildResults'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: buildResults(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildLeading'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: buildLeading(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildActions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: buildActions(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_buildBottom'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.buildBottom(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_appBarTheme'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.appBarTheme(_36c2.maybeUnBoxAndBuildArgument<
                _e2dc.BuildContext,
                _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_getQuery'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.query];
    });
    table['_dart_setQuery'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.query =
          (_36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_showResults'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showResults(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_showSuggestions'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.showSuggestions(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState));
      return [];
    });
    table['_dart_close'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      super.close(
          _36c2.maybeUnBoxAndBuildArgument<_e2dc.BuildContext, _fac9.dynamic>(
              luaCallerArguments[1],
              parentState: hydroState),
          luaCallerArguments[2]);
      return [];
    });
    table['_dart_getTransitionAnimation'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [super.transitionAnimation];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _baef.SearchDelegate unwrap() => this;
  _baef.SearchDelegate get vmObject => this;
  @_fac9.override
  _e2dc.Widget buildSuggestions(context) {
    _36c2.Closure closure = table["buildSuggestions"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.Widget buildResults(context) {
    _36c2.Closure closure = table["buildResults"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.Widget? buildLeading(context) {
    _36c2.Closure closure = table["buildLeading"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.List<_e2dc.Widget>? buildActions(context) {
    _36c2.Closure closure = table["buildActions"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_e2dc.Widget>?, _e2dc.Widget>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _75de.PreferredSizeWidget? buildBottom(context) {
    _36c2.Closure closure = table["buildBottom"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_75de.PreferredSizeWidget?, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _9716.ThemeData appBarTheme(context) {
    _36c2.Closure closure = table["appBarTheme"];
    return _36c2.maybeUnBoxAndBuildArgument<_9716.ThemeData, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String get query {
    _36c2.Closure closure = table["getQuery"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void set query(value) {
    _36c2.Closure closure = table["setQuery"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void showResults(context) {
    _36c2.Closure closure = table["showResults"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void showSuggestions(context) {
    _36c2.Closure closure = table["showSuggestions"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void close(context, result) {
    _36c2.Closure closure = table["close"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _86ca.Animation<_fac9.double> get transitionAnimation {
    _36c2.Closure closure = table["getTransitionAnimation"];
    return _36c2.maybeUnBoxAndBuildArgument<_86ca.Animation<_fac9.double>,
            _fac9.double>(closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}

void loadSearchDelegate(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['searchDelegate'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedSearchDelegate(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          keyboardType: _36c2
              .maybeUnBoxAndBuildArgument<_8577.TextInputType?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['keyboardType'] : null,
                  parentState: hydroState),
          searchFieldDecorationTheme:
              _36c2.maybeUnBoxAndBuildArgument<_ea86.InputDecorationTheme?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2
                      ? luaCallerArguments[1]['searchFieldDecorationTheme']
                      : null,
                  parentState: hydroState),
          searchFieldLabel: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['searchFieldLabel']
              : null,
          searchFieldStyle:
              _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(
                  luaCallerArguments.length >= 2 ? luaCallerArguments[1]['searchFieldStyle'] : null,
                  parentState: hydroState),
          textInputAction: _36c2.maybeUnBoxEnum(values: _8577.TextInputAction.values, boxedEnum: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textInputAction'] : null))
    ];
  });
  _36c2.registerBoxer<_baef.SearchDelegate>(boxer: (
      {required _baef.SearchDelegate vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedSearchDelegate(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
