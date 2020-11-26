import { ColorSwatch, ColorSwatchLike } from "../painting/colorSwatch";

export class MaterialAccentColor<T extends ColorSwatchLike>
    implements ColorSwatch {
    public primary: number;
    public swatch: T;

    public constructor(primary: number, swatch: T) {
        this.primary = primary;
        this.swatch = swatch;
    }
}
