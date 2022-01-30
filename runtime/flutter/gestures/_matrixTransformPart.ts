import { IMatrix4 } from "../../vector_math/matrix4";
import { I_TransformPart } from "./_transformPart";
declare const flutter: {
    gestures: {
        _matrixTransformPart: (
            this: void,
            _matrixTransformPart: I_MatrixTransformPart,
            matrix: IMatrix4
        ) => I_MatrixTransformPart;
    };
};
export interface I_MatrixTransformPart {
    matrix: IMatrix4;
    multiply: (rhs: IMatrix4) => IMatrix4;
    toString: () => string;
    getHashCode: () => number;
}
export class _MatrixTransformPart implements I_TransformPart {
    public readonly matrix: IMatrix4 = undefined as any;
    public constructor(matrix: IMatrix4) {
        flutter.gestures._matrixTransformPart(this, matrix);
    }
    private readonly _dart_multiply: (rhs: IMatrix4) => IMatrix4 =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public multiply(rhs: IMatrix4): IMatrix4 {
        return this._dart_multiply(rhs);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
