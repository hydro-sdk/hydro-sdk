import { IPath } from "../../dart/ui/path";
import { I_PathCommand } from "./_pathCommand";
declare const flutter: {
    material: {
        _pathClose: (this: void, _pathClose: I_PathClose) => I_PathClose;
    };
};
export interface I_PathClose {
    apply: (path: IPath, progress: number) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _PathClose implements I_PathCommand {
    public constructor() {
        flutter.material._pathClose(this);
    }
    private readonly _dart_apply: (path: IPath, progress: number) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public apply(path: IPath, progress: number): void {
        return this._dart_apply(path, progress);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
