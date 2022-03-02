import { IDateTime } from "../../dart/core/dateTime";
import { IListenable } from "../foundation/listenable";
import { IRestorableValue } from "./restorableValue";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableDateTime: (
            this: void,
            restorableDateTime: IRestorableDateTime,
            defaultValue: IDateTime
        ) => IRestorableDateTime;
    };
};
export interface IRestorableDateTime {
    createDefaultValue: () => IDateTime;
    didUpdateValue: (oldValue?: IDateTime | undefined) => void;
    fromPrimitives: (data?: Object | undefined) => IDateTime;
    toPrimitives: () => Object | undefined;
    initWithValue: (value: IDateTime) => void;
    getValue: () => IDateTime;
    setValue: (newValue: IDateTime) => void;
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
export class RestorableDateTime
    implements IRestorableValue<IDateTime>, IListenable
{
    public constructor(defaultValue: IDateTime) {
        flutter.widgets.restorableDateTime(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => IDateTime =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: IDateTime | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => IDateTime = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value: IDateTime) => void =
        undefined as any;
    private readonly _dart_getValue: () => IDateTime = undefined as any;
    private readonly _dart_setValue: (newValue: IDateTime) => void =
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
    public createDefaultValue(): IDateTime {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: IDateTime | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(data?: Object | undefined): IDateTime {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: IDateTime): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): IDateTime {
        return this._dart_getValue();
    }
    public setValue(newValue: IDateTime): void {
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
