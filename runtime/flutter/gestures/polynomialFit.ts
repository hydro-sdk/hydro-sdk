import { IList } from "../../dart/core/list";
declare const flutter: {
    gestures: {
        polynomialFit: (
            this: void,
            polynomialFit: IPolynomialFit,
            degree: number
        ) => IPolynomialFit;
    };
};
export interface IPolynomialFit {
    coefficients: IList<number>;
    confidence: number;
}
export class PolynomialFit {
    public readonly coefficients: IList<number> = undefined as any;
    public readonly confidence: number = undefined as any;
    public constructor(degree: number) {
        flutter.gestures.polynomialFit(this, degree);
    }
}
