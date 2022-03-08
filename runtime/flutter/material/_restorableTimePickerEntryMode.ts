import { IListenable } from "../foundation/listenable";
import { IRestorableValue } from "../widgets/restorableValue";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { TimePickerEntryMode } from "./timePickerEntryMode";
declare const flutter: {
    material: {
        _restorableTimePickerEntryMode: (
            this: void,
            _restorableTimePickerEntryMode: I_RestorableTimePickerEntryMode,
            defaultValue: TimePickerEntryMode
        ) => I_RestorableTimePickerEntryMode;
    };
};
export interface I_RestorableTimePickerEntryMode {
    createDefaultValue: () => TimePickerEntryMode;
    didUpdateValue: (oldValue?: TimePickerEntryMode | undefined) => void;
    fromPrimitives: (data?: Object | undefined) => TimePickerEntryMode;
    toPrimitives: () => Object | undefined;
    initWithValue: (value: TimePickerEntryMode) => void;
    getValue: () => TimePickerEntryMode;
    setValue: (newValue: TimePickerEntryMode) => void;
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
export class _RestorableTimePickerEntryMode
    implements IRestorableValue<ITimePickerEntryMode>, IListenable
{
    public constructor(defaultValue: TimePickerEntryMode) {
        flutter.material._restorableTimePickerEntryMode(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => TimePickerEntryMode =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: TimePickerEntryMode | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => TimePickerEntryMode = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value: TimePickerEntryMode) => void =
        undefined as any;
    private readonly _dart_getValue: () => TimePickerEntryMode =
        undefined as any;
    private readonly _dart_setValue: (newValue: TimePickerEntryMode) => void =
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
    public createDefaultValue(): TimePickerEntryMode {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: TimePickerEntryMode | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(data?: Object | undefined): TimePickerEntryMode {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: TimePickerEntryMode): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): TimePickerEntryMode {
        return this._dart_getValue();
    }
    public setValue(newValue: TimePickerEntryMode): void {
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
