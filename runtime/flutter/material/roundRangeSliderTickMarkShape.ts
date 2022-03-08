import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { IRangeSliderTickMarkShape } from "./rangeSliderTickMarkShape";
import { ISliderThemeData } from "./sliderThemeData";
declare const flutter: {
    material: {
        roundRangeSliderTickMarkShape: (
            this: void,
            roundRangeSliderTickMarkShape: IRoundRangeSliderTickMarkShape,
            props?: { tickMarkRadius?: number | undefined }
        ) => IRoundRangeSliderTickMarkShape;
    };
};
export interface IRoundRangeSliderTickMarkShape {
    tickMarkRadius: number | undefined;
    getPreferredSize: (props: {
        isEnabled: boolean;
        sliderTheme: ISliderThemeData;
    }) => ISize;
    paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
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
export class RoundRangeSliderTickMarkShape
    implements IRangeSliderTickMarkShape
{
    public readonly tickMarkRadius: number | undefined = undefined as any;
    public constructor(props?: { tickMarkRadius?: number | undefined }) {
        flutter.material.roundRangeSliderTickMarkShape(this, props);
    }
    private readonly _dart_getPreferredSize: (props: {
        isEnabled: boolean;
        sliderTheme: ISliderThemeData;
    }) => ISize = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
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
    public getPreferredSize(props: {
        isEnabled?: boolean;
        sliderTheme: ISliderThemeData;
    }): ISize {
        return this._dart_getPreferredSize({
            ...getPreferredSizeDefaultProps,
            ...props,
        });
    }
    public paint(
        context: IPaintingContext,
        center: IOffset,
        props: {
            isEnabled?: boolean;
            enableAnimation: IAnimation<number>;
            endThumbCenter: IOffset;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            startThumbCenter: IOffset;
            textDirection: TextDirection;
        }
    ): void {
        return this._dart_paint(context, center, {
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
const getPreferredSizeDefaultProps = {
    isEnabled: false,
};
const paintDefaultProps = {
    isEnabled: false,
};
