import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IParametricCurve } from "../animation/parametricCurve";
declare const flutter: {
    material: {
        _bottomSheetSuspendedCurve: (
            this: void,
            _bottomSheetSuspendedCurve: I_BottomSheetSuspendedCurve,
            startingPoint: number,
            props: { curve: ICurve }
        ) => I_BottomSheetSuspendedCurve;
    };
};
export interface I_BottomSheetSuspendedCurve {
    startingPoint: number;
    curve: ICurve;
    transform: (t: number) => number;
    toString: () => string;
    transformInternal: (t: number) => number;
    getHashCode: () => number;
}
export class _BottomSheetSuspendedCurve implements IParametricCurve<number> {
    public readonly startingPoint: number = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public constructor(startingPoint: number, props: { curve?: ICurve }) {
        flutter.material._bottomSheetSuspendedCurve(this, startingPoint, {
            ..._bottomSheetSuspendedCurveDefaultProps,
            ...props,
        });
    }
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_transformInternal: (t: number) => number =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public transform(t: number): number {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public transformInternal(t: number): number {
        return this._dart_transformInternal(t);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const _bottomSheetSuspendedCurveDefaultProps = {
    curve: Curves.easeOutCubic,
};
