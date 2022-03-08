import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { ITextPainter } from "../painting/textPainter";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { ISliderComponentShape } from "./sliderComponentShape";
import { ISliderThemeData } from "./sliderThemeData";
declare const flutter: {
    material: {
        roundSliderOverlayShape: (
            this: void,
            roundSliderOverlayShape: IRoundSliderOverlayShape,
            props: { overlayRadius: number }
        ) => IRoundSliderOverlayShape;
    };
};
export interface IRoundSliderOverlayShape {
    overlayRadius: number;
    getPreferredSize: (isEnabled: boolean, isDiscrete: boolean) => ISize;
    paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            isDiscrete: boolean;
            labelPainter: ITextPainter;
            parentBox: IRenderBox;
            sizeWithOverflow: ISize;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            textScaleFactor: number;
            value: number;
        }
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class RoundSliderOverlayShape implements ISliderComponentShape {
    public readonly overlayRadius: number = undefined as any;
    public constructor(props: { overlayRadius?: number }) {
        flutter.material.roundSliderOverlayShape(this, {
            ...roundSliderOverlayShapeDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getPreferredSize: (
        isEnabled: boolean,
        isDiscrete: boolean
    ) => ISize = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            isDiscrete: boolean;
            labelPainter: ITextPainter;
            parentBox: IRenderBox;
            sizeWithOverflow: ISize;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            textScaleFactor: number;
            value: number;
        }
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getPreferredSize(isEnabled: boolean, isDiscrete: boolean): ISize {
        return this._dart_getPreferredSize(isEnabled, isDiscrete);
    }
    public paint(
        context: IPaintingContext,
        center: IOffset,
        props: {
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            isDiscrete: boolean;
            labelPainter: ITextPainter;
            parentBox: IRenderBox;
            sizeWithOverflow: ISize;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            textScaleFactor: number;
            value: number;
        }
    ): void {
        return this._dart_paint(context, center, props);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const roundSliderOverlayShapeDefaultProps = {
    overlayRadius: 24.0,
};
