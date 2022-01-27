import { ICanvas } from "../../dart/ui/canvas";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { BorderSide, IBorderSide } from "./borderSide";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { IShapeBorder } from "./shapeBorder";
export interface IOutlinedBorder extends IShapeBorder {
    side: IBorderSide;
    copyWith: (props?: { side?: IBorderSide | undefined }) => IOutlinedBorder;
}
