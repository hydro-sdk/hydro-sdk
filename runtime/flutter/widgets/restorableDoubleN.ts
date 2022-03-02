import { IListenable } from "../foundation/listenable";
import { IRestorableNumN } from "./restorableNumN";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableDoubleN: (
            this: void,
            restorableDoubleN: IRestorableDoubleN,
            defaultValue?: number | undefined
        ) => IRestorableDoubleN;
    };
};
export interface IRestorableDoubleN {
    createDefaultValue: () => number | undefined;
    didUpdateValue: (oldValue?: number | undefined) => void;
    fromPrimitives: (serialized?: Object | undefined) => number | undefined;
    toPrimitives: () => Object | undefined;
    initWithValue: (value?: number | undefined) => void;
    getValue: () => number | undefined;
    setValue: (newValue?: number | undefined) => void;
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
export class RestorableDoubleN
    implements IRestorableNumN<?number>, IListenable
{
    public constructor(defaultValue?: number | undefined) {
        flutter.widgets.restorableDoubleN(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => number | undefined =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: number | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        serialized?: Object | undefined
    ) => number | undefined = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value?: number | undefined) => void =
        undefined as any;
    private readonly _dart_getValue: () => number | undefined =
        undefined as any;
    private readonly _dart_setValue: (newValue?: number | undefined) => void =
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
    public createDefaultValue(): number | undefined {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: number | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(serialized?: Object | undefined): number | undefined {
        return this._dart_fromPrimitives(serialized);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value?: number | undefined): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): number | undefined {
        return this._dart_getValue();
    }
    public setValue(newValue?: number | undefined): void {
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
