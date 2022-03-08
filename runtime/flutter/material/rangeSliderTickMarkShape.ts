import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { ISliderThemeData } from "./sliderThemeData";
export interface IRangeSliderTickMarkShape {
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
}
