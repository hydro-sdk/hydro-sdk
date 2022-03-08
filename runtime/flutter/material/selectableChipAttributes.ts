import { IColor } from "../../dart/ui/color";
import { IShapeBorder } from "../painting/shapeBorder";
export interface ISelectableChipAttributes {
    getSelected: () => boolean;
    getOnSelected: () => (value: boolean) => void | undefined;
    getPressElevation: () => number | undefined;
    getSelectedColor: () => IColor | undefined;
    getSelectedShadowColor: () => IColor | undefined;
    getTooltip: () => string | undefined;
    getAvatarBorder: () => IShapeBorder;
}
