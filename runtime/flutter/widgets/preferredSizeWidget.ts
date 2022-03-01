
import { IWidget } from "./widget";
import { ISize } from "../../dart/ui/size";
export interface IPreferredSizeWidget

 extends IWidget
{
getPreferredSize: () => ISize;
}