import { IAnimatable } from "../animation/animatable";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
declare const flutter: {
    widgets: {
        edgeInsetsGeometryTween: (
            this: void,
            edgeInsetsGeometryTween: IEdgeInsetsGeometryTween,
            props?: {
                begin?: IEdgeInsetsGeometry | undefined;
                end?: IEdgeInsetsGeometry | undefined;
            }
        ) => IEdgeInsetsGeometryTween;
    };
};
export interface IEdgeInsetsGeometryTween {
    begin: IEdgeInsetsGeometry | undefined;
    end: IEdgeInsetsGeometry | undefined;
    lerp: (t: number) => IEdgeInsetsGeometry;
    transform: (t: number) => IEdgeInsetsGeometry;
    toString: () => string;
    evaluate: (animation: IAnimation<number>) => IEdgeInsetsGeometry;
    animate: (parent: IAnimation<number>) => IAnimation<IEdgeInsetsGeometry>;
    chain: (parent: IAnimatable<number>) => IAnimatable<IEdgeInsetsGeometry>;
    getHashCode: () => number;
}
export class EdgeInsetsGeometryTween implements ITween<IEdgeInsetsGeometry> {
    public readonly begin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly end: IEdgeInsetsGeometry | undefined = undefined as any;
    public constructor(props?: {
        begin?: IEdgeInsetsGeometry | undefined;
        end?: IEdgeInsetsGeometry | undefined;
    }) {
        flutter.widgets.edgeInsetsGeometryTween(this, props);
    }
    private readonly _dart_lerp: (t: number) => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_transform: (t: number) => IEdgeInsetsGeometry =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (
        animation: IAnimation<number>
    ) => IEdgeInsetsGeometry = undefined as any;
    private readonly _dart_animate: (
        parent: IAnimation<number>
    ) => IAnimation<IEdgeInsetsGeometry> = undefined as any;
    private readonly _dart_chain: (
        parent: IAnimatable<number>
    ) => IAnimatable<IEdgeInsetsGeometry> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerp(t: number): IEdgeInsetsGeometry {
        return this._dart_lerp(t);
    }
    public transform(t: number): IEdgeInsetsGeometry {
        return this._dart_transform(t);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public evaluate(animation: IAnimation<number>): IEdgeInsetsGeometry {
        return this._dart_evaluate(animation);
    }
    public animate(
        parent: IAnimation<number>
    ): IAnimation<IEdgeInsetsGeometry> {
        return this._dart_animate(parent);
    }
    public chain(
        parent: IAnimatable<number>
    ): IAnimatable<IEdgeInsetsGeometry> {
        return this._dart_chain(parent);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
