import { Color } from "../../dart/ui/color";

export type ColorSwatchLike = {
    [i: number]: Color;
};

export interface ColorSwatch {
    swatch: ColorSwatchLike;
}
