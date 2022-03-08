import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { ISliderThemeData } from "./sliderThemeData";
import { Thumb } from "./thumb";
export interface IRangeSliderThumbShape {
    getPreferredSize: (isEnabled: boolean, isDiscrete: boolean) => ISize;
    paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            isDiscrete: boolean;
            isEnabled: boolean;
            isOnTop: boolean;
            isPressed: boolean;
            textDirection: TextDirection;
            thumb: Thumb;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            sliderTheme: ISliderThemeData;
        }
    ) => void;
}
