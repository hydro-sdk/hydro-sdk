import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IAnimation } from "../animation/animation";
import { IPaintingContext } from "../rendering/paintingContext";
import { IRangeSliderThumbShape } from "./rangeSliderThumbShape";
import { ISliderThemeData } from "./sliderThemeData";
import { Thumb } from "./thumb";
declare const flutter: {
    material: {
        roundRangeSliderThumbShape: (
            this: void,
            roundRangeSliderThumbShape: IRoundRangeSliderThumbShape,
            props: {
                disabledThumbRadius?: number | undefined;
                elevation: number;
                enabledThumbRadius: number;
                pressedElevation: number;
            }
        ) => IRoundRangeSliderThumbShape;
    };
};
export interface IRoundRangeSliderThumbShape {
    enabledThumbRadius: number;
    disabledThumbRadius: number | undefined;
    elevation: number;
    pressedElevation: number;
    getPreferredSize: (isEnabled: boolean, isDiscrete: boolean) => ISize;
    paint: (
        context: IPaintingContext,
        center: IOffset,
        props: {
            isDiscrete: boolean;
            isEnabled: boolean;
            isOnTop?: boolean | undefined;
            isPressed?: boolean | undefined;
            textDirection?: TextDirection | undefined;
            thumb?: Thumb | undefined;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            sliderTheme: ISliderThemeData;
        }
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class RoundRangeSliderThumbShape implements IRangeSliderThumbShape {
    public readonly enabledThumbRadius: number = undefined as any;
    public readonly disabledThumbRadius: number | undefined = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly pressedElevation: number = undefined as any;
    public constructor(props: {
        disabledThumbRadius?: number | undefined;
        elevation?: number;
        enabledThumbRadius?: number;
        pressedElevation?: number;
    }) {
        flutter.material.roundRangeSliderThumbShape(this, {
            ...roundRangeSliderThumbShapeDefaultProps,
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
            isDiscrete: boolean;
            isEnabled: boolean;
            isOnTop?: boolean | undefined;
            isPressed?: boolean | undefined;
            textDirection?: TextDirection | undefined;
            thumb?: Thumb | undefined;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            sliderTheme: ISliderThemeData;
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
            isDiscrete?: boolean;
            isEnabled?: boolean;
            isOnTop?: boolean | undefined;
            isPressed?: boolean | undefined;
            textDirection?: TextDirection | undefined;
            thumb?: Thumb | undefined;
            activationAnimation: IAnimation<number>;
            enableAnimation: IAnimation<number>;
            sliderTheme: ISliderThemeData;
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
const roundRangeSliderThumbShapeDefaultProps = {
    elevation: 1.0,
    enabledThumbRadius: 10.0,
    pressedElevation: 6.0,
};
const paintDefaultProps = {
    isDiscrete: false,
    isEnabled: false,
};
