import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { ITextPainter } from "../painting/textPainter";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { ISliderThemeData } from "./sliderThemeData";
export interface ISliderComponentShape {
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
}
