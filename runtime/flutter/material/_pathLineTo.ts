import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IPath } from "../../dart/ui/path";
import { I_PathCommand } from "./_pathCommand";
declare const flutter: {
    material: {
        _pathLineTo: (
            this: void,
            _pathLineTo: I_PathLineTo,
            points: IList<IOffset>
        ) => I_PathLineTo;
    };
};
export interface I_PathLineTo {
    points: IList<IOffset>;
    apply: (path: IPath, progress: number) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _PathLineTo implements I_PathCommand {
    public readonly points: IList<IOffset> = undefined as any;
    public constructor(points: IList<IOffset>) {
        flutter.material._pathLineTo(this, points);
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
