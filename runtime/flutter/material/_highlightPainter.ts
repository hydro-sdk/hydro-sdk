import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { _HighlightPainterStyle } from "./_highlightPainterStyle";
declare const flutter: {
    material: {
        _highlightPainter: (
            this: void,
            _highlightPainter: I_HighlightPainter,
            props: {
                style: _HighlightPainterStyle;
                textDirection?: TextDirection | undefined;
                color: IColor;
            }
        ) => I_HighlightPainter;
    };
};
export interface I_HighlightPainter {
    color: IColor;
    style: _HighlightPainterStyle;
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
export class _HighlightPainter implements ICustomPainter {
    public readonly color: IColor = undefined as any;
    public readonly style: _HighlightPainterStyle = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public constructor(props: {
        style?: _HighlightPainterStyle;
        textDirection?: TextDirection | undefined;
        color: IColor;
    }) {
        flutter.material._highlightPainter(this, {
            ..._highlightPainterDefaultProps,
            ...props,
        });
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
const _highlightPainterDefaultProps = {
    style: _HighlightPainterStyle.none,
};
