import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IShapeBorder } from "../painting/shapeBorder";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
declare const flutter: {
    material: {
        _shapeBorderPainter: (
            this: void,
            _shapeBorderPainter: I_ShapeBorderPainter,
            border: IShapeBorder,
            textDirection?: TextDirection | undefined
        ) => I_ShapeBorderPainter;
    };
};
export interface I_ShapeBorderPainter {
    border: IShapeBorder;
    textDirection: TextDirection | undefined;
    paint: (canvas: ICanvas, size: ISize) => void;
    shouldRepaint: (oldDelegate: unknown) => boolean;
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
export class _ShapeBorderPainter implements ICustomPainter {
    public readonly border: IShapeBorder = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public constructor(
        border: IShapeBorder,
        textDirection?: TextDirection | undefined
    ) {
        flutter.material._shapeBorderPainter(this, border, textDirection);
    }
    private readonly _dart_paint: (canvas: ICanvas, size: ISize) => void =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean =
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
    public shouldRepaint(oldDelegate: any): boolean {
        return this._dart_shouldRepaint(oldDelegate);
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
