import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { BorderSide, IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
export interface IInputBorder extends IShapeBorder {
    borderSide: IBorderSide;
    copyWith: (props?: {
        borderSide?: IBorderSide | undefined;
    }) => IInputBorder;
    getIsOutline: () => boolean;
    paint: (
        canvas: ICanvas,
        rect: IRect,
        props: {
            gapExtent: number;
            gapPercentage: number;
            gapStart?: number | undefined;
            textDirection?: TextDirection | undefined;
        }
    ) => void;
}
