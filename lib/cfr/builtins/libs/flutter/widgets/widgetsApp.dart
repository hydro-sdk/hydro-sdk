import 'dart:core' as _fac9;
import 'dart:ui' as _a643;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;
import 'package:flutter/src/foundation/key.dart' as _ab4a;
import 'package:flutter/src/painting/text_style.dart' as _74d0;
import 'package:flutter/src/widgets/actions.dart' as _c0f4;
import 'package:flutter/src/widgets/app.dart' as _38d4;
import 'package:flutter/src/widgets/framework.dart' as _e2dc;
import 'package:flutter/src/widgets/localizations.dart' as _a483;
import 'package:flutter/src/widgets/navigator.dart' as _a37d;
import 'package:flutter/src/widgets/pages.dart' as _18d3;
import 'package:flutter/src/widgets/router.dart' as _f6ef;
import 'package:flutter/src/widgets/shortcuts.dart' as _1710;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedWidgetsApp extends _36c2.VMManagedBox<_38d4.WidgetsApp> {
  VMManagedWidgetsApp(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['navigatorKey'] = _36c2.maybeBoxObject<_e2dc.GlobalKey?>(
        object: vmObject.navigatorKey,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['routeInformationParser'] =
        _36c2.maybeBoxObject<_f6ef.RouteInformationParser?>(
            object: vmObject.routeInformationParser,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['routerDelegate'] = _36c2.maybeBoxObject<_f6ef.RouterDelegate?>(
        object: vmObject.routerDelegate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backButtonDispatcher'] =
        _36c2.maybeBoxObject<_f6ef.BackButtonDispatcher?>(
            object: vmObject.backButtonDispatcher,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['routeInformationProvider'] =
        _36c2.maybeBoxObject<_f6ef.RouteInformationProvider?>(
            object: vmObject.routeInformationProvider,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['home'] = _36c2.maybeBoxObject<_e2dc.Widget?>(
        object: vmObject.home,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['routes'] = _36c2.maybeBoxObject<_fac9.Map?>(
        object: vmObject.routes,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['initialRoute'] = vmObject.initialRoute;
    table['navigatorObservers'] =
        _36c2.maybeBoxObject<_fac9.List<_a37d.NavigatorObserver>?>(
            object: vmObject.navigatorObservers,
            hydroState: hydroState,
            table: _36c2.HydroTable());
    table['title'] = vmObject.title;
    table['textStyle'] = _36c2.maybeBoxObject<_74d0.TextStyle?>(
        object: vmObject.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject<_a643.Color>(
        object: vmObject.color,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['locale'] = _36c2.maybeBoxObject<_a643.Locale?>(
        object: vmObject.locale,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['localizationsDelegates'] = _36c2.maybeBoxObject<_fac9.Iterable?>(
        object: vmObject.localizationsDelegates,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['supportedLocales'] = _36c2.maybeBoxObject<_fac9.Iterable>(
        object: vmObject.supportedLocales,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showPerformanceOverlay'] = vmObject.showPerformanceOverlay;
    table['checkerboardRasterCacheImages'] =
        vmObject.checkerboardRasterCacheImages;
    table['checkerboardOffscreenLayers'] = vmObject.checkerboardOffscreenLayers;
    table['showSemanticsDebugger'] = vmObject.showSemanticsDebugger;
    table['debugShowWidgetInspector'] = vmObject.debugShowWidgetInspector;
    table['debugShowCheckedModeBanner'] = vmObject.debugShowCheckedModeBanner;
    table['shortcuts'] = _36c2.maybeBoxObject<_fac9.Map?>(
        object: vmObject.shortcuts,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject<_fac9.Map?>(
        object: vmObject.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['restorationScopeId'] = vmObject.restorationScopeId;
    table['useInheritedMediaQuery'] = vmObject.useInheritedMediaQuery;
    table['key'] = _36c2.maybeBoxObject<_ab4a.Key?>(
        object: vmObject.key,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.State>(
            object: vmObject.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject<_e2dc.StatefulElement>(
            object: vmObject.createElement(),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
    table['toStringShort'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShort(),
      ];
    });
    table['debugFillProperties'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      vmObject.debugFillProperties(_36c2.maybeUnBoxAndBuildArgument<
          _eaf3.DiagnosticPropertiesBuilder,
          _fac9.dynamic>(luaCallerArguments[1], parentState: hydroState));
      return [];
    });
    table['getHashCode'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        vmObject.toStringShallow(
            joiner: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['joiner']
                : null,
            minLevel: _36c2.maybeUnBoxEnum(
                values: _eaf3.DiagnosticLevel.values,
                boxedEnum: luaCallerArguments.length >= 2
                    ? luaCallerArguments[1]['minLevel']
                    : null)),
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
            prefixLineOne: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixLineOne']
                : null,
            prefixOtherLines: luaCallerArguments.length >= 2
                ? luaCallerArguments[1]['prefixOtherLines']
                : null),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _38d4.WidgetsApp vmObject;
}

class RTManagedWidgetsApp extends _38d4.WidgetsApp
    implements _36c2.Box<_38d4.WidgetsApp> {
  RTManagedWidgetsApp(
      {_fac9.Map<_fac9.Type, _c0f4.Action<_c0f4.Intent>>? actions,
      _e2dc.Widget Function(_e2dc.BuildContext context, _e2dc.Widget? child)?
          builder,
      required _fac9.bool checkerboardOffscreenLayers,
      required _fac9.bool checkerboardRasterCacheImages,
      required _fac9.bool debugShowCheckedModeBanner,
      required _fac9.bool debugShowWidgetInspector,
      _e2dc.Widget? home,
      _fac9.String? initialRoute,
      _e2dc.Widget Function(_e2dc.BuildContext context, void Function() onPressed)?
          inspectorSelectButtonBuilder,
      _ab4a.Key? key,
      _a643.Locale? locale,
      _a643.Locale? Function(_fac9.List<_a643.Locale>? locales, _fac9.Iterable<_a643.Locale> supportedLocales)?
          localeListResolutionCallback,
      _a643.Locale? Function(_a643.Locale? locale, _fac9.Iterable<_a643.Locale> supportedLocales)?
          localeResolutionCallback,
      _fac9.Iterable<_a483.LocalizationsDelegate<_fac9.dynamic>>?
          localizationsDelegates,
      _e2dc.GlobalKey<_a37d.NavigatorState>? navigatorKey,
      required _fac9.List<_a37d.NavigatorObserver> navigatorObservers,
      _fac9.List<_a37d.Route<_fac9.dynamic>> Function(_fac9.String initialRoute)?
          onGenerateInitialRoutes,
      _a37d.Route<_fac9.dynamic>? Function(_a37d.RouteSettings settings)?
          onGenerateRoute,
      _fac9.String Function(_e2dc.BuildContext context)? onGenerateTitle,
      _a37d.Route<_fac9.dynamic>? Function(_a37d.RouteSettings settings)?
          onUnknownRoute,
      _18d3.PageRoute<T> Function<T>(_a37d.RouteSettings settings,
              _e2dc.Widget Function(_e2dc.BuildContext context) builder)?
          pageRouteBuilder,
      _fac9.String? restorationScopeId,
      required _fac9.Map<_fac9.String, _e2dc.Widget Function(_e2dc.BuildContext context)>
          routes,
      _fac9.Map<_1710.ShortcutActivator, _c0f4.Intent>? shortcuts,
      required _fac9.bool showPerformanceOverlay,
      required _fac9.bool showSemanticsDebugger,
      required _fac9.Iterable<_a643.Locale> supportedLocales,
      _74d0.TextStyle? textStyle,
      required _fac9.String title,
      required _fac9.bool useInheritedMediaQuery,
      required _a643.Color color,
      required this.table,
      required this.hydroState})
      : super(
            actions: actions,
            builder: builder,
            checkerboardOffscreenLayers: checkerboardOffscreenLayers,
            checkerboardRasterCacheImages: checkerboardRasterCacheImages,
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            debugShowWidgetInspector: debugShowWidgetInspector,
            home: home,
            initialRoute: initialRoute,
            inspectorSelectButtonBuilder: inspectorSelectButtonBuilder,
            key: key,
            locale: locale,
            localeListResolutionCallback: localeListResolutionCallback,
            localeResolutionCallback: localeResolutionCallback,
            localizationsDelegates: localizationsDelegates,
            navigatorKey: navigatorKey,
            navigatorObservers: navigatorObservers,
            onGenerateInitialRoutes: onGenerateInitialRoutes,
            onGenerateRoute: onGenerateRoute,
            onGenerateTitle: onGenerateTitle,
            onUnknownRoute: onUnknownRoute,
            pageRouteBuilder: pageRouteBuilder,
            restorationScopeId: restorationScopeId,
            routes: routes,
            shortcuts: shortcuts,
            showPerformanceOverlay: showPerformanceOverlay,
            showSemanticsDebugger: showSemanticsDebugger,
            supportedLocales: supportedLocales,
            textStyle: textStyle,
            title: title,
            useInheritedMediaQuery: useInheritedMediaQuery,
            color: color) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['navigatorKey'] = _36c2.maybeBoxObject(
        object: this.navigatorKey,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['routeInformationParser'] = _36c2.maybeBoxObject(
        object: routeInformationParser,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['routerDelegate'] = _36c2.maybeBoxObject(
        object: routerDelegate,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['backButtonDispatcher'] = _36c2.maybeBoxObject(
        object: backButtonDispatcher,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['routeInformationProvider'] = _36c2.maybeBoxObject(
        object: routeInformationProvider,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['home'] = _36c2.maybeBoxObject(
        object: this.home, hydroState: hydroState, table: _36c2.HydroTable());
    table['routes'] = _36c2.maybeBoxObject(
        object: this.routes, hydroState: hydroState, table: _36c2.HydroTable());
    table['initialRoute'] = _36c2.maybeBoxObject(
        object: this.initialRoute,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['navigatorObservers'] = _36c2.maybeBoxObject(
        object: this.navigatorObservers,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['title'] = _36c2.maybeBoxObject(
        object: this.title, hydroState: hydroState, table: _36c2.HydroTable());
    table['textStyle'] = _36c2.maybeBoxObject(
        object: this.textStyle,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['color'] = _36c2.maybeBoxObject(
        object: this.color, hydroState: hydroState, table: _36c2.HydroTable());
    table['locale'] = _36c2.maybeBoxObject(
        object: this.locale, hydroState: hydroState, table: _36c2.HydroTable());
    table['localizationsDelegates'] = _36c2.maybeBoxObject(
        object: this.localizationsDelegates,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['supportedLocales'] = _36c2.maybeBoxObject(
        object: this.supportedLocales,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showPerformanceOverlay'] = _36c2.maybeBoxObject(
        object: this.showPerformanceOverlay,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkerboardRasterCacheImages'] = _36c2.maybeBoxObject(
        object: this.checkerboardRasterCacheImages,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['checkerboardOffscreenLayers'] = _36c2.maybeBoxObject(
        object: this.checkerboardOffscreenLayers,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showSemanticsDebugger'] = _36c2.maybeBoxObject(
        object: this.showSemanticsDebugger,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugShowWidgetInspector'] = _36c2.maybeBoxObject(
        object: this.debugShowWidgetInspector,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['debugShowCheckedModeBanner'] = _36c2.maybeBoxObject(
        object: this.debugShowCheckedModeBanner,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['shortcuts'] = _36c2.maybeBoxObject(
        object: this.shortcuts,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['actions'] = _36c2.maybeBoxObject(
        object: this.actions,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['restorationScopeId'] = _36c2.maybeBoxObject(
        object: this.restorationScopeId,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['useInheritedMediaQuery'] = _36c2.maybeBoxObject(
        object: this.useInheritedMediaQuery,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['key'] = _36c2.maybeBoxObject(
        object: this.key, hydroState: hydroState, table: _36c2.HydroTable());
    table['_dart_createState'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createState(),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
    });
    table['_dart_createElement'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.createElement(),
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
    table['_dart_toStringShallow'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.toStringShallow(
                joiner: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['joiner']
                            : null,
                        parentState: hydroState),
                minLevel: _36c2.maybeUnBoxEnum(
                    values: _eaf3.DiagnosticLevel.values,
                    boxedEnum: luaCallerArguments.length >= 2
                        ? luaCallerArguments[1]['minLevel']
                        : null)),
            hydroState: hydroState,
            table: _36c2.HydroTable())
      ];
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
                prefixLineOne:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixLineOne']
                            : null,
                        parentState: hydroState),
                prefixOtherLines:
                    _36c2.maybeUnBoxAndBuildArgument<_fac9.String?, _fac9.dynamic>(
                        luaCallerArguments.length >= 2
                            ? luaCallerArguments[1]['prefixOtherLines']
                            : null,
                        parentState: hydroState)),
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
    table['_dart_debugDescribeChildren'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [
        _36c2.maybeBoxObject(
            object: super.debugDescribeChildren(),
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
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _38d4.WidgetsApp unwrap() => this;
  _38d4.WidgetsApp get vmObject => this;
  @_fac9.override
  _e2dc.State<_38d4.WidgetsApp> createState() {
    _36c2.Closure closure = table["createState"];
    return _36c2.maybeUnBoxAndBuildArgument<_e2dc.State<_38d4.WidgetsApp>,
            _38d4.WidgetsApp>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _e2dc.StatefulElement createElement() {
    _36c2.Closure closure = table["createElement"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_e2dc.StatefulElement, _fac9.dynamic>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toStringShort() {
    _36c2.Closure closure = table["toStringShort"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  void debugFillProperties(properties) {
    super.debugFillProperties(properties);
    _36c2.Closure closure = table["debugFillProperties"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = ', ',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }

  @_fac9.override
  _fac9.String toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = '',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
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
  _fac9.List<_eaf3.DiagnosticsNode> debugDescribeChildren() {
    _36c2.Closure closure = table["debugDescribeChildren"];
    return _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_eaf3.DiagnosticsNode>,
            _eaf3.DiagnosticsNode>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }

  @_fac9.override
  _fac9.String toString(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.info}) {
    _36c2.Closure closure = table["__tostring"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}

void loadWidgetsApp(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['widgetsApp'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    _36c2.Closure? unpackedbuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['builder']
        : null;

    _36c2.Closure? unpackedinspectorSelectButtonBuilder =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['inspectorSelectButtonBuilder']
            : null;

    _36c2.Closure? unpackedlocaleListResolutionCallback =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['localeListResolutionCallback']
            : null;
    _36c2.Closure? unpackedlocaleResolutionCallback =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['localeResolutionCallback']
            : null;

    _36c2.Closure? unpackedonGenerateInitialRoutes =
        luaCallerArguments.length >= 2
            ? luaCallerArguments[1]['onGenerateInitialRoutes']
            : null;
    _36c2.Closure? unpackedonGenerateRoute = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onGenerateRoute']
        : null;
    _36c2.Closure? unpackedonGenerateTitle = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onGenerateTitle']
        : null;
    _36c2.Closure? unpackedonUnknownRoute = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['onUnknownRoute']
        : null;
    _36c2.Closure? unpackedpageRouteBuilder = luaCallerArguments.length >= 2
        ? luaCallerArguments[1]['pageRouteBuilder']
        : null;

    return [
      RTManagedWidgetsApp(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          actions: _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.Map<_fac9.Type, _c0f4.Action<_c0f4.Intent>>?,
                  _fac9.Type>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['actions'] : null,
              parentState: hydroState),
          builder: unpackedbuilder != null
              ? (context, child) =>
                  _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                      unpackedbuilder.dispatch(
                        [luaCallerArguments[0], context, child],
                        parentState: hydroState,
                      )[0],
                      parentState: hydroState)
              : null,
          checkerboardOffscreenLayers: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['checkerboardOffscreenLayers']
              : null,
          checkerboardRasterCacheImages: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['checkerboardRasterCacheImages']
              : null,
          debugShowCheckedModeBanner: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['debugShowCheckedModeBanner']
              : null,
          debugShowWidgetInspector: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['debugShowWidgetInspector']
              : null,
          home: _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget?, _fac9.dynamic>(
              luaCallerArguments.length >= 2
                  ? luaCallerArguments[1]['home']
                  : null,
              parentState: hydroState),
          initialRoute: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['initialRoute']
              : null,
          inspectorSelectButtonBuilder: unpackedinspectorSelectButtonBuilder != null
              ? (context, onPressed) => _36c2.maybeUnBoxAndBuildArgument<_e2dc.Widget, _fac9.dynamic>(
                  unpackedinspectorSelectButtonBuilder.dispatch(
                    [luaCallerArguments[0], context, onPressed],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          key: _36c2.maybeUnBoxAndBuildArgument<_ab4a.Key?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['key'] : null, parentState: hydroState),
          locale: _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['locale'] : null, parentState: hydroState),
          localeListResolutionCallback: unpackedlocaleListResolutionCallback != null
              ? (locales, supportedLocales) => _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedlocaleListResolutionCallback.dispatch(
                      [luaCallerArguments[0], locales, supportedLocales],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState)
              : null,
          localeResolutionCallback: unpackedlocaleResolutionCallback != null
              ? (locale, supportedLocales) => _36c2.maybeUnBoxAndBuildArgument<_a643.Locale?, _fac9.dynamic>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedlocaleResolutionCallback.dispatch(
                      [luaCallerArguments[0], locale, supportedLocales],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState)
              : null,
          localizationsDelegates: _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_a483.LocalizationsDelegate<_fac9.dynamic>>?, _a483.LocalizationsDelegate<_fac9.dynamic>>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['localizationsDelegates'] : null, parentState: hydroState),
          navigatorKey: _36c2.maybeUnBoxAndBuildArgument<_e2dc.GlobalKey<_a37d.NavigatorState>?, _a37d.NavigatorState>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigatorKey'] : null, parentState: hydroState),
          navigatorObservers: _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a37d.NavigatorObserver>, _a37d.NavigatorObserver>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['navigatorObservers'] : null, parentState: hydroState),
          onGenerateInitialRoutes: unpackedonGenerateInitialRoutes != null
              ? (initialRoute) => _36c2.maybeUnBoxAndBuildArgument<_fac9.List<_a37d.Route<_fac9.dynamic>>, _a37d.Route<_fac9.dynamic>>(
                  unpackedonGenerateInitialRoutes.dispatch(
                    [luaCallerArguments[0], initialRoute],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          onGenerateRoute: unpackedonGenerateRoute != null
              ? (settings) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedonGenerateRoute.dispatch(
                      [luaCallerArguments[0], settings],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState)
              : null,
          onGenerateTitle: unpackedonGenerateTitle != null
              ? (context) => unpackedonGenerateTitle.dispatch(
                    [luaCallerArguments[0], context],
                    parentState: hydroState,
                  )[0]
              : null,
          onUnknownRoute: unpackedonUnknownRoute != null
              ? (settings) => _36c2.maybeUnBoxAndBuildArgument<_a37d.Route<_fac9.dynamic>?, _fac9.dynamic>(
                  ((
                    final _fac9.List<_fac9.dynamic>? val,
                  ) =>
                      val != null && val.length >= 1 ? val[0] : null)(
                    unpackedonUnknownRoute.dispatch(
                      [luaCallerArguments[0], settings],
                      parentState: hydroState,
                    ),
                  ),
                  parentState: hydroState)
              : null,
          pageRouteBuilder: unpackedpageRouteBuilder != null
              ? <T>(settings, builder) => _36c2.maybeUnBoxAndBuildArgument<_18d3.PageRoute<_fac9.dynamic>, _fac9.dynamic>(
                  unpackedpageRouteBuilder.dispatch(
                    [luaCallerArguments[0], settings, builder],
                    parentState: hydroState,
                  )[0],
                  parentState: hydroState)
              : null,
          restorationScopeId: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['restorationScopeId'] : null,
          routes: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_fac9.String, _e2dc.Widget Function(_e2dc.BuildContext context)>, _fac9.String>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['routes'] : null, parentState: hydroState),
          shortcuts: _36c2.maybeUnBoxAndBuildArgument<_fac9.Map<_1710.ShortcutActivator, _c0f4.Intent>?, _1710.ShortcutActivator>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['shortcuts'] : null, parentState: hydroState),
          showPerformanceOverlay: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showPerformanceOverlay'] : null,
          showSemanticsDebugger: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['showSemanticsDebugger'] : null,
          supportedLocales: _36c2.maybeUnBoxAndBuildArgument<_fac9.Iterable<_a643.Locale>, _a643.Locale>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['supportedLocales'] : null, parentState: hydroState),
          textStyle: _36c2.maybeUnBoxAndBuildArgument<_74d0.TextStyle?, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['textStyle'] : null, parentState: hydroState),
          title: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['title'] : null,
          useInheritedMediaQuery: luaCallerArguments.length >= 2 ? luaCallerArguments[1]['useInheritedMediaQuery'] : null,
          color: _36c2.maybeUnBoxAndBuildArgument<_a643.Color, _fac9.dynamic>(luaCallerArguments.length >= 2 ? luaCallerArguments[1]['color'] : null, parentState: hydroState))
    ];
  });
  table['widgetsAppDefaultShortcuts'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      _36c2.maybeBoxObject<_fac9.Map>(
          object: _38d4.WidgetsApp.defaultShortcuts,
          hydroState: hydroState,
          table: _36c2.HydroTable()),
    ];
  });
  _36c2.registerBoxer<_38d4.WidgetsApp>(boxer: (
      {required _38d4.WidgetsApp vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedWidgetsApp(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
