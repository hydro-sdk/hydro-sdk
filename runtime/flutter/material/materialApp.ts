import { IIterable } from "../../dart/core/iterable";
import { IList, List } from "../../dart/core/list";
import { IMap, Map } from "../../dart/core/map";
import { IMapEntry } from "../../dart/core/mapEntry";
import { Type } from "../../dart/core/type";
import { IColor } from "../../dart/ui/color";
import { ILocale, Locale } from "../../dart/ui/locale";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IAction } from "../widgets/action";
import { IBackButtonDispatcher } from "../widgets/backButtonDispatcher";
import { IBuildContext } from "../widgets/buildContext";
import { IGlobalKey } from "../widgets/globalKey";
import { IHeroController } from "../widgets/heroController";
import { IIntent } from "../widgets/intent";
import { ILocalizationsDelegate } from "../widgets/localizationsDelegate";
import { INavigatorObserver } from "../widgets/navigatorObserver";
import { INavigatorState } from "../widgets/navigatorState";
import { IRoute } from "../widgets/route";
import { IRouteInformationParser } from "../widgets/routeInformationParser";
import { IRouteInformationProvider } from "../widgets/routeInformationProvider";
import { IRouterDelegate } from "../widgets/routerDelegate";
import { IRouteSettings } from "../widgets/routeSettings";
import { IScrollBehavior } from "../widgets/scrollBehavior";
import { IShortcutActivator } from "../widgets/shortcutActivator";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IScaffoldMessengerState } from "./scaffoldMessengerState";
import { IThemeData } from "./themeData";
import { ThemeMode } from "./themeMode";
declare const flutter: {
    material: {
        materialApp: (
            this: void,
            materialApp: IMaterialApp,
            props: {
                actions?: IMap<Type, IAction<IIntent>> | undefined;
                builder?: (
                    context: IBuildContext,
                    child?: IWidget | undefined
                ) => IWidget | undefined;
                checkerboardOffscreenLayers: boolean;
                checkerboardRasterCacheImages: boolean;
                color?: IColor | undefined;
                darkTheme?: IThemeData | undefined;
                debugShowCheckedModeBanner: boolean;
                debugShowMaterialGrid: boolean;
                highContrastDarkTheme?: IThemeData | undefined;
                highContrastTheme?: IThemeData | undefined;
                home?: IWidget | undefined;
                initialRoute?: string | undefined;
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
                restorationScopeId?: string | undefined;
                routes: {
                    [index: string]: (context: IBuildContext) => IWidget;
                };
                scaffoldMessengerKey?:
                    | IGlobalKey<IScaffoldMessengerState>
                    | undefined;
                scrollBehavior?: IScrollBehavior | undefined;
                shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
                showPerformanceOverlay: boolean;
                showSemanticsDebugger: boolean;
                supportedLocales: IIterable<ILocale>;
                theme?: IThemeData | undefined;
                themeMode?: ThemeMode | undefined;
                title: string;
                useInheritedMediaQuery: boolean;
            }
        ) => IMaterialApp;
        materialAppCreateMaterialHeroController: () => IHeroController;
    };
};
export interface IMaterialApp {
    navigatorKey: IGlobalKey<INavigatorState> | undefined;
    scaffoldMessengerKey: IGlobalKey<IScaffoldMessengerState> | undefined;
    home: IWidget | undefined;
    routes:
        | { [index: string]: (context: IBuildContext) => IWidget }
        | undefined;
    initialRoute: string | undefined;
    navigatorObservers: IList<INavigatorObserver> | undefined;
    routeInformationProvider: IRouteInformationProvider | undefined;
    routeInformationParser: IRouteInformationParser<Object> | undefined;
    routerDelegate: IRouterDelegate<Object> | undefined;
    backButtonDispatcher: IBackButtonDispatcher | undefined;
    title: string;
    theme: IThemeData | undefined;
    darkTheme: IThemeData | undefined;
    highContrastTheme: IThemeData | undefined;
    highContrastDarkTheme: IThemeData | undefined;
    themeMode: ThemeMode | undefined;
    color: IColor | undefined;
    locale: ILocale | undefined;
    localizationsDelegates: IIterable<ILocalizationsDelegate<any>> | undefined;
    supportedLocales: IIterable<ILocale>;
    showPerformanceOverlay: boolean;
    checkerboardRasterCacheImages: boolean;
    checkerboardOffscreenLayers: boolean;
    showSemanticsDebugger: boolean;
    debugShowCheckedModeBanner: boolean;
    shortcuts: IMap<IShortcutActivator, IIntent> | undefined;
    actions: IMap<Type, IAction<IIntent>> | undefined;
    restorationScopeId: string | undefined;
    scrollBehavior: IScrollBehavior | undefined;
    debugShowMaterialGrid: boolean;
    useInheritedMediaQuery: boolean;
    key: IKey | undefined;
    createState: () => IState<IMaterialApp>;
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
export class MaterialApp implements IStatefulWidget, IDiagnosticable {
    public readonly navigatorKey: IGlobalKey<INavigatorState> | undefined =
        undefined as any;
    public readonly scaffoldMessengerKey:
        | IGlobalKey<IScaffoldMessengerState>
        | undefined = undefined as any;
    public readonly home: IWidget | undefined = undefined as any;
    public readonly routes:
        | { [index: string]: (context: IBuildContext) => IWidget }
        | undefined = undefined as any;
    public readonly initialRoute: string | undefined = undefined as any;
    public readonly navigatorObservers: IList<INavigatorObserver> | undefined =
        undefined as any;
    public readonly routeInformationProvider:
        | IRouteInformationProvider
        | undefined = undefined as any;
    public readonly routeInformationParser:
        | IRouteInformationParser<Object>
        | undefined = undefined as any;
    public readonly routerDelegate: IRouterDelegate<Object> | undefined =
        undefined as any;
    public readonly backButtonDispatcher: IBackButtonDispatcher | undefined =
        undefined as any;
    public readonly title: string = undefined as any;
    public readonly theme: IThemeData | undefined = undefined as any;
    public readonly darkTheme: IThemeData | undefined = undefined as any;
    public readonly highContrastTheme: IThemeData | undefined =
        undefined as any;
    public readonly highContrastDarkTheme: IThemeData | undefined =
        undefined as any;
    public readonly themeMode: ThemeMode | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly localizationsDelegates:
        | IIterable<ILocalizationsDelegate<any>>
        | undefined = undefined as any;
    public readonly supportedLocales: IIterable<ILocale> = undefined as any;
    public readonly showPerformanceOverlay: boolean = undefined as any;
    public readonly checkerboardRasterCacheImages: boolean = undefined as any;
    public readonly checkerboardOffscreenLayers: boolean = undefined as any;
    public readonly showSemanticsDebugger: boolean = undefined as any;
    public readonly debugShowCheckedModeBanner: boolean = undefined as any;
    public readonly shortcuts: IMap<IShortcutActivator, IIntent> | undefined =
        undefined as any;
    public readonly actions: IMap<Type, IAction<IIntent>> | undefined =
        undefined as any;
    public readonly restorationScopeId: string | undefined = undefined as any;
    public readonly scrollBehavior: IScrollBehavior | undefined =
        undefined as any;
    public readonly debugShowMaterialGrid: boolean = undefined as any;
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
        color?: IColor | undefined;
        darkTheme?: IThemeData | undefined;
        debugShowCheckedModeBanner?: boolean;
        debugShowMaterialGrid?: boolean;
        highContrastDarkTheme?: IThemeData | undefined;
        highContrastTheme?: IThemeData | undefined;
        home?: IWidget | undefined;
        initialRoute?: string | undefined;
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
        restorationScopeId?: string | undefined;
        routes?: { [index: string]: (context: IBuildContext) => IWidget };
        scaffoldMessengerKey?: IGlobalKey<IScaffoldMessengerState> | undefined;
        scrollBehavior?: IScrollBehavior | undefined;
        shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
        showPerformanceOverlay?: boolean;
        showSemanticsDebugger?: boolean;
        supportedLocales?: IIterable<ILocale>;
        theme?: IThemeData | undefined;
        themeMode?: ThemeMode | undefined;
        title?: string;
        useInheritedMediaQuery?: boolean;
    }) {
        flutter.material.materialApp(this, {
            ...materialAppDefaultProps,
            ...props,
        });
    }
    public static createMaterialHeroController(): IHeroController {
        return flutter.material.materialAppCreateMaterialHeroController();
    }
    private readonly _dart_createState: () => IState<IMaterialApp> =
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
    public createState(): IState<IMaterialApp> {
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
const materialAppDefaultProps = {
    checkerboardOffscreenLayers: false,
    checkerboardRasterCacheImages: false,
    debugShowCheckedModeBanner: true,
    debugShowMaterialGrid: false,
    navigatorObservers: List.fromArray<INavigatorObserver>([]),
    routes: Map.fromEntries(
        <IIterable<IMapEntry<string>>>(<unknown>List.fromArray([]))
    ),
    showPerformanceOverlay: false,
    showSemanticsDebugger: false,
    supportedLocales: List.fromArray([new Locale("en", "US")]),
    themeMode: ThemeMode.system,
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
