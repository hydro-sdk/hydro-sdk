import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IPipelineOwner } from "./pipelineOwner";
import { IRenderObject } from "./renderObject";
export interface IContainerRenderObjectMixin<ChildType, ParentDataType> {
    getChildCount: () => number;
    debugValidateChild: (child: IRenderObject) => boolean;
    insert: (
        child: ChildType,
        props?: { after?: ChildType | undefined }
    ) => void;
    add: (child: ChildType) => void;
    addAll: (children?: IList<ChildType> | undefined) => void;
    remove: (child: ChildType) => void;
    removeAll: () => void;
    move: (child: ChildType, props?: { after?: ChildType | undefined }) => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    redepthChildren: () => void;
    visitChildren: (visitor: (child: IRenderObject) => void) => void;
    getFirstChild: () => ChildType | undefined;
    getLastChild: () => ChildType | undefined;
    childBefore: (child: ChildType) => ChildType | undefined;
    childAfter: (child: ChildType) => ChildType | undefined;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
}
