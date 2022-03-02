import { IListenable } from "../foundation/listenable";
import { IRestorableValue } from "./restorableValue";
import { IRouteInformation } from "./routeInformation";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        _restorableRouteInformation: (
            this: void,
            _restorableRouteInformation: I_RestorableRouteInformation
        ) => I_RestorableRouteInformation;
    };
};
export interface I_RestorableRouteInformation {
    createDefaultValue: () => IRouteInformation | undefined;
    didUpdateValue: (oldValue?: IRouteInformation | undefined) => void;
    fromPrimitives: (
        data?: Object | undefined
    ) => IRouteInformation | undefined;
    toPrimitives: () => Object | undefined;
    initWithValue: (value?: IRouteInformation | undefined) => void;
    getValue: () => IRouteInformation | undefined;
    setValue: (newValue?: IRouteInformation | undefined) => void;
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
export class _RestorableRouteInformation
    implements IRestorableValue<?IRouteInformation>, IListenable
{
    public constructor() {
        flutter.widgets._restorableRouteInformation(this);
    }
    private readonly _dart_createDefaultValue: () =>
        | IRouteInformation
        | undefined = undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: IRouteInformation | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => IRouteInformation | undefined = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (
        value?: IRouteInformation | undefined
    ) => void = undefined as any;
    private readonly _dart_getValue: () => IRouteInformation | undefined =
        undefined as any;
    private readonly _dart_setValue: (
        newValue?: IRouteInformation | undefined
    ) => void = undefined as any;
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
    public createDefaultValue(): IRouteInformation | undefined {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: IRouteInformation | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(
        data?: Object | undefined
    ): IRouteInformation | undefined {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value?: IRouteInformation | undefined): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): IRouteInformation | undefined {
        return this._dart_getValue();
    }
    public setValue(newValue?: IRouteInformation | undefined): void {
        return this._dart_setValue(newValue);
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
