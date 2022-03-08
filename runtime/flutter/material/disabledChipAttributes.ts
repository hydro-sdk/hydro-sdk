import { IColor } from "../../dart/ui/color";
export interface IDisabledChipAttributes {
    getIsEnabled: () => boolean;
    getDisabledColor: () => IColor | undefined;
}
