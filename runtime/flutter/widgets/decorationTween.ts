import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IDecoration } from "../painting/decoration";
declare const flutter: {
    widgets: {
        decorationTween: (
            this: void,
            decorationTween: IDecorationTween,
            props?: {
                begin?: IDecoration | undefined;
                end?: IDecoration | undefined;
            }
        ) => IDecorationTween;
    };
};
export interface IDecorationTween {
    begin: IDecoration | undefined;
    end: IDecoration | undefined;
    lerp: (t: number) => IDecoration;
    transform: (t: number) => IDecoration;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IDecoration;
    animate: (parent: IAnimation<number>) => IAnimation<IDecoration>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IDecoration>;
    getHashCode: () => number;
}
export class DecorationTween implements ITween<IDecoration> {
    public readonly begin: IDecoration | undefined = undefined as any;
    public readonly end: IDecoration | undefined = undefined as any;
    public constructor(props?: {
        begin?: IDecoration | undefined;
        end?: IDecoration | undefined;
    }) {
        flutter.widgets.decorationTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IDecoration = undefined as any;
    private readonly _dart_transform: (t: number) => IDecoration =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IDecoration = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IDecoration> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IDecoration> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IDecoration {
        return this._dart_lerp(t);
    }
    public transform(t: number): IDecoration {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IDecoration {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IDecoration> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IDecoration> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
