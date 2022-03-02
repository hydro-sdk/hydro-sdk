import { IListenable } from "../foundation/listenable";
import { IBuildContext } from "./buildContext";
import { INavigatorState } from "./navigatorState";
import { IRestorableProperty } from "./restorableProperty";
import { IRoute } from "./route";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableRouteFuture: <T>(
            this: void,
            restorableRouteFuture: IRestorableRouteFuture<T>,
            props: {
                navigatorFinder: (context: IBuildContext) => INavigatorState;
                onComplete?: (result: T) => void | undefined;
                onPresent: (
                    navigator: INavigatorState,
                    arguments?: Object | undefined
                ) => string;
            }
        ) => IRestorableRouteFuture<T>;
    };
};
export interface IRestorableRouteFuture<T> {
    present: (arguments?: Object | undefined) => void;
    getIsPresent: () => boolean;
    getRoute: () => IRoute<T> | undefined;
    createDefaultValue: () => string | undefined;
    initWithValue: (value?: string | undefined) => void;
    toPrimitives: () => Object | undefined;
    fromPrimitives: (data?: Object | undefined) => string;
    dispose: () => void;
    getEnabled: () => boolean;
    getState: () => IState<IStatefulWidget>;
    getIsRegistered: () => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class RestorableRouteFuture<T>
    implements IRestorableProperty<?string>, IListenable
{
    public constructor(props: {
        navigatorFinder: (context: IBuildContext) => INavigatorState;
        onComplete?: (result: T) => void | undefined;
        onPresent: (
            navigator: INavigatorState,
            arguments?: Object | undefined
        ) => string;
    }) {
        flutter.widgets.restorableRouteFuture(this, props);
    }
    private readonly _dart_present: (arguments?: Object | undefined) => void =
        undefined as any;
    private readonly _dart_getIsPresent: () => boolean = undefined as any;
    private readonly _dart_getRoute: () => IRoute<T> | undefined =
        undefined as any;
    private readonly _dart_createDefaultValue: () => string | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value?: string | undefined) => void =
        undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => string = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_getState: () => IState<IStatefulWidget> =
        undefined as any;
    private readonly _dart_getIsRegistered: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public present(arguments?: Object | undefined): void {
        return this._dart_present(arguments);
    }
    public getIsPresent(): boolean {
        return this._dart_getIsPresent();
    }
    public getRoute(): IRoute<T> | undefined {
        return this._dart_getRoute();
    }
    public createDefaultValue(): string | undefined {
        return this._dart_createDefaultValue();
    }
    public initWithValue(value?: string | undefined): void {
        return this._dart_initWithValue(value);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public fromPrimitives(data?: Object | undefined): string {
        return this._dart_fromPrimitives(data);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public getState(): IState<IStatefulWidget> {
        return this._dart_getState();
    }
    public getIsRegistered(): boolean {
        return this._dart_getIsRegistered();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
