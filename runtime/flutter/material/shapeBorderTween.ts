import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IShapeBorder } from "../painting/shapeBorder";
declare const flutter: {
    material: {
        shapeBorderTween: (
            this: void,
            shapeBorderTween: IShapeBorderTween,
            props?: {
                begin?: IShapeBorder | undefined;
                end?: IShapeBorder | undefined;
            }
        ) => IShapeBorderTween;
    };
};
export interface IShapeBorderTween {
    begin: IShapeBorder | undefined;
    end: IShapeBorder | undefined;
    lerp: (t: number) => IShapeBorder | undefined;
    transform: (t: number) => IShapeBorder | undefined;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IShapeBorder | undefined;
    animate: (
        parent: IAnimation<number>
    ) => IAnimation<IShapeBorder | undefined>;
    chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IShapeBorder | undefined>;
    getHashCode: () => number;
}
export class ShapeBorderTween implements ITween<?IShapeBorder> {
    public readonly begin: IShapeBorder | undefined = undefined as any;
    public readonly end: IShapeBorder | undefined = undefined as any;
    public constructor(props?: {
        begin?: IShapeBorder | undefined;
        end?: IShapeBorder | undefined;
    }) {
        flutter.material.shapeBorderTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IShapeBorder | undefined =
        undefined as any;
    private readonly _dart_transform: (t: number) => IShapeBorder | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IShapeBorder | undefined = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IShapeBorder | undefined> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IShapeBorder | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IShapeBorder | undefined {
        return this._dart_lerp(t);
    }
    public transform(t: number): IShapeBorder | undefined {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IShapeBorder | undefined {
        return this._dart_evaluate(animation);
    }
    public animate(
        parent: IAnimation<number>
    ): IAnimation<IShapeBorder | undefined> {
        return this._dart_animate(parent);
    }
    public chain(
        parent: IAnimatable<number>
    ): IAnimatable<IShapeBorder | undefined> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
