import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
import { ICurve } from "./curve";
declare const flutter: {
    animation: {
        curveTween: (
            this: void,
            curveTween: ICurveTween,
            props: { curve: ICurve }
        ) => ICurveTween;
    };
};
export interface ICurveTween {
    curve: ICurve;
    transform: (t: number) => number;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => number;
    animate: (parent: IAnimation<number>) => IAnimation<number>;
    chain: (parent: IAnimatable<number>) => IAnimatable<number>;
    getHashCode: () => number;
}
export class CurveTween implements IAnimatable<number> {
    public readonly curve: ICurve = undefined as any;
    public constructor(props: { curve: ICurve }) {
        flutter.animation.curveTween(this, props);
    }
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => number =
        undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<number> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<number> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public transform(t: number): number {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): number {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<number> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<number> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
