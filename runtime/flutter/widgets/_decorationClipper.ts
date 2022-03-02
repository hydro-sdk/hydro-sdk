import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDecoration } from "../painting/decoration";
import { ICustomClipper } from "../rendering/customClipper";
declare const flutter: {
    widgets: {
        _decorationClipper: (
            this: void,
            _decorationClipper: I_DecorationClipper,
            props: {
                textDirection?: TextDirection | undefined;
                decoration: IDecoration;
            }
        ) => I_DecorationClipper;
    };
};
export interface I_DecorationClipper {
    textDirection: TextDirection;
    decoration: IDecoration;
    getClip: (size: ISize) => IPath;
    shouldReclip: (oldClipper: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getApproximateClipRect: (size: ISize) => IRect;
    toString: () => string;
    getHashCode: () => number;
}
export class _DecorationClipper implements ICustomClipper<IPath> {
    public readonly textDirection: TextDirection = undefined as any;
    public readonly decoration: IDecoration = undefined as any;
    public constructor(props: {
        textDirection?: TextDirection | undefined;
        decoration: IDecoration;
    }) {
        flutter.widgets._decorationClipper(this, props);
    }
    private readonly _dart_getClip: (size: ISize) => IPath = undefined as any;
    private readonly _dart_shouldReclip: (oldClipper: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_getApproximateClipRect: (size: ISize) => IRect =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getClip(size: ISize): IPath {
        return this._dart_getClip(size);
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
    public getApproximateClipRect(size: ISize): IRect {
        return this._dart_getApproximateClipRect(size);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
