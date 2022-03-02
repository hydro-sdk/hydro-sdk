import { IListenable } from "./listenable";
declare const flutter: {
    foundation: {
        changeNotifier: (
            this: void,
            changeNotifier: IChangeNotifier
        ) => IChangeNotifier;
    };
};
export interface IChangeNotifier {
    getHasListeners: () => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
}
export class ChangeNotifier implements IListenable {
    public constructor() {
        flutter.foundation.changeNotifier(this);
    }
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
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
}
