import { IList } from "../../dart/core/list";
import { IListenable } from "./listenable";
declare const flutter: {
    foundation: {
        _mergingListenable: (
            this: void,
            _mergingListenable: I_MergingListenable,
            _children: IList<IListenable | undefined>
        ) => I_MergingListenable;
    };
};
export interface I_MergingListenable {
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _MergingListenable implements IListenable {
    public constructor(_children: IList<IListenable | undefined>) {
        flutter.foundation._mergingListenable(this, _children);
    }
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
