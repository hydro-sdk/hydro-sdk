import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { ITextStyle } from "../painting/textStyle";
declare const flutter: {
    widgets: {
        textStyleTween: (
            this: void,
            textStyleTween: ITextStyleTween,
            props?: {
                begin?: ITextStyle | undefined;
                end?: ITextStyle | undefined;
            }
        ) => ITextStyleTween;
    };
};
export interface ITextStyleTween {
    begin: ITextStyle | undefined;
    end: ITextStyle | undefined;
    lerp: (t: number) => ITextStyle;
    transform: (t: number) => ITextStyle;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => ITextStyle;
    animate: (parent: IAnimation<number>) => IAnimation<ITextStyle>;
    chain: (parent: IAnimatable<number>) => IAnimatable<ITextStyle>;
    getHashCode: () => number;
}
export class TextStyleTween implements ITween<ITextStyle> {
    public readonly begin: ITextStyle | undefined = undefined as any;
    public readonly end: ITextStyle | undefined = undefined as any;
    public constructor(props?: {
        begin?: ITextStyle | undefined;
        end?: ITextStyle | undefined;
    }) {
        flutter.widgets.textStyleTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => ITextStyle = undefined as any;
    private readonly _dart_transform: (t: number) => ITextStyle =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => ITextStyle = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<ITextStyle> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<ITextStyle> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): ITextStyle {
        return this._dart_lerp(t);
    }
    public transform(t: number): ITextStyle {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): ITextStyle {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<ITextStyle> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<ITextStyle> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
