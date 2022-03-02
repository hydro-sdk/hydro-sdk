import { IFuture } from "../../dart/async/future";
import { IList, List } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { DefaultTransitionDelegate } from "./defaultTransitionDelegate";
import { INavigatorObserver } from "./navigatorObserver";
import { INavigatorState } from "./navigatorState";
import { IPage } from "./page";
import { IRoute } from "./route";
import { IRouteSettings } from "./routeSettings";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { ITransitionDelegate } from "./transitionDelegate";
declare const flutter: {
    widgets: {
        navigator: (
            this: void,
            navigator: INavigator,
            props: {
                initialRoute?: string | undefined;
                key?: IKey | undefined;
                observers: IList<INavigatorObserver>;
                onGenerateInitialRoutes: (
                    navigator: INavigatorState,
                    initialRoute: string
                ) => IList<IRoute<any>>;
                onGenerateRoute?: (
                    settings: IRouteSettings
                ) => IRoute<any> | undefined | undefined;
                onPopPage?: (
                    route: IRoute<any>,
                    result: any
                ) => boolean | undefined;
                onUnknownRoute?: (
                    settings: IRouteSettings
                ) => IRoute<any> | undefined | undefined;
                pages: IList<IPage<any>>;
                reportsRouteUpdateToEngine: boolean;
                requestFocus: boolean;
                restorationScopeId?: string | undefined;
                transitionDelegate: ITransitionDelegate<any>;
            }
        ) => INavigator;
        navigatorPushNamed: <T>(
            context: IBuildContext,
            routeName: string,
            props?: { arguments?: Object | undefined }
        ) => IFuture<T | undefined>;
        navigatorRestorablePushNamed: <T>(
            context: IBuildContext,
            routeName: string,
            props?: { arguments?: Object | undefined }
        ) => string;
        navigatorPushReplacementNamed: <T, TO>(
            context: IBuildContext,
            routeName: string,
            props?: { arguments?: Object | undefined; result?: TO | undefined }
        ) => IFuture<T | undefined>;
        navigatorRestorablePushReplacementNamed: <T, TO>(
            context: IBuildContext,
            routeName: string,
            props?: { arguments?: Object | undefined; result?: TO | undefined }
        ) => string;
        navigatorPopAndPushNamed: <T, TO>(
            context: IBuildContext,
            routeName: string,
            props?: { arguments?: Object | undefined; result?: TO | undefined }
        ) => IFuture<T | undefined>;
        navigatorRestorablePopAndPushNamed: <T, TO>(
            context: IBuildContext,
            routeName: string,
            props?: { arguments?: Object | undefined; result?: TO | undefined }
        ) => string;
        navigatorPushNamedAndRemoveUntil: <T>(
            context: IBuildContext,
            newRouteName: string,
            predicate: (route: IRoute<any>) => boolean,
            props?: { arguments?: Object | undefined }
        ) => IFuture<T | undefined>;
        navigatorRestorablePushNamedAndRemoveUntil: <T>(
            context: IBuildContext,
            newRouteName: string,
            predicate: (route: IRoute<any>) => boolean,
            props?: { arguments?: Object | undefined }
        ) => string;
        navigatorPush: <T>(
            context: IBuildContext,
            route: IRoute<T>
        ) => IFuture<T | undefined>;
        navigatorRestorablePush: <T>(
            context: IBuildContext,
            routeBuilder: (
                context: IBuildContext,
                arguments?: Object | undefined
            ) => IRoute<T>,
            props?: { arguments?: Object | undefined }
        ) => string;
        navigatorPushReplacement: <T, TO>(
            context: IBuildContext,
            newRoute: IRoute<T>,
            props?: { result?: TO | undefined }
        ) => IFuture<T | undefined>;
        navigatorRestorablePushReplacement: <T, TO>(
            context: IBuildContext,
            routeBuilder: (
                context: IBuildContext,
                arguments?: Object | undefined
            ) => IRoute<T>,
            props?: { arguments?: Object | undefined; result?: TO | undefined }
        ) => string;
        navigatorPushAndRemoveUntil: <T>(
            context: IBuildContext,
            newRoute: IRoute<T>,
            predicate: (route: IRoute<any>) => boolean
        ) => IFuture<T | undefined>;
        navigatorRestorablePushAndRemoveUntil: <T>(
            context: IBuildContext,
            newRouteBuilder: (
                context: IBuildContext,
                arguments?: Object | undefined
            ) => IRoute<T>,
            predicate: (route: IRoute<any>) => boolean,
            props?: { arguments?: Object | undefined }
        ) => string;
        navigatorReplace: <T>(
            context: IBuildContext,
            props: { newRoute: IRoute<T>; oldRoute: IRoute<any> }
        ) => void;
        navigatorRestorableReplace: <T>(
            context: IBuildContext,
            props: {
                arguments?: Object | undefined;
                newRouteBuilder: (
                    context: IBuildContext,
                    arguments?: Object | undefined
                ) => IRoute<T>;
                oldRoute: IRoute<any>;
            }
        ) => string;
        navigatorReplaceRouteBelow: <T>(
            context: IBuildContext,
            props: { anchorRoute: IRoute<any>; newRoute: IRoute<T> }
        ) => void;
        navigatorRestorableReplaceRouteBelow: <T>(
            context: IBuildContext,
            props: {
                arguments?: Object | undefined;
                anchorRoute: IRoute<any>;
                newRouteBuilder: (
                    context: IBuildContext,
                    arguments?: Object | undefined
                ) => IRoute<T>;
            }
        ) => string;
        navigatorCanPop: (context: IBuildContext) => boolean;
        navigatorMaybePop: <T>(
            context: IBuildContext,
            result?: T | undefined
        ) => IFuture<boolean>;
        navigatorPop: <T>(
            context: IBuildContext,
            result?: T | undefined
        ) => void;
        navigatorPopUntil: (
            context: IBuildContext,
            predicate: (route: IRoute<any>) => boolean
        ) => void;
        navigatorRemoveRoute: (
            context: IBuildContext,
            route: IRoute<any>
        ) => void;
        navigatorRemoveRouteBelow: (
            context: IBuildContext,
            anchorRoute: IRoute<any>
        ) => void;
        navigatorOf: (
            context: IBuildContext,
            props: { rootNavigator: boolean }
        ) => INavigatorState;
        navigatorMaybeOf: (
            context: IBuildContext,
            props: { rootNavigator: boolean }
        ) => INavigatorState | undefined;
        navigatorDefaultGenerateInitialRoutes: (
            navigator: INavigatorState,
            initialRouteName: string
        ) => IList<IRoute<any>>;
    };
};
export interface INavigator {
    pages: IList<IPage<any>>;
    transitionDelegate: ITransitionDelegate<any>;
    initialRoute: string | undefined;
    observers: IList<INavigatorObserver>;
    restorationScopeId: string | undefined;
    reportsRouteUpdateToEngine: boolean;
    requestFocus: boolean;
    key: IKey | undefined;
    createState: () => INavigatorState;
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
export class Navigator implements IStatefulWidget, IDiagnosticable {
    public static defaultRouteName = "/";
    public readonly pages: IList<IPage<any>> = undefined as any;
    public readonly transitionDelegate: ITransitionDelegate<any> =
        undefined as any;
    public readonly initialRoute: string | undefined = undefined as any;
    public readonly observers: IList<INavigatorObserver> = undefined as any;
    public readonly restorationScopeId: string | undefined = undefined as any;
    public readonly reportsRouteUpdateToEngine: boolean = undefined as any;
    public readonly requestFocus: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        initialRoute?: string | undefined;
        key?: IKey | undefined;
        observers?: IList<INavigatorObserver>;
        onGenerateInitialRoutes?: (
            navigator: INavigatorState,
            initialRoute: string
        ) => IList<IRoute<any>>;
        onGenerateRoute?: (
            settings: IRouteSettings
        ) => IRoute<any> | undefined | undefined;
        onPopPage?: (route: IRoute<any>, result: any) => boolean | undefined;
        onUnknownRoute?: (
            settings: IRouteSettings
        ) => IRoute<any> | undefined | undefined;
        pages?: IList<IPage<any>>;
        reportsRouteUpdateToEngine?: boolean;
        requestFocus?: boolean;
        restorationScopeId?: string | undefined;
        transitionDelegate?: ITransitionDelegate<any>;
    }) {
        flutter.widgets.navigator(this, {
            ...navigatorDefaultProps,
            ...props,
        });
    }
    public static pushNamed<T>(
        context: IBuildContext,
        routeName: string,
        props?: { arguments?: Object | undefined }
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPushNamed(context, routeName, props);
    }
    public static restorablePushNamed<T>(
        context: IBuildContext,
        routeName: string,
        props?: { arguments?: Object | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePushNamed(
            context,
            routeName,
            props
        );
    }
    public static pushReplacementNamed<T, TO>(
        context: IBuildContext,
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPushReplacementNamed(
            context,
            routeName,
            props
        );
    }
    public static restorablePushReplacementNamed<T, TO>(
        context: IBuildContext,
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePushReplacementNamed(
            context,
            routeName,
            props
        );
    }
    public static popAndPushNamed<T, TO>(
        context: IBuildContext,
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPopAndPushNamed(
            context,
            routeName,
            props
        );
    }
    public static restorablePopAndPushNamed<T, TO>(
        context: IBuildContext,
        routeName: string,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePopAndPushNamed(
            context,
            routeName,
            props
        );
    }
    public static pushNamedAndRemoveUntil<T>(
        context: IBuildContext,
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPushNamedAndRemoveUntil(
            context,
            newRouteName,
            predicate,
            props
        );
    }
    public static restorablePushNamedAndRemoveUntil<T>(
        context: IBuildContext,
        newRouteName: string,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePushNamedAndRemoveUntil(
            context,
            newRouteName,
            predicate,
            props
        );
    }
    public static push<T>(
        context: IBuildContext,
        route: IRoute<T>
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPush(context, route);
    }
    public static restorablePush<T>(
        context: IBuildContext,
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePush(
            context,
            routeBuilder,
            props
        );
    }
    public static pushReplacement<T, TO>(
        context: IBuildContext,
        newRoute: IRoute<T>,
        props?: { result?: TO | undefined }
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPushReplacement(
            context,
            newRoute,
            props
        );
    }
    public static restorablePushReplacement<T, TO>(
        context: IBuildContext,
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        props?: { arguments?: Object | undefined; result?: TO | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePushReplacement(
            context,
            routeBuilder,
            props
        );
    }
    public static pushAndRemoveUntil<T>(
        context: IBuildContext,
        newRoute: IRoute<T>,
        predicate: (route: IRoute<any>) => boolean
    ): IFuture<T | undefined> {
        return flutter.widgets.navigatorPushAndRemoveUntil(
            context,
            newRoute,
            predicate
        );
    }
    public static restorablePushAndRemoveUntil<T>(
        context: IBuildContext,
        newRouteBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<T>,
        predicate: (route: IRoute<any>) => boolean,
        props?: { arguments?: Object | undefined }
    ): string {
        return flutter.widgets.navigatorRestorablePushAndRemoveUntil(
            context,
            newRouteBuilder,
            predicate,
            props
        );
    }
    public static replace<T>(
        context: IBuildContext,
        props: { newRoute: IRoute<T>; oldRoute: IRoute<any> }
    ): void {
        return flutter.widgets.navigatorReplace(context, props);
    }
    public static restorableReplace<T>(
        context: IBuildContext,
        props: {
            arguments?: Object | undefined;
            newRouteBuilder: (
                context: IBuildContext,
                arguments?: Object | undefined
            ) => IRoute<T>;
            oldRoute: IRoute<any>;
        }
    ): string {
        return flutter.widgets.navigatorRestorableReplace(context, props);
    }
    public static replaceRouteBelow<T>(
        context: IBuildContext,
        props: { anchorRoute: IRoute<any>; newRoute: IRoute<T> }
    ): void {
        return flutter.widgets.navigatorReplaceRouteBelow(context, props);
    }
    public static restorableReplaceRouteBelow<T>(
        context: IBuildContext,
        props: {
            arguments?: Object | undefined;
            anchorRoute: IRoute<any>;
            newRouteBuilder: (
                context: IBuildContext,
                arguments?: Object | undefined
            ) => IRoute<T>;
        }
    ): string {
        return flutter.widgets.navigatorRestorableReplaceRouteBelow(
            context,
            props
        );
    }
    public static canPop(context: IBuildContext): boolean {
        return flutter.widgets.navigatorCanPop(context);
    }
    public static maybePop<T>(
        context: IBuildContext,
        result?: T | undefined
    ): IFuture<boolean> {
        return flutter.widgets.navigatorMaybePop(context, result);
    }
    public static pop<T>(context: IBuildContext, result?: T | undefined): void {
        return flutter.widgets.navigatorPop(context, result);
    }
    public static popUntil(
        context: IBuildContext,
        predicate: (route: IRoute<any>) => boolean
    ): void {
        return flutter.widgets.navigatorPopUntil(context, predicate);
    }
    public static removeRoute(
        context: IBuildContext,
        route: IRoute<any>
    ): void {
        return flutter.widgets.navigatorRemoveRoute(context, route);
    }
    public static removeRouteBelow(
        context: IBuildContext,
        anchorRoute: IRoute<any>
    ): void {
        return flutter.widgets.navigatorRemoveRouteBelow(context, anchorRoute);
    }
    public static of(
        context: IBuildContext,
        props: { rootNavigator?: boolean }
    ): INavigatorState {
        return flutter.widgets.navigatorOf(context, {
            ...ofDefaultProps,
            ...props,
        });
    }
    public static maybeOf(
        context: IBuildContext,
        props: { rootNavigator?: boolean }
    ): INavigatorState | undefined {
        return flutter.widgets.navigatorMaybeOf(context, {
            ...maybeOfDefaultProps,
            ...props,
        });
    }
    public static defaultGenerateInitialRoutes(
        navigator: INavigatorState,
        initialRouteName: string
    ): IList<IRoute<any>> {
        return flutter.widgets.navigatorDefaultGenerateInitialRoutes(
            navigator,
            initialRouteName
        );
    }
    private readonly _dart_createState: () => INavigatorState =
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
    public createState(): INavigatorState {
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
const navigatorDefaultProps = {
    observers: List.fromArray<INavigatorObserver>([]),
    onGenerateInitialRoutes: Navigator.defaultGenerateInitialRoutes,
    pages: List.fromArray<IPage<any>>([]),
    reportsRouteUpdateToEngine: false,
    requestFocus: true,
    transitionDelegate: new DefaultTransitionDelegate(),
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
const ofDefaultProps = {
    rootNavigator: false,
};
const maybeOfDefaultProps = {
    rootNavigator: false,
};
