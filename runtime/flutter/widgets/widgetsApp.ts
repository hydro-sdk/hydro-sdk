import { IIterable } from "../../dart/core/iterable";
import { IList, List } from "../../dart/core/list";
import { IMap, Map } from "../../dart/core/map";
import { IMapEntry, MapEntry } from "../../dart/core/mapEntry";
import { Type } from "../../dart/core/type";
import { IColor } from "../../dart/ui/color";
import { ILocale, Locale } from "../../dart/ui/locale";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextStyle } from "../painting/textStyle";
import { LogicalKeyboardKey } from "../services/logicalKeyboardKey";
import { IAction } from "./action";
import { ActivateIntent } from "./activateIntent";
import { IBackButtonDispatcher } from "./backButtonDispatcher";
import { IBuildContext } from "./buildContext";
import { ButtonActivateIntent } from "./buttonActivateIntent";
import { DirectionalFocusIntent } from "./directionalFocusIntent";
import { DismissIntent } from "./dismissIntent";
import { IGlobalKey } from "./globalKey";
import { IIntent } from "./intent";
import { ILocalizationsDelegate } from "./localizationsDelegate";
import { INavigatorObserver } from "./navigatorObserver";
import { INavigatorState } from "./navigatorState";
import { NextFocusIntent } from "./nextFocusIntent";
import { IPageRoute } from "./pageRoute";
import { PreviousFocusIntent } from "./previousFocusIntent";
import { PrioritizedIntents } from "./prioritizedIntents";
import { IRoute } from "./route";
import { IRouteInformationParser } from "./routeInformationParser";
import { IRouteInformationProvider } from "./routeInformationProvider";
import { IRouterDelegate } from "./routerDelegate";
import { IRouteSettings } from "./routeSettings";
import { ScrollIntent } from "./scrollIntent";
import { IShortcutActivator } from "./shortcutActivator";
import { SingleActivator } from "./singleActivator";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { TraversalDirection } from "./traversalDirection";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        widgetsApp: (
            this: void,
            widgetsApp: IWidgetsApp,
            props: {
                actions?: IMap<Type, IAction<IIntent>> | undefined;
                builder?: (
                    context: IBuildContext,
                    child?: IWidget | undefined
                ) => IWidget | undefined;
                checkerboardOffscreenLayers: boolean;
                checkerboardRasterCacheImages: boolean;
                debugShowCheckedModeBanner: boolean;
                debugShowWidgetInspector: boolean;
                home?: IWidget | undefined;
                initialRoute?: string | undefined;
                inspectorSelectButtonBuilder?: (
                    context: IBuildContext,
                    onPressed: () => void
                ) => IWidget | undefined;
                key?: IKey | undefined;
                locale?: ILocale | undefined;
                localeListResolutionCallback?: (
                    locales: IList<ILocale> | undefined,
                    supportedLocales: IIterable<ILocale>
                ) => ILocale | undefined | undefined;
                localeResolutionCallback?: (
                    locale: ILocale | undefined,
                    supportedLocales: IIterable<ILocale>
                ) => ILocale | undefined | undefined;
                localizationsDelegates?:
                    | IIterable<ILocalizationsDelegate<any>>
                    | undefined;
                navigatorKey?: IGlobalKey<INavigatorState> | undefined;
                navigatorObservers: IList<INavigatorObserver>;
                onGenerateInitialRoutes?: (
                    initialRoute: string
                ) => IList<IRoute<any>> | undefined;
                onGenerateRoute?: (
                    settings: IRouteSettings
                ) => IRoute<any> | undefined | undefined;
                onGenerateTitle?: (
                    context: IBuildContext
                ) => string | undefined;
                onUnknownRoute?: (
                    settings: IRouteSettings
                ) => IRoute<any> | undefined | undefined;
                pageRouteBuilder?: <T>(
                    settings: IRouteSettings,
                    builder: (context: IBuildContext) => IWidget
                ) => IPageRoute<T> | undefined;
                restorationScopeId?: string | undefined;
                routes: {
                    [index: string]: (context: IBuildContext) => IWidget;
                };
                shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
                showPerformanceOverlay: boolean;
                showSemanticsDebugger: boolean;
                supportedLocales: IIterable<ILocale>;
                textStyle?: ITextStyle | undefined;
                title: string;
                useInheritedMediaQuery: boolean;
                color: IColor;
            }
        ) => IWidgetsApp;
        widgetsAppDefaultShortcuts: () => IMap<IShortcutActivator, IIntent>;
    };
};
export interface IWidgetsApp {
    navigatorKey: IGlobalKey<INavigatorState> | undefined;
    routeInformationParser: IRouteInformationParser<Object> | undefined;
    routerDelegate: IRouterDelegate<Object> | undefined;
    backButtonDispatcher: IBackButtonDispatcher | undefined;
    routeInformationProvider: IRouteInformationProvider | undefined;
    home: IWidget | undefined;
    routes:
        | { [index: string]: (context: IBuildContext) => IWidget }
        | undefined;
    initialRoute: string | undefined;
    navigatorObservers: IList<INavigatorObserver> | undefined;
    title: string;
    textStyle: ITextStyle | undefined;
    color: IColor;
    locale: ILocale | undefined;
    localizationsDelegates: IIterable<ILocalizationsDelegate<any>> | undefined;
    supportedLocales: IIterable<ILocale>;
    showPerformanceOverlay: boolean;
    checkerboardRasterCacheImages: boolean;
    checkerboardOffscreenLayers: boolean;
    showSemanticsDebugger: boolean;
    debugShowWidgetInspector: boolean;
    debugShowCheckedModeBanner: boolean;
    shortcuts: IMap<IShortcutActivator, IIntent> | undefined;
    actions: IMap<Type, IAction<IIntent>> | undefined;
    restorationScopeId: string | undefined;
    useInheritedMediaQuery: boolean;
    key: IKey | undefined;
    createState: () => IState<IWidgetsApp>;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class WidgetsApp implements IStatefulWidget, IDiagnosticable {
    public static _defaultShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.enter),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.numpadEnter),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.space),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.gameButtonA),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.escape),
                        new DismissIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.tab),
                        new NextFocusIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.tab, {
                            shift: true,
                        }),
                        new PreviousFocusIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new DirectionalFocusIntent(TraversalDirection.left)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new DirectionalFocusIntent(TraversalDirection.right)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new DirectionalFocusIntent(TraversalDirection.down)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new DirectionalFocusIntent(TraversalDirection.up)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            control: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            control: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            control: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            control: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.pageUp),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.pageDown),
                        new ScrollIntent()
                    ),
                ])
            ))
        )
    );
    public static _defaultWebShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.space),
                        new PrioritizedIntents()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.enter),
                        new ButtonActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.numpadEnter),
                        new ButtonActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.escape),
                        new DismissIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.tab),
                        new NextFocusIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.tab, {
                            shift: true,
                        }),
                        new PreviousFocusIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.pageUp),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.pageDown),
                        new ScrollIntent()
                    ),
                ])
            ))
        )
    );
    public static _defaultAppleOsShortcuts = Map.fromEntries(
        <IIterable<IMapEntry<IShortcutActivator, IIntent>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.enter),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.numpadEnter),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.space),
                        new ActivateIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.escape),
                        new DismissIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.tab),
                        new NextFocusIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.tab, {
                            shift: true,
                        }),
                        new PreviousFocusIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft),
                        new DirectionalFocusIntent(TraversalDirection.left)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight),
                        new DirectionalFocusIntent(TraversalDirection.right)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown),
                        new DirectionalFocusIntent(TraversalDirection.down)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp),
                        new DirectionalFocusIntent(TraversalDirection.up)
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowUp, {
                            meta: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowDown, {
                            meta: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowLeft, {
                            meta: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.arrowRight, {
                            meta: true,
                        }),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.pageUp),
                        new ScrollIntent()
                    ),
                    new MapEntry(
                        new SingleActivator(LogicalKeyboardKey.pageDown),
                        new ScrollIntent()
                    ),
                ])
            ))
        )
    );
    public readonly navigatorKey: IGlobalKey<INavigatorState> | undefined =
        undefined as any;
    public readonly routeInformationParser:
        | IRouteInformationParser<Object>
        | undefined = undefined as any;
    public readonly routerDelegate: IRouterDelegate<Object> | undefined =
        undefined as any;
    public readonly backButtonDispatcher: IBackButtonDispatcher | undefined =
        undefined as any;
    public readonly routeInformationProvider:
        | IRouteInformationProvider
        | undefined = undefined as any;
    public readonly home: IWidget | undefined = undefined as any;
    public readonly routes:
        | { [index: string]: (context: IBuildContext) => IWidget }
        | undefined = undefined as any;
    public readonly initialRoute: string | undefined = undefined as any;
    public readonly navigatorObservers: IList<INavigatorObserver> | undefined =
        undefined as any;
    public readonly title: string = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly localizationsDelegates:
        | IIterable<ILocalizationsDelegate<any>>
        | undefined = undefined as any;
    public readonly supportedLocales: IIterable<ILocale> = undefined as any;
    public readonly showPerformanceOverlay: boolean = undefined as any;
    public readonly checkerboardRasterCacheImages: boolean = undefined as any;
    public readonly checkerboardOffscreenLayers: boolean = undefined as any;
    public readonly showSemanticsDebugger: boolean = undefined as any;
    public readonly debugShowWidgetInspector: boolean = undefined as any;
    public readonly debugShowCheckedModeBanner: boolean = undefined as any;
    public readonly shortcuts: IMap<IShortcutActivator, IIntent> | undefined =
        undefined as any;
    public readonly actions: IMap<Type, IAction<IIntent>> | undefined =
        undefined as any;
    public readonly restorationScopeId: string | undefined = undefined as any;
    public readonly useInheritedMediaQuery: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actions?: IMap<Type, IAction<IIntent>> | undefined;
        builder?: (
            context: IBuildContext,
            child?: IWidget | undefined
        ) => IWidget | undefined;
        checkerboardOffscreenLayers?: boolean;
        checkerboardRasterCacheImages?: boolean;
        debugShowCheckedModeBanner?: boolean;
        debugShowWidgetInspector?: boolean;
        home?: IWidget | undefined;
        initialRoute?: string | undefined;
        inspectorSelectButtonBuilder?: (
            context: IBuildContext,
            onPressed: () => void
        ) => IWidget | undefined;
        key?: IKey | undefined;
        locale?: ILocale | undefined;
        localeListResolutionCallback?: (
            locales: IList<ILocale> | undefined,
            supportedLocales: IIterable<ILocale>
        ) => ILocale | undefined | undefined;
        localeResolutionCallback?: (
            locale: ILocale | undefined,
            supportedLocales: IIterable<ILocale>
        ) => ILocale | undefined | undefined;
        localizationsDelegates?:
            | IIterable<ILocalizationsDelegate<any>>
            | undefined;
        navigatorKey?: IGlobalKey<INavigatorState> | undefined;
        navigatorObservers?: IList<INavigatorObserver>;
        onGenerateInitialRoutes?: (
            initialRoute: string
        ) => IList<IRoute<any>> | undefined;
        onGenerateRoute?: (
            settings: IRouteSettings
        ) => IRoute<any> | undefined | undefined;
        onGenerateTitle?: (context: IBuildContext) => string | undefined;
        onUnknownRoute?: (
            settings: IRouteSettings
        ) => IRoute<any> | undefined | undefined;
        pageRouteBuilder?: <T>(
            settings: IRouteSettings,
            builder: (context: IBuildContext) => IWidget
        ) => IPageRoute<T> | undefined;
        restorationScopeId?: string | undefined;
        routes?: { [index: string]: (context: IBuildContext) => IWidget };
        shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
        showPerformanceOverlay?: boolean;
        showSemanticsDebugger?: boolean;
        supportedLocales?: IIterable<ILocale>;
        textStyle?: ITextStyle | undefined;
        title?: string;
        useInheritedMediaQuery?: boolean;
        color: IColor;
    }) {
        flutter.widgets.widgetsApp(this, {
            ...widgetsAppDefaultProps,
            ...props,
        });
    }
    public static defaultShortcuts(): IMap<IShortcutActivator, IIntent> {
        return flutter.widgets.widgetsAppDefaultShortcuts();
    }
    private readonly _dart_createState: () => IState<IWidgetsApp> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createState(): IState<IWidgetsApp> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const widgetsAppDefaultProps = {
    checkerboardOffscreenLayers: false,
    checkerboardRasterCacheImages: false,
    debugShowCheckedModeBanner: true,
    debugShowWidgetInspector: false,
    navigatorObservers: List.fromArray<INavigatorObserver>([]),
    routes: Map.fromEntries(
        <IIterable<IMapEntry<string>>>(<unknown>List.fromArray([]))
    ),
    showPerformanceOverlay: false,
    showSemanticsDebugger: false,
    supportedLocales: List.fromArray([new Locale("en", "US")]),
    title: "",
    useInheritedMediaQuery: false,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
