import { IMatrix4 } from "../../vector_math/matrix4";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IRenderBox } from "./renderBox";
import { IRenderSliver } from "./renderSliver";
export interface IRenderSliverHelpers extends IRenderSliver {
    hitTestBoxChild: (
        result: IBoxHitTestResult,
        child: IRenderBox,
        props: { crossAxisPosition: number; mainAxisPosition: number }
    ) => boolean;
    applyPaintTransformForBoxChild: (
        child: IRenderBox,
        transform: IMatrix4
    ) => void;
}
