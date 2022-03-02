import { ICurve } from "./curve";
import { Curves } from "./curves";
declare const flutter: {
    animation: {
        interval: (
            this: void,
            interval: IInterval,
            begin: number,
            end: number,
            props: { curve: ICurve }
        ) => IInterval;
    };
};
export interface IInterval {
    begin: number;
    end: number;
    curve: ICurve;
    transformInternal: (t: number) => number;
    toString: () => string;
    transform: (t: number) => number;
    getFlipped: () => ICurve;
    getHashCode: () => number;
}
export class Interval implements ICurve {
    public readonly begin: number = undefined as any;
    public readonly end: number = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public constructor(begin: number, end: number, props: { curve?: ICurve }) {
        flutter.animation.interval(this, begin, end, {
            ...intervalDefaultProps,
            ...props,
        });
    }
    private readonly _dart_transformInternal: (t: number) => number =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_getFlipped: () => ICurve = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public transformInternal(t: number): number {
        return this._dart_transformInternal(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public transform(t: number): number {
        return this._dart_transform(t);
    }
    public getFlipped(): ICurve {
        return this._dart_getFlipped();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const intervalDefaultProps = {
    curve: Curves.linear,
};
