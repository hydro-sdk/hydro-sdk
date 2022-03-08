import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { ITextPainter } from "../painting/textPainter";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { ISliderThemeData } from "./sliderThemeData";
import { Thumb } from "./thumb";
declare const flutter: {
    material: {
        rangeSliderValueIndicatorShape: (
            this: void,
            rangeSliderValueIndicatorShape: IRangeSliderValueIndicatorShape
        ) => IRangeSliderValueIndicatorShape;
    };
};
export interface IRangeSliderValueIndicatorShape {
    getPreferredSize: (
        isEnabled: boolean,
        isDiscrete: boolean,
        props: { labelPainter: ITextPainter; textScaleFactor: number }
    ) => ISize;
    getHorizontalShift: (props?: {
        activationAnimation?: IAnimation<number> | undefined;
        center?: IOffset | undefined;
        labelPainter?: ITextPainter | undefined;
        parentBox?: IRenderBox | undefined;
        sizeWithOverflow?: ISize | undefined;
        textScaleFactor?: number | undefined;
    }) => number;
    paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            isDiscrete: boolean;
            isOnTop: boolean;
            sizeWithOverflow: ISize;
            textDirection: TextDirection;
            textScaleFactor: number;
            thumb: Thumb;
            value: number;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            labelPainter: ITextPainter;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
        }
    ) => void;
}
export class RangeSliderValueIndicatorShape {
    public constructor() {
        flutter.material.rangeSliderValueIndicatorShape(this);
    }
    private readonly _dart_getPreferredSize: (
        isEnabled: boolean,
        isDiscrete: boolean,
        props: { labelPainter: ITextPainter; textScaleFactor: number }
    ) => ISize = undefined as any;
    private readonly _dart_getHorizontalShift: (props?: {
        activationAnimation?: IAnimation<number> | undefined;
        center?: IOffset | undefined;
        labelPainter?: ITextPainter | undefined;
        parentBox?: IRenderBox | undefined;
        sizeWithOverflow?: ISize | undefined;
        textScaleFactor?: number | undefined;
    }) => number = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            isDiscrete: boolean;
            isOnTop: boolean;
            sizeWithOverflow: ISize;
            textDirection: TextDirection;
            textScaleFactor: number;
            thumb: Thumb;
            value: number;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            labelPainter: ITextPainter;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
        }
    ) => void = undefined as any;
    public getPreferredSize(
        isEnabled: boolean,
        isDiscrete: boolean,
        props: { labelPainter: ITextPainter; textScaleFactor: number }
    ): ISize {
        return this._dart_getPreferredSize(isEnabled, isDiscrete, props);
    }
    public getHorizontalShift(props?: {
        activationAnimation?: IAnimation<number> | undefined;
        center?: IOffset | undefined;
        labelPainter?: ITextPainter | undefined;
        parentBox?: IRenderBox | undefined;
        sizeWithOverflow?: ISize | undefined;
        textScaleFactor?: number | undefined;
    }): number {
        return this._dart_getHorizontalShift(props);
    }
    public paint(
        context: IPaintingContext,
        center: IOffset,
        props: {
            isDiscrete: boolean;
            isOnTop: boolean;
            sizeWithOverflow: ISize;
            textDirection: TextDirection;
            textScaleFactor: number;
            thumb: Thumb;
            value: number;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            labelPainter: ITextPainter;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
        }
    ): void {
        return this._dart_paint(context, center, props);
    }
}
