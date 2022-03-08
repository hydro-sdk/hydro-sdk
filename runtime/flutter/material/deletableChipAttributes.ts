import { IColor } from "../../dart/ui/color";
import { IWidget } from "../widgets/widget";
export interface IDeletableChipAttributes {
    getDeleteIcon: () => IWidget | undefined;
    getOnDeleted: () => () => void | undefined;
    getDeleteIconColor: () => IColor | undefined;
    getUseDeleteButtonTooltip: () => boolean;
    getDeleteButtonTooltipMessage: () => string | undefined;
}
