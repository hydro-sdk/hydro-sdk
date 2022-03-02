import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { Axis } from "../painting/axis";
import { ICustomClipper } from "../rendering/customClipper";
declare const flutter: {
    widgets: {
        _dismissibleClipper: (
            this: void,
            _dismissibleClipper: I_DismissibleClipper,
            props: { axis: Axis; moveAnimation: IAnimation<IOffset> }
        ) => I_DismissibleClipper;
    };
};
export interface I_DismissibleClipper {
    axis: Axis;
    moveAnimation: IAnimation<IOffset>;
    getClip: (size: ISize) => IRect;
    getApproximateClipRect: (size: ISize) => IRect;
    shouldReclip: (oldClipper: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _DismissibleClipper implements ICustomClipper<IRect> {
    public readonly axis: Axis = undefined as any;
    public readonly moveAnimation: IAnimation<IOffset> = undefined as any;
    public constructor(props: {
        axis: Axis;
        moveAnimation: IAnimation<IOffset>;
    }) {
        flutter.widgets._dismissibleClipper(this, props);
    }
    private readonly _dart_getClip: (size: ISize) => IRect = undefined as any;
    private readonly _dart_getApproximateClipRect: (size: ISize) => IRect =
        undefined as any;
    private readonly _dart_shouldReclip: (oldClipper: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getClip(size: ISize): IRect {
        return this._dart_getClip(size);
    }
    public getApproximateClipRect(size: ISize): IRect {
        return this._dart_getApproximateClipRect(size);
    }
    public shouldReclip(oldClipper: any): boolean {
        return this._dart_shouldReclip(oldClipper);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
