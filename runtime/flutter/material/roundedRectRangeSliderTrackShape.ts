import { IOffset, Offset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { IRangeSliderTrackShape } from "./rangeSliderTrackShape";
import { ISliderThemeData } from "./sliderThemeData";
declare const flutter: {
    material: {
        roundedRectRangeSliderTrackShape: (
            this: void,
            roundedRectRangeSliderTrackShape: IRoundedRectRangeSliderTrackShape
        ) => IRoundedRectRangeSliderTrackShape;
    };
};
export interface IRoundedRectRangeSliderTrackShape {
    getPreferredRect: (props: {
        isDiscrete: boolean;
        isEnabled: boolean;
        offset: IOffset;
        parentBox: IRenderBox;
        sliderTheme: ISliderThemeData;
    }) => IRect;
    paint: (
        context: IPaintingContext,
        offset: IOffset,
        props: {
            additionalActiveTrackHeight: number;
            isDiscrete: boolean;
            isEnabled: boolean;
            enableAnimation: IAnimation<number>;
            endThumbCenter: IOffset;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            startThumbCenter: IOffset;
            textDirection: TextDirection;
        }
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class RoundedRectRangeSliderTrackShape
    implements IRangeSliderTrackShape
{
    public constructor() {
        flutter.material.roundedRectRangeSliderTrackShape(this);
    }
    private readonly _dart_getPreferredRect: (props: {
        isDiscrete: boolean;
        isEnabled: boolean;
        offset: IOffset;
        parentBox: IRenderBox;
        sliderTheme: ISliderThemeData;
    }) => IRect = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        offset: IOffset,
        props: {
            additionalActiveTrackHeight: number;
            isDiscrete: boolean;
            isEnabled: boolean;
            enableAnimation: IAnimation<number>;
            endThumbCenter: IOffset;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            startThumbCenter: IOffset;
            textDirection: TextDirection;
        }
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public paint(
        context: IPaintingContext,
        offset: IOffset,
        props: {
            additionalActiveTrackHeight?: number;
            isDiscrete?: boolean;
            isEnabled?: boolean;
            enableAnimation: IAnimation<number>;
            endThumbCenter: IOffset;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            startThumbCenter: IOffset;
            textDirection: TextDirection;
        }
    ): void {
        return this._dart_paint(context, offset, {
            ...paintDefaultProps,
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
const getPreferredRectDefaultProps = {
    isDiscrete: false,
    isEnabled: false,
    offset: Offset.zero,
};
const paintDefaultProps = {
    additionalActiveTrackHeight: 2,
    isDiscrete: false,
    isEnabled: false,
};
