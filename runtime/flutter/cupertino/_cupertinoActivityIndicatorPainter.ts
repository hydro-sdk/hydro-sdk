import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IRRect } from "../../dart/ui/rRect";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
    cupertino: {
        _cupertinoActivityIndicatorPainter: (
            this: void,
            _cupertinoActivityIndicatorPainter: I_CupertinoActivityIndicatorPainter,
            props: {
                activeColor: IColor;
                position: IAnimation<number>;
                progress: number;
                radius: number;
            }
        ) => I_CupertinoActivityIndicatorPainter;
    };
};
export interface I_CupertinoActivityIndicatorPainter {
    position: IAnimation<number>;
    activeColor: IColor;
    radius: number;
    progress: number;
    tickFundamentalRRect: IRRect;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldPainter: unknown) => boolean;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    hitTest: (position: IOffset) => boolean | undefined;
    toString: () => string;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    getHashCode: () => number;
}
export class _CupertinoActivityIndicatorPainter implements ICustomPainter {
    public readonly position: IAnimation<number> = undefined as any;
    public readonly activeColor: IColor = undefined as any;
    public readonly radius: number = undefined as any;
    public readonly progress: number = undefined as any;
    public readonly tickFundamentalRRect: IRRect = undefined as any;
    public constructor(props: {
        activeColor: IColor;
        position: IAnimation<number>;
        progress: number;
        radius: number;
    }) {
        flutter.cupertino._cupertinoActivityIndicatorPainter(this, props);
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldPainter: any) => boolean =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_hitTest: (position: IOffset) => boolean | undefined =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
    }
    public shouldRepaint(oldPainter: any): boolean {
        return this._dart_shouldRepaint(oldPainter);
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public shouldRebuildSemantics(oldDelegate: any): boolean {
        return this._dart_shouldRebuildSemantics(oldDelegate);
    }
    public hitTest(position: IOffset): boolean | undefined {
        return this._dart_hitTest(position);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getSemanticsBuilder(): (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined {
        return this._dart_getSemanticsBuilder();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
