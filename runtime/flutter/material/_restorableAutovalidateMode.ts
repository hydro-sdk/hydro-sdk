import { IListenable } from "../foundation/listenable";
import { AutovalidateMode } from "../widgets/autovalidateMode";
import { IRestorableValue } from "../widgets/restorableValue";
import { IState } from "../widgets/state";
import { IStatefulWidget } from "../widgets/statefulWidget";
declare const flutter: {
    material: {
        _restorableAutovalidateMode: (
            this: void,
            _restorableAutovalidateMode: I_RestorableAutovalidateMode,
            defaultValue: AutovalidateMode
        ) => I_RestorableAutovalidateMode;
    };
};
export interface I_RestorableAutovalidateMode {
    createDefaultValue: () => AutovalidateMode;
    didUpdateValue: (oldValue?: AutovalidateMode | undefined) => void;
    fromPrimitives: (data?: Object | undefined) => AutovalidateMode;
    toPrimitives: () => Object | undefined;
    initWithValue: (value: AutovalidateMode) => void;
    getValue: () => AutovalidateMode;
    setValue: (newValue: AutovalidateMode) => void;
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
export class _RestorableAutovalidateMode
    implements IRestorableValue<IAutovalidateMode>, IListenable
{
    public constructor(defaultValue: AutovalidateMode) {
        flutter.material._restorableAutovalidateMode(this, defaultValue);
    }
    private readonly _dart_createDefaultValue: () => AutovalidateMode =
        undefined as any;
    private readonly _dart_didUpdateValue: (
        oldValue?: AutovalidateMode | undefined
    ) => void = undefined as any;
    private readonly _dart_fromPrimitives: (
        data?: Object | undefined
    ) => AutovalidateMode = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
    private readonly _dart_initWithValue: (value: AutovalidateMode) => void =
        undefined as any;
    private readonly _dart_getValue: () => AutovalidateMode = undefined as any;
    private readonly _dart_setValue: (newValue: AutovalidateMode) => void =
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
    public createDefaultValue(): AutovalidateMode {
        return this._dart_createDefaultValue();
    }
    public didUpdateValue(oldValue?: AutovalidateMode | undefined): void {
        return this._dart_didUpdateValue(oldValue);
    }
    public fromPrimitives(data?: Object | undefined): AutovalidateMode {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
    }
    public initWithValue(value: AutovalidateMode): void {
        return this._dart_initWithValue(value);
    }
    public getValue(): AutovalidateMode {
        return this._dart_getValue();
    }
    public setValue(newValue: AutovalidateMode): void {
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
