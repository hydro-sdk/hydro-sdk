import { IListenable } from "../foundation/listenable";
import { I_RestorablePrimitiveValueN } from "./_restorablePrimitiveValueN";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        _restorablePrimitiveValue: <T>(
            this: void,
            _restorablePrimitiveValue: I_RestorablePrimitiveValue<T>,
            _defaultValue: T
        ) => I_RestorablePrimitiveValue<T>;
    };
};
export interface I_RestorablePrimitiveValue<T> {
    setValue: (value: T) => void;
    fromPrimitives: (serialized?: Object | undefined) => T;
    toPrimitives: () => Object;
    createDefaultValue: () => T;
    didUpdateValue: (oldValue?: T | undefined) => void;
    initWithValue: (value: T) => void;
    getValue: () => T;
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
export class _RestorablePrimitiveValue<T>
    implements I_RestorablePrimitiveValueN<T>, IListenable
{
    public constructor(_defaultValue: T) {
        flutter.widgets._restorablePrimitiveValue(this, _defaultValue);
    }
    private readonly _dart_setValue: (value: T) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        serialized?: Object | undefined
    ) => T = undefined as any;
    private readonly _dart_toPrimitives: () => Object = undefined as any;
    private readonly _dart_createDefaultValue: () => T = undefined as any;
    private readonly _dart_didUpdateValue: (oldValue?: T | undefined) => void =
        undefined as any;
    private readonly _dart_initWithValue: (value: T) => void = undefined as any;
    private readonly _dart_getValue: () => T = undefined as any;
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
    public setValue(value: T): void {
        return this._dart_setValue(value);
    }
    public fromPrimitives(serialized?: Object | undefined): T {
        return this._dart_fromPrimitives(serialized);
    }
    public toPrimitives(): Object {
        return this._dart_toPrimitives();
    }
    public createDefaultValue(): T {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: T | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public initWithValue(value: T): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): T {
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
