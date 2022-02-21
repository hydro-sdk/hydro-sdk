import { IRect } from "../../dart/ui/rect";
import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
import { ITween } from "./tween";
declare const flutter: {
    animation: {
        rectTween: (
            this: void,
            rectTween: IRectTween,
            props?: { begin?: IRect | undefined; end?: IRect | undefined }
        ) => IRectTween;
    };
};
export interface IRectTween {
    begin: IRect | undefined;
    end: IRect | undefined;
    lerp: (t: number) => IRect | undefined;
    transform: (t: number) => IRect | undefined;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IRect | undefined;
    animate: (parent: IAnimation<number>) => IAnimation<IRect | undefined>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IRect | undefined>;
    getHashCode: () => number;
}
export class RectTween implements ITween<?IRect> {
    public readonly begin: IRect | undefined = undefined as any;
    public readonly end: IRect | undefined = undefined as any;
    public constructor(props?: {
        begin?: IRect | undefined;
        end?: IRect | undefined;
    }) {
        flutter.animation.rectTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IRect | undefined =
        undefined as any;
    private readonly _dart_transform: (t: number) => IRect | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IRect | undefined = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IRect | undefined> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IRect | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IRect | undefined {
        return this._dart_lerp(t);
    }
    public transform(t: number): IRect | undefined {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IRect | undefined {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IRect | undefined> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IRect | undefined> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
