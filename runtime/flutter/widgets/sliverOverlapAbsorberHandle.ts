import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
declare const flutter: {
    widgets: {
        sliverOverlapAbsorberHandle: (
            this: void,
            sliverOverlapAbsorberHandle: ISliverOverlapAbsorberHandle
        ) => ISliverOverlapAbsorberHandle;
    };
};
export interface ISliverOverlapAbsorberHandle {
    getLayoutExtent: () => number | undefined;
    getScrollExtent: () => number | undefined;
    toString: () => string;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class SliverOverlapAbsorberHandle
    implements IChangeNotifier, IListenable
{
    public constructor() {
        flutter.widgets.sliverOverlapAbsorberHandle(this);
    }
    private readonly _dart_getLayoutExtent: () => number | undefined =
        undefined as any;
    private readonly _dart_getScrollExtent: () => number | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getLayoutExtent(): number | undefined {
        return this._dart_getLayoutExtent();
    }
    public getScrollExtent(): number | undefined {
        return this._dart_getScrollExtent();
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
