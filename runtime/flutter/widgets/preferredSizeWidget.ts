import { ISize } from "../../dart/ui/size";
import { IWidget } from "./widget";
export interface IPreferredSizeWidget extends IWidget {
    getPreferredSize: () => ISize;
}
