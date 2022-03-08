import { IRect } from "../../dart/ui/rect";
import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { IRectTween } from "../animation/rectTween";
import { IMaterialPointArcTween } from "./materialPointArcTween";
declare const flutter: {
    material: {
        materialRectArcTween: (
            this: void,
            materialRectArcTween: IMaterialRectArcTween,
            props?: { begin?: IRect | undefined; end?: IRect | undefined }
        ) => IMaterialRectArcTween;
    };
};
export interface IMaterialRectArcTween {
    begin: IRect | undefined;
    end: IRect | undefined;
    getBeginArc: () => IMaterialPointArcTween | undefined;
    getEndArc: () => IMaterialPointArcTween | undefined;
    setBegin: (value?: IRect | undefined) => void;
    setEnd: (value?: IRect | undefined) => void;
    lerp: (t: number) => IRect;
    toString: () => string;
    transform: (t: number) => IRect | undefined;
    evaluate: (animation: IAnimation<number>) => IRect | undefined;
    animate: (parent: IAnimation<number>) => IAnimation<IRect | undefined>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IRect | undefined>;
    getHashCode: () => number;
}
export class MaterialRectArcTween implements IRectTween {
    public readonly begin: IRect | undefined = undefined as any;
    public readonly end: IRect | undefined = undefined as any;
    public constructor(props?: {
        begin?: IRect | undefined;
        end?: IRect | undefined;
    }) {
        flutter.material.materialRectArcTween(this, props);
    }
    private readonly _dart_getBeginArc: () =>
        | IMaterialPointArcTween
        | undefined = undefined as any;
    private readonly _dart_getEndArc: () => IMaterialPointArcTween | undefined =
        undefined as any;
    private readonly _dart_setBegin: (value?: IRect | undefined) => void =
        undefined as any;
    private readonly _dart_setEnd: (value?: IRect | undefined) => void =
        undefined as any;
    private readonly _dart_lerp: (t: number) => IRect = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_transform: (t: number) => IRect | undefined =
        undefined as any;
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
    public getBeginArc(): IMaterialPointArcTween | undefined {
        return this._dart_getBeginArc();
    }
    public getEndArc(): IMaterialPointArcTween | undefined {
        return this._dart_getEndArc();
    }
    public setBegin(value?: IRect | undefined): void {
        return this._dart_setBegin(value);
    }
    public setEnd(value?: IRect | undefined): void {
        return this._dart_setEnd(value);
    }
    public lerp(t: number): IRect {
        return this._dart_lerp(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public transform(t: number): IRect | undefined {
        return this._dart_transform(t);
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
