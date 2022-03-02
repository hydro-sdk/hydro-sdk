import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IRelativeRect } from "../rendering/relativeRect";
declare const flutter: {
    widgets: {
        relativeRectTween: (
            this: void,
            relativeRectTween: IRelativeRectTween,
            props?: {
                begin?: IRelativeRect | undefined;
                end?: IRelativeRect | undefined;
            }
        ) => IRelativeRectTween;
    };
};
export interface IRelativeRectTween {
    begin: IRelativeRect | undefined;
    end: IRelativeRect | undefined;
    lerp: (t: number) => IRelativeRect;
    transform: (t: number) => IRelativeRect;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IRelativeRect;
    animate: (parent: IAnimation<number>) => IAnimation<IRelativeRect>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IRelativeRect>;
    getHashCode: () => number;
}
export class RelativeRectTween implements ITween<IRelativeRect> {
    public readonly begin: IRelativeRect | undefined = undefined as any;
    public readonly end: IRelativeRect | undefined = undefined as any;
    public constructor(props?: {
        begin?: IRelativeRect | undefined;
        end?: IRelativeRect | undefined;
    }) {
        flutter.widgets.relativeRectTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IRelativeRect =
        undefined as any;
    private readonly _dart_transform: (t: number) => IRelativeRect =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IRelativeRect = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IRelativeRect> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IRelativeRect> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IRelativeRect {
        return this._dart_lerp(t);
    }
    public transform(t: number): IRelativeRect {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IRelativeRect {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IRelativeRect> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IRelativeRect> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
