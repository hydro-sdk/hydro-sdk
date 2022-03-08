import { IOffset } from "../../dart/ui/offset";
import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
declare const flutter: {
    material: {
        materialPointArcTween: (
            this: void,
            materialPointArcTween: IMaterialPointArcTween,
            props?: { begin?: IOffset | undefined; end?: IOffset | undefined }
        ) => IMaterialPointArcTween;
    };
};
export interface IMaterialPointArcTween {
    begin: IOffset | undefined;
    end: IOffset | undefined;
    getCenter: () => IOffset | undefined;
    getRadius: () => number | undefined;
    getBeginAngle: () => number | undefined;
    getEndAngle: () => number | undefined;
    setBegin: (value?: IOffset | undefined) => void;
    setEnd: (value?: IOffset | undefined) => void;
    lerp: (t: number) => IOffset;
    toString: () => string;
    transform: (t: number) => IOffset;
    evaluate: (animation: IAnimation<number>) => IOffset;
    animate: (parent: IAnimation<number>) => IAnimation<IOffset>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IOffset>;
    getHashCode: () => number;
}
export class MaterialPointArcTween implements ITween<IOffset> {
    public readonly begin: IOffset | undefined = undefined as any;
    public readonly end: IOffset | undefined = undefined as any;
    public constructor(props?: {
        begin?: IOffset | undefined;
        end?: IOffset | undefined;
    }) {
        flutter.material.materialPointArcTween(this, props);
    }
    private readonly _dart_getCenter: () => IOffset | undefined =
        undefined as any;
    private readonly _dart_getRadius: () => number | undefined =
        undefined as any;
    private readonly _dart_getBeginAngle: () => number | undefined =
        undefined as any;
    private readonly _dart_getEndAngle: () => number | undefined =
        undefined as any;
    private readonly _dart_setBegin: (value?: IOffset | undefined) => void =
        undefined as any;
    private readonly _dart_setEnd: (value?: IOffset | undefined) => void =
        undefined as any;
    private readonly _dart_lerp: (t: number) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_transform: (t: number) => IOffset = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IOffset = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IOffset> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IOffset> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCenter(): IOffset | undefined {
        return this._dart_getCenter();
    }
    public getRadius(): number | undefined {
        return this._dart_getRadius();
    }
    public getBeginAngle(): number | undefined {
        return this._dart_getBeginAngle();
    }
    public getEndAngle(): number | undefined {
        return this._dart_getEndAngle();
    }
    public setBegin(value?: IOffset | undefined): void {
        return this._dart_setBegin(value);
    }
    public setEnd(value?: IOffset | undefined): void {
        return this._dart_setEnd(value);
    }
    public lerp(t: number): IOffset {
        return this._dart_lerp(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public transform(t: number): IOffset {
        return this._dart_transform(t);
    }
    public evaluate(animation: IAnimation<number>): IOffset {
        return this._dart_evaluate(animation);
    }
    public animate(parent: IAnimation<number>): IAnimation<IOffset> {
        return this._dart_animate(parent);
    }
    public chain(parent: IAnimatable<number>): IAnimatable<IOffset> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
