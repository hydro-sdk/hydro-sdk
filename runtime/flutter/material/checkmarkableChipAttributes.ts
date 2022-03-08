import { IColor } from "../../dart/ui/color";
export interface ICheckmarkableChipAttributes {
    getShowCheckmark: () => boolean | undefined;
    getCheckmarkColor: () => IColor | undefined;
}
