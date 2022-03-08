import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IThemeData } from "./themeData";
declare const flutter: {
    material: {
        themeDataTween: (
            this: void,
            themeDataTween: IThemeDataTween,
            props?: {
                begin?: IThemeData | undefined;
                end?: IThemeData | undefined;
            }
        ) => IThemeDataTween;
    };
};
export interface IThemeDataTween {
    begin: IThemeData | undefined;
    end: IThemeData | undefined;
    lerp: (t: number) => IThemeData;
    transform: (t: number) => IThemeData;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IThemeData;
    animate: (parent: IAnimation<number>) => IAnimation<IThemeData>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IThemeData>;
    getHashCode: () => number;
}
export class ThemeDataTween implements ITween<IThemeData> {
    public readonly begin: IThemeData | undefined = undefined as any;
    public readonly end: IThemeData | undefined = undefined as any;
    public constructor(props?: {
        begin?: IThemeData | undefined;
        end?: IThemeData | undefined;
    }) {
        flutter.material.themeDataTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IThemeData = undefined as any;
    private readonly _dart_transform: (t: number) => IThemeData =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IThemeData = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IThemeData> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IThemeData> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IThemeData {
        return this._dart_lerp(t);
    }
    public transform(t: number): IThemeData {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IThemeData {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IThemeData> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IThemeData> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
