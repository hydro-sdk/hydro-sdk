import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBackButtonDispatcher } from "./backButtonDispatcher";
import { IBuildContext } from "./buildContext";
import { IRouteInformationParser } from "./routeInformationParser";
import { IRouteInformationProvider } from "./routeInformationProvider";
import { IRouterDelegate } from "./routerDelegate";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        router: <T>(
            this: void,
            router: IRouter<T>,
            props: {
                backButtonDispatcher?: IBackButtonDispatcher | undefined;
                key?: IKey | undefined;
                restorationScopeId?: string | undefined;
                routeInformationParser?: IRouteInformationParser<T> | undefined;
                routeInformationProvider?:
                    | IRouteInformationProvider
                    | undefined;
                routerDelegate: IRouterDelegate<T>;
            }
        ) => IRouter<T>;
        routerOf: <T>(context: IBuildContext) => IRouter<T>;
        routerMaybeOf: <T>(context: IBuildContext) => IRouter<T> | undefined;
        routerNavigate: (context: IBuildContext, callback: () => void) => void;
        routerNeglect: (context: IBuildContext, callback: () => void) => void;
    };
};
export interface IRouter<T> {
    routeInformationProvider: IRouteInformationProvider | undefined;
    routeInformationParser: IRouteInformationParser<T> | undefined;
    routerDelegate: IRouterDelegate<T>;
    backButtonDispatcher: IBackButtonDispatcher | undefined;
    restorationScopeId: string | undefined;
    key: IKey | undefined;
    createState: () => IState<IRouter<T>>;
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
export class Router<T> implements IStatefulWidget, IDiagnosticable {
    public readonly routeInformationProvider:
        | IRouteInformationProvider
        | undefined = undefined as any;
    public readonly routeInformationParser:
        | IRouteInformationParser<T>
        | undefined = undefined as any;
    public readonly routerDelegate: IRouterDelegate<T> = undefined as any;
    public readonly backButtonDispatcher: IBackButtonDispatcher | undefined =
        undefined as any;
    public readonly restorationScopeId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backButtonDispatcher?: IBackButtonDispatcher | undefined;
        key?: IKey | undefined;
        restorationScopeId?: string | undefined;
        routeInformationParser?: IRouteInformationParser<T> | undefined;
        routeInformationProvider?: IRouteInformationProvider | undefined;
        routerDelegate: IRouterDelegate<T>;
    }) {
        flutter.widgets.router(this, props);
    }
    public static of<T>(context: IBuildContext): IRouter<T> {
        return flutter.widgets.routerOf(context);
    }
    public static maybeOf<T>(context: IBuildContext): IRouter<T> | undefined {
        return flutter.widgets.routerMaybeOf(context);
    }
    public static navigate(context: IBuildContext, callback: () => void): void {
        return flutter.widgets.routerNavigate(context, callback);
    }
    public static neglect(context: IBuildContext, callback: () => void): void {
        return flutter.widgets.routerNeglect(context, callback);
    }
    private readonly _dart_createState: () => IState<IRouter<T>> =
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
    public createState(): IState<IRouter<T>> {
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
