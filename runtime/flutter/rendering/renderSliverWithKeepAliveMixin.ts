import { IRenderObject } from "./renderObject";
import { IRenderSliver } from "./renderSliver";
export interface IRenderSliverWithKeepAliveMixin extends IRenderSliver {
    setupParentData: (child: unknown) => void;
}
