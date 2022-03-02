import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
declare const flutter: {
    cupertino: {
        cupertinoTabController: (
            this: void,
            cupertinoTabController: ICupertinoTabController,
            props: { initialIndex: number }
        ) => ICupertinoTabController;
    };
};
export interface ICupertinoTabController {
    getIndex: () => number;
    setIndex: (value: number) => void;
    dispose: () => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class CupertinoTabController implements IChangeNotifier, IListenable {
    public constructor(props: { initialIndex?: number }) {
        flutter.cupertino.cupertinoTabController(this, {
            ...cupertinoTabControllerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getIndex: () => number = undefined as any;
    private readonly _dart_setIndex: (value: number) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getIndex(): number {
        return this._dart_getIndex();
    }
    public setIndex(value: number): void {
        return this._dart_setIndex(value);
    }
    public dispose(): void {
        return this._dart_dispose();
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
const cupertinoTabControllerDefaultProps = {
    initialIndex: 0,
};
