
import { ISize } from "../../dart/ui/size";
import { IMatrix4 } from "../../vector_math/matrix4";
export interface IFlowPaintingContext


{
getSize: () => ISize;
getChildCount: () => number;
getChildSize: (i: number) => ISize | undefined;
paintChild: (i: number, props : {  opacity : number, transform : IMatrix4,}) => void;
}