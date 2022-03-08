import { IListenable } from "../foundation/listenable";
import { IRestorableValue } from "../widgets/restorableValue";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { DatePickerEntryMode } from "./datePickerEntryMode";
declare const flutter: {
    material: {
        _restorableDatePickerEntryMode: (
            this: void,
            _restorableDatePickerEntryMode: I_RestorableDatePickerEntryMode,
            defaultValue: DatePickerEntryMode
        ) => I_RestorableDatePickerEntryMode;
    };
};
export interface I_RestorableDatePickerEntryMode {
    createDefaultValue: () => DatePickerEntryMode;
    didUpdateValue: (oldValue?: DatePickerEntryMode | undefined) => void;
    fromPrimitives: (data?: Object | undefined) => DatePickerEntryMode;
    toPrimitives: () => Object | undefined;
    initWithValue: (value: DatePickerEntryMode) => void;
    getValue: () => DatePickerEntryMode;
    setValue: (newValue: DatePickerEntryMode) => void;
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
export class _RestorableDatePickerEntryMode
    implements IRestorableValue<IDatePickerEntryMode>, IListenable
{
    public constructor(defaultValue: DatePickerEntryMode) {
        flutter.material._restorableDatePickerEntryMode(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => DatePickerEntryMode =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: DatePickerEntryMode | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => DatePickerEntryMode = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value: DatePickerEntryMode) => void =
        undefined as any;
    private readonly _dart_getValue: () => DatePickerEntryMode =
        undefined as any;
    private readonly _dart_setValue: (newValue: DatePickerEntryMode) => void =
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
    public createDefaultValue(): DatePickerEntryMode {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: DatePickerEntryMode | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(data?: Object | undefined): DatePickerEntryMode {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: DatePickerEntryMode): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): DatePickerEntryMode {
        return this._dart_getValue();
    }
    public setValue(newValue: DatePickerEntryMode): void {
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
