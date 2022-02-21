import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
import { ITween } from "./tween";
declare const flutter: {
    animation: {
        stepTween: (
            this: void,
            stepTween: IStepTween,
            props?: { begin?: number | undefined; end?: number | undefined }
        ) => IStepTween;
    };
};
export interface IStepTween {
    begin: number | undefined;
    end: number | undefined;
    lerp: (t: number) => number;
    transform: (t: number) => number;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => number;
    animate: (parent: IAnimation<number>) => IAnimation<number>;
    chain: (parent: IAnimatable<number>) => IAnimatable<number>;
    getHashCode: () => number;
}
export class StepTween implements ITween<number> {
    public readonly begin: number | undefined = undefined as any;
    public readonly end: number | undefined = undefined as any;
    public constructor(props?: {
        begin?: number | undefined;
        end?: number | undefined;
    }) {
        flutter.animation.stepTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => number = undefined as any;
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
    public lerp(t: number): number {
        return this._dart_lerp(t);
    }
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
