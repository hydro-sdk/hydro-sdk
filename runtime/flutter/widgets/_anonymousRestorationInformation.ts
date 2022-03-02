import { IList } from "../../dart/core/list";
import { I_RestorationInformation } from "./_restorationInformation";
import { I_RouteEntry } from "./_routeEntry";
import { _RouteLifecycle } from "./_routeLifecycle";
import { _RouteRestorationType } from "./_routeRestorationType";
import { IBuildContext } from "./buildContext";
import { INavigatorState } from "./navigatorState";
import { IRoute } from "./route";
declare const flutter: {
    widgets: {
        _anonymousRestorationInformation: (
            this: void,
            _anonymousRestorationInformation: I_AnonymousRestorationInformation,
            props: {
                arguments?: Object | undefined;
                restorationScopeId: number;
                routeBuilder: (
                    context: IBuildContext,
                    arguments?: Object | undefined
                ) => IRoute<any>;
            }
        ) => I_AnonymousRestorationInformation;
        _anonymousRestorationInformationFromSerializableData: (
            data: IList<Object | undefined>
        ) => I_AnonymousRestorationInformation;
    };
};
export interface I_AnonymousRestorationInformation {
    restorationScopeId: number;
    arguments: Object | undefined;
    type: _RouteRestorationType;
    getIsRestorable: () => boolean;
    computeSerializableData: () => IList<Object>;
    createRoute: (navigator: INavigatorState) => IRoute<any>;
    getSerializableData: () => Object;
    toRouteEntry: (
        navigator: INavigatorState,
        props: { initialState: _RouteLifecycle }
    ) => I_RouteEntry;
    getRestorationScopeId: () => number;
    toString: () => string;
    getHashCode: () => number;
}
export class _AnonymousRestorationInformation
    implements I_RestorationInformation
{
    public readonly restorationScopeId: number = undefined as any;
    public readonly arguments: Object | undefined = undefined as any;
    public readonly type: _RouteRestorationType = undefined as any;
    public constructor(props: {
        arguments?: Object | undefined;
        restorationScopeId: number;
        routeBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined
        ) => IRoute<any>;
    }) {
        flutter.widgets._anonymousRestorationInformation(this, props);
    }
    public static fromSerializableData(
        data: IList<Object | undefined>
    ): I_AnonymousRestorationInformation {
        return flutter.widgets._anonymousRestorationInformationFromSerializableData(
            data
        );
    }
    private readonly _dart_getIsRestorable: () => boolean = undefined as any;
    private readonly _dart_computeSerializableData: () => IList<Object> =
        undefined as any;
    private readonly _dart_createRoute: (
        navigator: INavigatorState
    ) => IRoute<any> = undefined as any;
    private readonly _dart_getSerializableData: () => Object = undefined as any;
    private readonly _dart_toRouteEntry: (
        navigator: INavigatorState,
        props: { initialState: _RouteLifecycle }
    ) => I_RouteEntry = undefined as any;
    private readonly _dart_getRestorationScopeId: () => number =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIsRestorable(): boolean {
        return this._dart_getIsRestorable();
    }
    public computeSerializableData(): IList<Object> {
        return this._dart_computeSerializableData();
    }
    public createRoute(navigator: INavigatorState): IRoute<any> {
        return this._dart_createRoute(navigator);
    }
    public getSerializableData(): Object {
        return this._dart_getSerializableData();
    }
    public toRouteEntry(
        navigator: INavigatorState,
        props: { initialState?: _RouteLifecycle }
    ): I_RouteEntry {
        return this._dart_toRouteEntry(navigator, {
            ...toRouteEntryDefaultProps,
            ...props,
        });
    }
    public getRestorationScopeId(): number {
        return this._dart_getRestorationScopeId();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toRouteEntryDefaultProps = {
    initialState: _RouteLifecycle.add,
};
