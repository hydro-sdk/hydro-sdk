import { IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "../painting/borderRadius";
import { IShapeBorder } from "../painting/shapeBorder";
import { IRenderBox } from "../rendering/renderBox";
import { IInteractiveInkFeature } from "./interactiveInkFeature";
import { IMaterialInkController } from "./materialInkController";
export interface IInteractiveInkFeatureFactory {
    create: (props: {
        borderRadius?: IBorderRadius | undefined;
        containedInkWell: boolean;
        customBorder?: IShapeBorder | undefined;
        onRemoved?: () => void | undefined;
        radius?: number | undefined;
        rectCallback?: () => IRect | undefined;
        color: IColor;
        controller: IMaterialInkController;
        position: IOffset;
        referenceBox: IRenderBox;
        textDirection: TextDirection;
    }) => IInteractiveInkFeature;
}
