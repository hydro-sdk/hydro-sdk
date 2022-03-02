import { IList } from "../../dart/core/list";
import { IPolynomialFit } from "./polynomialFit";
declare const flutter: {
    gestures: {
        leastSquaresSolver: (
            this: void,
            leastSquaresSolver: ILeastSquaresSolver,
            x: IList<number>,
            y: IList<number>,
            w: IList<number>
        ) => ILeastSquaresSolver;
    };
};
export interface ILeastSquaresSolver {
    x: IList<number>;
    y: IList<number>;
    w: IList<number>;
    solve: (degree: number) => IPolynomialFit | undefined;
}
export class LeastSquaresSolver {
    public readonly x: IList<number> = undefined as any;
    public readonly y: IList<number> = undefined as any;
    public readonly w: IList<number> = undefined as any;
    public constructor(x: IList<number>, y: IList<number>, w: IList<number>) {
        flutter.gestures.leastSquaresSolver(this, x, y, w);
    }
    private readonly _dart_solve: (
        degree: number
    ) => IPolynomialFit | undefined = undefined as any;
    public solve(degree: number): IPolynomialFit | undefined {
        return this._dart_solve(degree);
    }
}
