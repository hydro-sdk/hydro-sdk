import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IBoxConstraints } from "../rendering/boxConstraints";
declare const flutter: {
    widgets: {
        boxConstraintsTween: (
            this: void,
            boxConstraintsTween: IBoxConstraintsTween,
            props?: {
                begin?: IBoxConstraints | undefined;
                end?: IBoxConstraints | undefined;
            }
        ) => IBoxConstraintsTween;
    };
};
export interface IBoxConstraintsTween {
    begin: IBoxConstraints | undefined;
    end: IBoxConstraints | undefined;
    lerp: (t: number) => IBoxConstraints;
    transform: (t: number) => IBoxConstraints;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IBoxConstraints;
    animate: (parent: IAnimation<number>) => IAnimation<IBoxConstraints>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IBoxConstraints>;
    getHashCode: () => number;
}
export class BoxConstraintsTween implements ITween<IBoxConstraints> {
    public readonly begin: IBoxConstraints | undefined = undefined as any;
    public readonly end: IBoxConstraints | undefined = undefined as any;
    public constructor(props?: {
        begin?: IBoxConstraints | undefined;
        end?: IBoxConstraints | undefined;
    }) {
        flutter.widgets.boxConstraintsTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IBoxConstraints =
        undefined as any;
    private readonly _dart_transform: (t: number) => IBoxConstraints =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IBoxConstraints> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IBoxConstraints> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IBoxConstraints {
        return this._dart_lerp(t);
    }
    public transform(t: number): IBoxConstraints {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IBoxConstraints {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IBoxConstraints> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IBoxConstraints> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
