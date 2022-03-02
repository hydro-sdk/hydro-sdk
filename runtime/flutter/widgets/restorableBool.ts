import { IListenable } from "../foundation/listenable";
import { I_RestorablePrimitiveValue } from "./_restorablePrimitiveValue";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableBool: (
            this: void,
            restorableBool: IRestorableBool,
            defaultValue: boolean
        ) => IRestorableBool;
    };
};
export interface IRestorableBool {
    fromPrimitives: (serialized?: Object | undefined) => boolean;
    toPrimitives: () => Object;
    setValue: (value: boolean) => void;
    createDefaultValue: () => boolean;
    didUpdateValue: (oldValue?: boolean | undefined) => void;
    initWithValue: (value: boolean) => void;
    getValue: () => boolean;
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
export class RestorableBool
    implements I_RestorablePrimitiveValue<boolean>, IListenable
{
    public constructor(defaultValue: boolean) {
        flutter.widgets.restorableBool(this, defaultValue);
    }
    private readonly _dart_fromPrimitives: (
        serialized?: Object | undefined
    ) => boolean = undefined as any;
    private readonly _dart_toPrimitives: () => Object = undefined as any;
    private readonly _dart_setValue: (value: boolean) => void =
        undefined as any;
    private readonly _dart_createDefaultValue: () => boolean = undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: boolean | undefined
    ) => void = undefined as any;
    private readonly _dart_initWithValue: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getValue: () => boolean = undefined as any;
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
    public fromPrimitives(serialized?: Object | undefined): boolean {
        return this._dart_fromPrimitives(serialized);
    }
    public toPrimitives(): Object {
        return this._dart_toPrimitives();
    }
    public setValue(value: boolean): void {
        return this._dart_setValue(value);
    }
    public createDefaultValue(): boolean {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: boolean | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public initWithValue(value: boolean): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): boolean {
        return this._dart_getValue();
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
