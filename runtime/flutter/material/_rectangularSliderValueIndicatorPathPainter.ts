import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { ITextPainter } from "../painting/textPainter";
import { IRenderBox } from "../rendering/renderBox";
declare const flutter: {
    material: {
        _rectangularSliderValueIndicatorPathPainter: (
            this: void,
            _rectangularSliderValueIndicatorPathPainter: I_RectangularSliderValueIndicatorPathPainter
        ) => I_RectangularSliderValueIndicatorPathPainter;
    };
};
export interface I_RectangularSliderValueIndicatorPathPainter {
    getPreferredSize: (
        labelPainter: ITextPainter,
        textScaleFactor: number
    ) => ISize;
    getHorizontalShift: (props: {
        center: IOffset;
        labelPainter: ITextPainter;
        parentBox: IRenderBox;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }) => number;
    paint: (props: {
        strokePaintColor?: IColor | undefined;
        backgroundPaintColor: IColor;
        canvas: ICanvas;
        center: IOffset;
        labelPainter: ITextPainter;
        parentBox: IRenderBox;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }) => void;
}
export class _RectangularSliderValueIndicatorPathPainter {
    public static _triangleHeight = 8.0;
    public static _labelPadding = 16.0;
    public static _preferredHeight = 32.0;
    public static _minLabelWidth = 16.0;
    public static _bottomTipYOffset = 14.0;
    public static _upperRectRadius = 4;
    public constructor() {
        flutter.material._rectangularSliderValueIndicatorPathPainter(this);
    }
    private readonly _dart_getPreferredSize: (
        labelPainter: ITextPainter,
        textScaleFactor: number
    ) => ISize = undefined as any;
    private readonly _dart_getHorizontalShift: (props: {
        center: IOffset;
        labelPainter: ITextPainter;
        parentBox: IRenderBox;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }) => number = undefined as any;
    private readonly _dart_paint: (props: {
        strokePaintColor?: IColor | undefined;
        backgroundPaintColor: IColor;
        canvas: ICanvas;
        center: IOffset;
        labelPainter: ITextPainter;
        parentBox: IRenderBox;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }) => void = undefined as any;
    public getPreferredSize(
        labelPainter: ITextPainter,
        textScaleFactor: number
    ): ISize {
        return this._dart_getPreferredSize(labelPainter, textScaleFactor);
    }
    public getHorizontalShift(props: {
        center: IOffset;
        labelPainter: ITextPainter;
        parentBox: IRenderBox;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }): number {
        return this._dart_getHorizontalShift(props);
    }
    public paint(props: {
        strokePaintColor?: IColor | undefined;
        backgroundPaintColor: IColor;
        canvas: ICanvas;
        center: IOffset;
        labelPainter: ITextPainter;
        parentBox: IRenderBox;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }): void {
        return this._dart_paint(props);
    }
}
