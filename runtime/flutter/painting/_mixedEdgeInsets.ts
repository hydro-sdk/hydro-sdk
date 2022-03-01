
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { Axis } from "./axis";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IEdgeInsets } from "./edgeInsets";
export interface I_MixedEdgeInsets

 extends IEdgeInsetsGeometry
{
getIsNonNegative: () => boolean;
resolve: (direction?: TextDirection | undefined) => IEdgeInsets;
}