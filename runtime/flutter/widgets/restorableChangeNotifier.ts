import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IRestorableListenable } from "./restorableListenable";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        restorableChangeNotifier: <T>(
            this: void,
            restorableChangeNotifier: IRestorableChangeNotifier<T>
        ) => IRestorableChangeNotifier<T>;
    };
};
export interface IRestorableChangeNotifier<T> {
    initWithValue: (value: T) => void;
    dispose: () => void;
    getValue: () => T;
    createDefaultValue: () => T;
    fromPrimitives: (data?: Object | undefined) => T;
    toPrimitives: () => Object | undefined;
    getEnabled: () => boolean;
    getState: () => IState<IStatefulWidget>;
    getIsRegistered: () => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class RestorableChangeNotifier<T>
    implements IRestorableListenable<T>, IListenable
{
    public constructor() {
        flutter.widgets.restorableChangeNotifier(this);
    }
    private readonly _dart_initWithValue: (value: T) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getValue: () => T = undefined as any;
    private readonly _dart_createDefaultValue: () => T = undefined as any;
    private readonly _dart_fromPrimitives: (data?: Object | undefined) => T =
        undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined =
        undefined as any;
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
    public initWithValue(value: T): void {
        return this._dart_initWithValue(value);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getValue(): T {
        return this._dart_getValue();
    }
    public createDefaultValue(): T {
        return this._dart_createDefaultValue();
    }
    public fromPrimitives(data?: Object | undefined): T {
        return this._dart_fromPrimitives(data);
    }
    public toPrimitives(): Object | undefined {
        return this._dart_toPrimitives();
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
