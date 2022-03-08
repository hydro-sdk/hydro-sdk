import { IListenable } from "../foundation/listenable";
import { IRestorableValue } from "../widgets/restorableValue";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { _TimePickerMode } from "./_timePickerMode";
declare const flutter: {
    material: {
        _restorableTimePickerMode: (
            this: void,
            _restorableTimePickerMode: I_RestorableTimePickerMode,
            defaultValue: _TimePickerMode
        ) => I_RestorableTimePickerMode;
    };
};
export interface I_RestorableTimePickerMode {
    createDefaultValue: () => _TimePickerMode;
    didUpdateValue: (oldValue?: _TimePickerMode | undefined) => void;
    fromPrimitives: (data?: Object | undefined) => _TimePickerMode;
    toPrimitives: () => Object | undefined;
    initWithValue: (value: _TimePickerMode) => void;
    getValue: () => _TimePickerMode;
    setValue: (newValue: _TimePickerMode) => void;
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
export class _RestorableTimePickerMode
    implements IRestorableValue<I_TimePickerMode>, IListenable
{
    public constructor(defaultValue: _TimePickerMode) {
        flutter.material._restorableTimePickerMode(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => _TimePickerMode =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: _TimePickerMode | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => _TimePickerMode = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value: _TimePickerMode) => void =
        undefined as any;
    private readonly _dart_getValue: () => _TimePickerMode = undefined as any;
    private readonly _dart_setValue: (newValue: _TimePickerMode) => void =
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
    public createDefaultValue(): _TimePickerMode {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: _TimePickerMode | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(data?: Object | undefined): _TimePickerMode {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: _TimePickerMode): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): _TimePickerMode {
        return this._dart_getValue();
    }
    public setValue(newValue: _TimePickerMode): void {
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
