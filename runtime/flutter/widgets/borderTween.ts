import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IBorder } from "../painting/border";
declare const flutter: {
    widgets: {
        borderTween: (
            this: void,
            borderTween: IBorderTween,
            props?: { begin?: IBorder | undefined; end?: IBorder | undefined }
        ) => IBorderTween;
    };
};
export interface IBorderTween {
    begin: IBorder | undefined;
    end: IBorder | undefined;
    lerp: (t: number) => IBorder | undefined;
    transform: (t: number) => IBorder | undefined;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IBorder | undefined;
    animate: (parent: IAnimation<number>) => IAnimation<IBorder | undefined>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IBorder | undefined>;
    getHashCode: () => number;
}
export class BorderTween implements ITween<?IBorder> {
    public readonly begin: IBorder | undefined = undefined as any;
    public readonly end: IBorder | undefined = undefined as any;
    public constructor(props?: {
        begin?: IBorder | undefined;
        end?: IBorder | undefined;
    }) {
        flutter.widgets.borderTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IBorder | undefined =
        undefined as any;
    private readonly _dart_transform: (t: number) => IBorder | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IBorder | undefined = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IBorder | undefined> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IBorder | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IBorder | undefined {
        return this._dart_lerp(t);
    }
    public transform(t: number): IBorder | undefined {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IBorder | undefined {
        return this._dart_evaluate(animation);
    }
    public animate(
        parent: IAnimation<number>
    ): IAnimation<IBorder | undefined> {
        return this._dart_animate(parent);
    }
    public chain(
        parent: IAnimatable<number>
    ): IAnimatable<IBorder | undefined> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
