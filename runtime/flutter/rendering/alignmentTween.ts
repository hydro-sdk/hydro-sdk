import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IAlignment } from "../painting/alignment";
declare const flutter: {
    rendering: {
        alignmentTween: (
            this: void,
            alignmentTween: IAlignmentTween,
            props?: {
                begin?: IAlignment | undefined;
                end?: IAlignment | undefined;
            }
        ) => IAlignmentTween;
    };
};
export interface IAlignmentTween {
    begin: IAlignment | undefined;
    end: IAlignment | undefined;
    lerp: (t: number) => IAlignment;
    transform: (t: number) => IAlignment;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IAlignment;
    animate: (parent: IAnimation<number>) => IAnimation<IAlignment>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IAlignment>;
    getHashCode: () => number;
}
export class AlignmentTween implements ITween<IAlignment> {
    public readonly begin: IAlignment | undefined = undefined as any;
    public readonly end: IAlignment | undefined = undefined as any;
    public constructor(props?: {
        begin?: IAlignment | undefined;
        end?: IAlignment | undefined;
    }) {
        flutter.rendering.alignmentTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IAlignment = undefined as any;
    private readonly _dart_transform: (t: number) => IAlignment =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IAlignment = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IAlignment> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IAlignment> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IAlignment {
        return this._dart_lerp(t);
    }
    public transform(t: number): IAlignment {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IAlignment {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IAlignment> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IAlignment> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
