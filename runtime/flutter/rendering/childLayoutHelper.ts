import { ISize } from "../../dart/ui/size";
import { IBoxConstraints } from "./boxConstraints";
import { IRenderBox } from "./renderBox";
declare const flutter: {
    rendering: {
        childLayoutHelperDryLayoutChild: (
            child: IRenderBox,
            constrains: IBoxConstraints
        ) => ISize;
        childLayoutHelperLayoutChild: (
            child: IRenderBox,
            constraints: IBoxConstraints
        ) => ISize;
    };
};
export interface IChildLayoutHelper {}
export class ChildLayoutHelper {
    public static dryLayoutChild(
        child: IRenderBox,
        constrains: IBoxConstraints
    ): ISize {
        return flutter.rendering.childLayoutHelperDryLayoutChild(
            child,
            constrains
        );
    }
    public static layoutChild(
        child: IRenderBox,
        constraints: IBoxConstraints
    ): ISize {
        return flutter.rendering.childLayoutHelperLayoutChild(
            child,
            constraints
        );
    }
}
