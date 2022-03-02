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
import { ICupertinoThemeData } from "./cupertinoThemeData";
declare const flutter: {
    cupertino: {
        cupertinoApp: (
            this: void,
            cupertinoApp: ICupertinoApp,
            props: {
                actions?: IMap<Type, IAction<IIntent>> | undefined;
                builder?: (
                    context: IBuildContext,
                    child?: IWidget | undefined
                ) => IWidget | undefined;
                checkerboardOffscreenLayers: boolean;
                checkerboardRasterCacheImages: boolean;
                color?: IColor | undefined;
                debugShowCheckedModeBanner: boolean;
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
                routes: { [index: string]: (__: IBuildContext) => IWidget };
                scrollBehavior?: IScrollBehavior | undefined;
                shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
                showPerformanceOverlay: boolean;
                showSemanticsDebugger: boolean;
                supportedLocales: IIterable<ILocale>;
                theme?: ICupertinoThemeData | undefined;
                title: string;
                useInheritedMediaQuery: boolean;
            }
        ) => ICupertinoApp;
        cupertinoAppCreateCupertinoHeroController: () => IHeroController;
    };
};
export interface ICupertinoApp {
    navigatorKey: IGlobalKey<INavigatorState> | undefined;
    home: IWidget | undefined;
    theme: ICupertinoThemeData | undefined;
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
    useInheritedMediaQuery: boolean;
    key: IKey | undefined;
    createState: () => IState<ICupertinoApp>;
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
export class CupertinoApp implements IStatefulWidget, IDiagnosticable {
    public readonly navigatorKey: IGlobalKey<INavigatorState> | undefined =
        undefined as any;
    public readonly home: IWidget | undefined = undefined as any;
    public readonly theme: ICupertinoThemeData | undefined = undefined as any;
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
        debugShowCheckedModeBanner?: boolean;
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
        routes?: { [index: string]: (__: IBuildContext) => IWidget };
        scrollBehavior?: IScrollBehavior | undefined;
        shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
        showPerformanceOverlay?: boolean;
        showSemanticsDebugger?: boolean;
        supportedLocales?: IIterable<ILocale>;
        theme?: ICupertinoThemeData | undefined;
        title?: string;
        useInheritedMediaQuery?: boolean;
    }) {
        flutter.cupertino.cupertinoApp(this, {
            ...cupertinoAppDefaultProps,
            ...props,
        });
    }
    public static createCupertinoHeroController(): IHeroController {
        return flutter.cupertino.cupertinoAppCreateCupertinoHeroController();
    }
    private readonly _dart_createState: () => IState<ICupertinoApp> =
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
    public createState(): IState<ICupertinoApp> {
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
const cupertinoAppDefaultProps = {
    checkerboardOffscreenLayers: false,
    checkerboardRasterCacheImages: false,
    debugShowCheckedModeBanner: true,
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
