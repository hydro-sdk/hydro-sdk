import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IInputBorder } from "./inputBorder";
declare const flutter: {
    material: {
        _inputBorderTween: (
            this: void,
            _inputBorderTween: I_InputBorderTween,
            props?: {
                begin?: IInputBorder | undefined;
                end?: IInputBorder | undefined;
            }
        ) => I_InputBorderTween;
    };
};
export interface I_InputBorderTween {
    begin: IInputBorder | undefined;
    end: IInputBorder | undefined;
    lerp: (t: number) => IInputBorder;
    transform: (t: number) => IInputBorder;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IInputBorder;
    animate: (parent: IAnimation<number>) => IAnimation<IInputBorder>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IInputBorder>;
    getHashCode: () => number;
}
export class _InputBorderTween implements ITween<IInputBorder> {
    public readonly begin: IInputBorder | undefined = undefined as any;
    public readonly end: IInputBorder | undefined = undefined as any;
    public constructor(props?: {
        begin?: IInputBorder | undefined;
        end?: IInputBorder | undefined;
    }) {
        flutter.material._inputBorderTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IInputBorder = undefined as any;
    private readonly _dart_transform: (t: number) => IInputBorder =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IInputBorder = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IInputBorder> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IInputBorder> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IInputBorder {
        return this._dart_lerp(t);
    }
    public transform(t: number): IInputBorder {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IInputBorder {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IInputBorder> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IInputBorder> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
