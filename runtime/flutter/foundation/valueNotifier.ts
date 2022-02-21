import { IChangeNotifier } from "./changeNotifier";
import { IListenable } from "./listenable";
import { IValueListenable } from "./valueListenable";
declare const flutter: {
    foundation: {
        valueNotifier: <T>(
            this: void,
            valueNotifier: IValueNotifier<T>,
            _value: T
        ) => IValueNotifier<T>;
    };
};
export interface IValueNotifier<T> {
    getValue: () => T;
    setValue: (newValue: T) => void;
    toString: () => string;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class ValueNotifier<T>
    implements IChangeNotifier, IValueListenable<T>, IListenable
{
    public constructor(_value: T) {
        flutter.foundation.valueNotifier(this, _value);
    }
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_setValue: (newValue: T) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getValue(): T {
        return this._dart_getValue();
    }
    public setValue(newValue: T): void {
        return this._dart_setValue(newValue);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
