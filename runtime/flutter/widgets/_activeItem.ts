import { IComparable } from "../../dart/core/comparable";
import { IAnimationController } from "../animation/animationController";
export interface I_ActiveItem extends IComparable<_ActiveItem> {
    controller: IAnimationController | undefined;
    itemIndex: number;
    compareTo: (other: I_ActiveItem) => number;
}
