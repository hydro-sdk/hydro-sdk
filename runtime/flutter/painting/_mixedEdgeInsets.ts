import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { Axis } from "./axis";
import { IEdgeInsets } from "./edgeInsets";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
export interface I_MixedEdgeInsets extends IEdgeInsetsGeometry {
    getIsNonNegative: () => boolean;
    resolve: (direction?: TextDirection | undefined) => IEdgeInsets;
}
