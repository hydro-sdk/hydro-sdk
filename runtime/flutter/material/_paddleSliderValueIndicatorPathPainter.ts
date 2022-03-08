import { ICanvas } from "../../dart/ui/canvas";
import { IColor } from "../../dart/ui/color";
import { IOffset, Offset } from "../../dart/ui/offset";
import { IPaint } from "../../dart/ui/paint";
import { ISize } from "../../dart/ui/size";
import { ITextPainter } from "../painting/textPainter";
declare const flutter: {
    material: {
        _paddleSliderValueIndicatorPathPainter: (
            this: void,
            _paddleSliderValueIndicatorPathPainter: I_PaddleSliderValueIndicatorPathPainter
        ) => I_PaddleSliderValueIndicatorPathPainter;
    };
};
export interface I_PaddleSliderValueIndicatorPathPainter {
    getPreferredSize: (
        labelPainter: ITextPainter,
        textScaleFactor: number
    ) => ISize;
    getHorizontalShift: (props: {
        center: IOffset;
        labelPainter: ITextPainter;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }) => number;
    paint: (
        canvas: ICanvas,
        center: IOffset,
        paint: IPaint,
        scale: number,
        labelPainter: ITextPainter,
        textScaleFactor: number,
        sizeWithOverflow: ISize,
        strokePaintColor?: IColor | undefined
    ) => void;
}
export class _PaddleSliderValueIndicatorPathPainter {
    public static _topLobeRadius = 16.0;
    public static _minLabelWidth = 16.0;
    public static _bottomLobeRadius = 10.0;
    public static _labelPadding = 8.0;
    public static _distanceBetweenTopBottomCenters = 40.0;
    public static _middleNeckWidth = 3.0;
    public static _bottomNeckRadius = 4.5;
    public static _topLobeCenter = new Offset(
        0.0,
        -_PaddleSliderValueIndicatorPathPainter._distanceBetweenTopBottomCenters
    );
    public static _topNeckRadius = 13.0;
    public static _debuggingLabelLocation = false;
    public constructor() {
        flutter.material._paddleSliderValueIndicatorPathPainter(this);
    }
    private readonly _dart_getPreferredSize: (
        labelPainter: ITextPainter,
        textScaleFactor: number
    ) => ISize = undefined as any;
    private readonly _dart_getHorizontalShift: (props: {
        center: IOffset;
        labelPainter: ITextPainter;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }) => number = undefined as any;
    private readonly _dart_paint: (
        canvas: ICanvas,
        center: IOffset,
        paint: IPaint,
        scale: number,
        labelPainter: ITextPainter,
        textScaleFactor: number,
        sizeWithOverflow: ISize,
        strokePaintColor?: IColor | undefined
    ) => void = undefined as any;
    public getPreferredSize(
        labelPainter: ITextPainter,
        textScaleFactor: number
    ): ISize {
        return this._dart_getPreferredSize(labelPainter, textScaleFactor);
    }
    public getHorizontalShift(props: {
        center: IOffset;
        labelPainter: ITextPainter;
        scale: number;
        sizeWithOverflow: ISize;
        textScaleFactor: number;
    }): number {
        return this._dart_getHorizontalShift(props);
    }
    public paint(
        canvas: ICanvas,
        center: IOffset,
        paint: IPaint,
        scale: number,
        labelPainter: ITextPainter,
        textScaleFactor: number,
        sizeWithOverflow: ISize,
        strokePaintColor?: IColor | undefined
    ): void {
        return this._dart_paint(
            canvas,
            center,
            paint,
            scale,
            labelPainter,
            textScaleFactor,
            sizeWithOverflow,
            strokePaintColor
        );
    }
}
