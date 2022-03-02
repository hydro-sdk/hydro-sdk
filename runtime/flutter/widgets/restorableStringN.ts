import { IListenable } from "../foundation/listenable";
import { I_RestorablePrimitiveValueN } from "./_restorablePrimitiveValueN";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableStringN: (
            this: void,
            restorableStringN: IRestorableStringN,
            defaultValue?: string | undefined
        ) => IRestorableStringN;
    };
};
export interface IRestorableStringN {
    createDefaultValue: () => string | undefined;
    didUpdateValue: (oldValue?: string | undefined) => void;
    fromPrimitives: (serialized?: Object | undefined) => string | undefined;
    toPrimitives: () => Object | undefined;
    initWithValue: (value?: string | undefined) => void;
    getValue: () => string | undefined;
    setValue: (newValue?: string | undefined) => void;
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
export class RestorableStringN
    implements I_RestorablePrimitiveValueN<?string>, IListenable
{
    public constructor(defaultValue?: string | undefined) {
        flutter.widgets.restorableStringN(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => string | undefined =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: string | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        serialized?: Object | undefined
    ) => string | undefined = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value?: string | undefined) => void =
        undefined as any;
    private readonly _dart_getValue: () => string | undefined =
        undefined as any;
    private readonly _dart_setValue: (newValue?: string | undefined) => void =
        undefined as any;
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
    public createDefaultValue(): string | undefined {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: string | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(serialized?: Object | undefined): string | undefined {
        return this._dart_fromPrimitives(serialized);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value?: string | undefined): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): string | undefined {
        return this._dart_getValue();
    }
    public setValue(newValue?: string | undefined): void {
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
