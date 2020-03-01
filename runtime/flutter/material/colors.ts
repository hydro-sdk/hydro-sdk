import {Color} from "../../dart/ui/color";

declare const flutter: {
    material: {
        wireupColors: (this: void) => any;
    };
};

export const Colors: {
    primaries: Array<Color>;
    lightGreenAccent: {
        400: Color;
    };
} = flutter.material.wireupColors();