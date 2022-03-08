import { IOffset, Offset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { IBaseSliderTrackShape } from "./baseSliderTrackShape";
import { ISliderThemeData } from "./sliderThemeData";
import { ISliderTrackShape } from "./sliderTrackShape";
declare const flutter: {
    material: {
        roundedRectSliderTrackShape: (
            this: void,
            roundedRectSliderTrackShape: IRoundedRectSliderTrackShape
        ) => IRoundedRectSliderTrackShape;
    };
};
export interface IRoundedRectSliderTrackShape {
    paint: (
        context: IPaintingContext,
        offset: IOffset,
        props: {
            additionalActiveTrackHeight: number;
            isDiscrete: boolean;
            isEnabled: boolean;
            enableAnimation: IAnimation<number>;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            thumbCenter: IOffset;
        }
    ) => void;
    getPreferredRect: (props: {
        isDiscrete: boolean;
        isEnabled: boolean;
        offset: IOffset;
        parentBox: IRenderBox;
        sliderTheme: ISliderThemeData;
    }) => IRect;
    toString: () => string;
    getHashCode: () => number;
}
export class RoundedRectSliderTrackShape
    implements ISliderTrackShape, IBaseSliderTrackShape
{
    public constructor() {
        flutter.material.roundedRectSliderTrackShape(this);
    }
    private readonly _dart_paint: (
        context: IPaintingContext,
        offset: IOffset,
        props: {
            additionalActiveTrackHeight: number;
            isDiscrete: boolean;
            isEnabled: boolean;
            enableAnimation: IAnimation<number>;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            thumbCenter: IOffset;
        }
    ) => void = undefined as any;
    private readonly _dart_getPreferredRect: (props: {
        isDiscrete: boolean;
        isEnabled: boolean;
        offset: IOffset;
        parentBox: IRenderBox;
        sliderTheme: ISliderThemeData;
    }) => IRect = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public paint(
        context: IPaintingContext,
        offset: IOffset,
        props: {
            additionalActiveTrackHeight?: number;
            isDiscrete?: boolean;
            isEnabled?: boolean;
            enableAnimation: IAnimation<number>;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            thumbCenter: IOffset;
        }
    ): void {
        return this._dart_paint(context, offset, {
            ...paintDefaultProps,
            ...props,
        });
    }
    public getPreferredRect(props: {
        isDiscrete?: boolean;
        isEnabled?: boolean;
        offset?: IOffset;
        parentBox: IRenderBox;
        sliderTheme: ISliderThemeData;
    }): IRect {
        return this._dart_getPreferredRect({
            ...getPreferredRectDefaultProps,
            ...props,
        });
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const paintDefaultProps = {
    additionalActiveTrackHeight: 2,
    isDiscrete: false,
    isEnabled: false,
};
const getPreferredRectDefaultProps = {
    isDiscrete: false,
    isEnabled: false,
    offset: Offset.zero,
};
