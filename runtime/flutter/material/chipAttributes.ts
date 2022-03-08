import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { ITextStyle } from "../painting/textStyle";
import { IFocusNode } from "../widgets/focusNode";
import { IWidget } from "../widgets/widget";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity } from "./visualDensity";
export interface IChipAttributes {
    getLabel: () => IWidget;
    getAvatar: () => IWidget | undefined;
    getLabelStyle: () => ITextStyle | undefined;
    getSide: () => IBorderSide | undefined;
    getShape: () => IOutlinedBorder | undefined;
    getClipBehavior: () => Clip;
    getFocusNode: () => IFocusNode | undefined;
    getAutofocus: () => boolean;
    getBackgroundColor: () => IColor | undefined;
    getPadding: () => IEdgeInsetsGeometry | undefined;
    getVisualDensity: () => IVisualDensity | undefined;
    getLabelPadding: () => IEdgeInsetsGeometry | undefined;
    getMaterialTapTargetSize: () => MaterialTapTargetSize | undefined;
    getElevation: () => number | undefined;
    getShadowColor: () => IColor | undefined;
}
