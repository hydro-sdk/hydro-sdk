import { IList } from "../../dart/core/list";
import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IColorTween } from "../animation/colorTween";
import { IListenable } from "../foundation/listenable";
import { ICustomPainter } from "../rendering/customPainter";
import { ICustomPainterSemantics } from "../rendering/customPainterSemantics";
import { I_InputBorderGap } from "./_inputBorderGap";
import { I_InputBorderTween } from "./_inputBorderTween";
declare const flutter: {
    material: {
        _inputBorderPainter: (
            this: void,
            _inputBorderPainter: I_InputBorderPainter,
            props: {
                border: I_InputBorderTween;
                borderAnimation: IAnimation<number>;
                fillColor: IColor;
                gap: I_InputBorderGap;
                gapAnimation: IAnimation<number>;
                hoverAnimation: IAnimation<number>;
                hoverColorTween: IColorTween;
                repaint: IListenable;
                textDirection: TextDirection;
            }
        ) => I_InputBorderPainter;
    };
};
export interface I_InputBorderPainter {
    borderAnimation: IAnimation<number>;
    border: I_InputBorderTween;
    gapAnimation: IAnimation<number>;
    gap: I_InputBorderGap;
    textDirection: TextDirection;
    fillColor: IColor;
    hoverColorTween: IColorTween;
    hoverAnimation: IAnimation<number>;
    getBlendedColor: () => IColor;
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
export class _InputBorderPainter implements ICustomPainter {
    public readonly borderAnimation: IAnimation<number> = undefined as any;
    public readonly border: I_InputBorderTween = undefined as any;
    public readonly gapAnimation: IAnimation<number> = undefined as any;
    public readonly gap: I_InputBorderGap = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly fillColor: IColor = undefined as any;
    public readonly hoverColorTween: IColorTween = undefined as any;
    public readonly hoverAnimation: IAnimation<number> = undefined as any;
    public constructor(props: {
        border: I_InputBorderTween;
        borderAnimation: IAnimation<number>;
        fillColor: IColor;
        gap: I_InputBorderGap;
        gapAnimation: IAnimation<number>;
        hoverAnimation: IAnimation<number>;
        hoverColorTween: IColorTween;
        repaint: IListenable;
        textDirection: TextDirection;
    }) {
        flutter.material._inputBorderPainter(this, props);
    }
    private readonly _dart_getBlendedColor: () => IColor = undefined as any;
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
    public getBlendedColor(): IColor {
        return this._dart_getBlendedColor();
    }
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
