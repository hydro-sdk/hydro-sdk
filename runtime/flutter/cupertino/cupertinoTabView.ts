import { IList, List } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IGlobalKey } from "../widgets/globalKey";
import { INavigatorObserver } from "../widgets/navigatorObserver";
import { INavigatorState } from "../widgets/navigatorState";
import { IRoute } from "../widgets/route";
import { IRouteSettings } from "../widgets/routeSettings";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    cupertino: {
        cupertinoTabView: (
            this: void,
            cupertinoTabView: ICupertinoTabView,
            props: {
                builder?: (context: IBuildContext) => IWidget | undefined;
                defaultTitle?: string | undefined;
                key?: IKey | undefined;
                navigatorKey?: IGlobalKey<INavigatorState> | undefined;
                navigatorObservers: IList<INavigatorObserver>;
                onGenerateRoute?: (
                    settings: IRouteSettings
                ) => IRoute<any> | undefined | undefined;
                onUnknownRoute?: (
                    settings: IRouteSettings
                ) => IRoute<any> | undefined | undefined;
                restorationScopeId?: string | undefined;
                routes?:
                    | { [index: string]: (context: IBuildContext) => IWidget }
                    | undefined;
            }
        ) => ICupertinoTabView;
    };
};
export interface ICupertinoTabView {
    navigatorKey: IGlobalKey<INavigatorState> | undefined;
    defaultTitle: string | undefined;
    routes:
        | { [index: string]: (context: IBuildContext) => IWidget }
        | undefined;
    navigatorObservers: IList<INavigatorObserver>;
    restorationScopeId: string | undefined;
    key: IKey | undefined;
    createState: () => IState<ICupertinoTabView>;
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
export class CupertinoTabView implements IStatefulWidget, IDiagnosticable {
    public readonly navigatorKey: IGlobalKey<INavigatorState> | undefined =
        undefined as any;
    public readonly defaultTitle: string | undefined = undefined as any;
    public readonly routes:
        | { [index: string]: (context: IBuildContext) => IWidget }
        | undefined = undefined as any;
    public readonly navigatorObservers: IList<INavigatorObserver> =
        undefined as any;
    public readonly restorationScopeId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        builder?: (context: IBuildContext) => IWidget | undefined;
        defaultTitle?: string | undefined;
        key?: IKey | undefined;
        navigatorKey?: IGlobalKey<INavigatorState> | undefined;
        navigatorObservers?: IList<INavigatorObserver>;
        onGenerateRoute?: (
            settings: IRouteSettings
        ) => IRoute<any> | undefined | undefined;
        onUnknownRoute?: (
            settings: IRouteSettings
        ) => IRoute<any> | undefined | undefined;
        restorationScopeId?: string | undefined;
        routes?:
            | { [index: string]: (context: IBuildContext) => IWidget }
            | undefined;
    }) {
        flutter.cupertino.cupertinoTabView(this, {
            ...cupertinoTabViewDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<ICupertinoTabView> =
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
    public createState(): IState<ICupertinoTabView> {
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
const cupertinoTabViewDefaultProps = {
    navigatorObservers: List.fromArray<INavigatorObserver>([]),
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
