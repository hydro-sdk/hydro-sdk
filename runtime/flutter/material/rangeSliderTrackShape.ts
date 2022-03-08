import { IOffset, Offset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { ISliderThemeData } from "./sliderThemeData";
export interface IRangeSliderTrackShape {
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
}
