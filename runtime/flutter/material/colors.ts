import {Color} from "../../dart/ui/color";

declare const flutter: {
    material: {
        wireupColors: (this: void) => any;
    };
};

export const Colors: {
    primaries: [

    ];
    lightGreenAccent: {
        400: Color;
    };
} = flutter.material.wireupColors();