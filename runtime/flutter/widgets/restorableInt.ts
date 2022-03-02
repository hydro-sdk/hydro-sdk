import { IListenable } from "../foundation/listenable";
import { IRestorableNum } from "./restorableNum";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableInt: (
            this: void,
            restorableInt: IRestorableInt,
            defaultValue: number
        ) => IRestorableInt;
    };
};
export interface IRestorableInt {
    fromPrimitives: (serialized?: Object | undefined) => number;
    toPrimitives: () => Object;
    setValue: (value: number) => void;
    createDefaultValue: () => number;
    didUpdateValue: (oldValue?: number | undefined) => void;
    initWithValue: (value: number) => void;
    getValue: () => number;
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
export class RestorableInt implements IRestorableNum<number>, IListenable {
    public constructor(defaultValue: number) {
        flutter.widgets.restorableInt(this, defaultValue);
    }
    private readonly _dart_fromPrimitives: (
        serialized?: Object | undefined
    ) => number = undefined as any;
    private readonly _dart_toPrimitives: () => Object = undefined as any;
    private readonly _dart_setValue: (value: number) => void = undefined as any;
    private readonly _dart_createDefaultValue: () => number = undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: number | undefined
    ) => void = undefined as any;
    private readonly _dart_initWithValue: (value: number) => void =
        undefined as any;
    private readonly _dart_getValue: () => number = undefined as any;
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
    public fromPrimitives(serialized?: Object | undefined): number {
        return this._dart_fromPrimitives(serialized);
    }
    public toPrimitives(): Object {
        return this._dart_toPrimitives();
    }
    public setValue(value: number): void {
        return this._dart_setValue(value);
    }
    public createDefaultValue(): number {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: number | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public initWithValue(value: number): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): number {
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
