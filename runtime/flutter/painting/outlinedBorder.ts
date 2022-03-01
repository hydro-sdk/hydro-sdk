
import { IBorderSide,BorderSide } from "./borderSide";
import { IShapeBorder } from "./shapeBorder";
import { TextDirection } from "../../dart/ui/textDirection";
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
import { ICanvas } from "../../dart/ui/canvas";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
export interface IOutlinedBorder

 extends IShapeBorder
{
side: IBorderSide;
copyWith: ( props? : {  side? : IBorderSide | undefined,}) => IOutlinedBorder;
}