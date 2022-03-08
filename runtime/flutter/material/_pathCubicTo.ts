import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IPath } from "../../dart/ui/path";
import { I_PathCommand } from "./_pathCommand";
declare const flutter: {
    material: {
        _pathCubicTo: (
            this: void,
            _pathCubicTo: I_PathCubicTo,
            controlPoints1: IList<IOffset>,
            controlPoints2: IList<IOffset>,
            targetPoints: IList<IOffset>
        ) => I_PathCubicTo;
    };
};
export interface I_PathCubicTo {
    controlPoints2: IList<IOffset>;
    controlPoints1: IList<IOffset>;
    targetPoints: IList<IOffset>;
    apply: (path: IPath, progress: number) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _PathCubicTo implements I_PathCommand {
    public readonly controlPoints2: IList<IOffset> = undefined as any;
    public readonly controlPoints1: IList<IOffset> = undefined as any;
    public readonly targetPoints: IList<IOffset> = undefined as any;
    public constructor(
        controlPoints1: IList<IOffset>,
        controlPoints2: IList<IOffset>,
        targetPoints: IList<IOffset>
    ) {
        flutter.material._pathCubicTo(
            this,
            controlPoints1,
            controlPoints2,
            targetPoints
        );
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
