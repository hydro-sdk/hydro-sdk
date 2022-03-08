import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
declare const flutter: {
    material: {
        _inputBorderGap: (
            this: void,
            _inputBorderGap: I_InputBorderGap
        ) => I_InputBorderGap;
    };
};
export interface I_InputBorderGap {
    getStart: () => number | undefined;
    setStart: (value?: number | undefined) => void;
    getExtent: () => number;
    setExtent: (value: number) => void;
    getHashCode: () => number;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    toString: () => string;
}
export class _InputBorderGap implements IChangeNotifier, IListenable {
    public constructor() {
        flutter.material._inputBorderGap(this);
    }
    private readonly _dart_getStart: () => number | undefined =
        undefined as any;
    private readonly _dart_setStart: (value?: number | undefined) => void =
        undefined as any;
    private readonly _dart_getExtent: () => number = undefined as any;
    private readonly _dart_setExtent: (value: number) => void =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getStart(): number | undefined {
        return this._dart_getStart();
    }
    public setStart(value?: number | undefined): void {
        return this._dart_setStart(value);
    }
    public getExtent(): number {
        return this._dart_getExtent();
    }
    public setExtent(value: number): void {
        return this._dart_setExtent(value);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
    public toString(): string {
        return this._dart_toString();
    }
}
