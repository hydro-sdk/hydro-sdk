import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { IBoxHitTestResult } from "./boxHitTestResult";
import { IContainerBoxParentData } from "./containerBoxParentData";
import { IContainerRenderObjectMixin } from "./containerRenderObjectMixin";
import { IPaintingContext } from "./paintingContext";
import { IRenderBox } from "./renderBox";
export interface IRenderBoxContainerDefaultsMixin<ChildType, ParentDataType>
    extends IContainerRenderObjectMixin<ChildType, ParentDataType> {
    defaultComputeDistanceToFirstActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined;
    defaultComputeDistanceToHighestActualBaseline: (
        baseline: TextBaseline
    ) => number | undefined;
    defaultHitTestChildren: (
        result: IBoxHitTestResult,
        props: { position: IOffset }
    ) => boolean;
    defaultPaint: (context: IPaintingContext, offset: IOffset) => void;
    getChildrenAsList: () => IList<ChildType>;
}
