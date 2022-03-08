import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRenderBox } from "../rendering/renderBox";
import { ISliderThemeData } from "./sliderThemeData";
import { ISliderTickMarkShape } from "./sliderTickMarkShape";
declare const flutter: {
    material: {
        roundSliderTickMarkShape: (
            this: void,
            roundSliderTickMarkShape: IRoundSliderTickMarkShape,
            props?: { tickMarkRadius?: number | undefined }
        ) => IRoundSliderTickMarkShape;
    };
};
export interface IRoundSliderTickMarkShape {
    tickMarkRadius: number | undefined;
    getPreferredSize: (props: {
        isEnabled: boolean;
        sliderTheme: ISliderThemeData;
    }) => ISize;
    paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            enableAnimation: IAnimation<number>;
            isEnabled: boolean;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            thumbCenter: IOffset;
        }
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class RoundSliderTickMarkShape implements ISliderTickMarkShape {
    public readonly tickMarkRadius: number | undefined = undefined as any;
    public constructor(props?: { tickMarkRadius?: number | undefined }) {
        flutter.material.roundSliderTickMarkShape(this, props);
    }
    private readonly _dart_getPreferredSize: (props: {
        isEnabled: boolean;
        sliderTheme: ISliderThemeData;
    }) => ISize = undefined as any;
    private readonly _dart_paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            enableAnimation: IAnimation<number>;
            isEnabled: boolean;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            thumbCenter: IOffset;
        }
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getPreferredSize(props: {
        isEnabled: boolean;
        sliderTheme: ISliderThemeData;
    }): ISize {
        return this._dart_getPreferredSize(props);
    }
    public paint(
        context: IPaintingContext,
        center: IOffset,
        props: {
            enableAnimation: IAnimation<number>;
            isEnabled: boolean;
            parentBox: IRenderBox;
            sliderTheme: ISliderThemeData;
            textDirection: TextDirection;
            thumbCenter: IOffset;
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
