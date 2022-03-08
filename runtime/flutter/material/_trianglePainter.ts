import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
    material: {
        _trianglePainter: (
            this: void,
            _trianglePainter: I_TrianglePainter,
            props: { color: IColor }
        ) => I_TrianglePainter;
    };
};
export interface I_TrianglePainter {
    color: IColor;
    hitTest: (point: IOffset) => boolean;
    shouldRepaint: (oldPainter: unknown) => boolean;
    paint: (canvas: ICanvas, size: ISize) => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    shouldRebuildSemantics: (oldDelegate: unknown) => boolean;
    toString: () => string;
    getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined;
    getHashCode: () => number;
}
export class _TrianglePainter implements ICustomPainter {
    public readonly color: IColor = undefined as any;
    public constructor(props: { color: IColor }) {
        flutter.material._trianglePainter(this, props);
    }
    private readonly _dart_hitTest: (point: IOffset) => boolean =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldPainter: any) => boolean =
        undefined as any;
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_shouldRebuildSemantics: (
        oldDelegate: any
    ) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getSemanticsBuilder: () => (
        size: ISize
    ) => IList<ICustomPainterSemantics> | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public hitTest(point: IOffset): boolean {
        return this._dart_hitTest(point);
    }
    public shouldRepaint(oldPainter: any): boolean {
        return this._dart_shouldRepaint(oldPainter);
    }
    public paint(canvas: ICanvas, size: ISize): void {
        return this._dart_paint(canvas, size);
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
