import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IPipelineOwner } from "./pipelineOwner";
import { IRenderObject } from "./renderObject";
export interface IRenderObjectWithChildMixin<ChildType> {
    debugValidateChild: (child: IRenderObject) => boolean;
    getChild: () => ChildType | undefined;
    setChild: (value?: ChildType | undefined) => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    redepthChildren: () => void;
    visitChildren: (visitor: (child: IRenderObject) => void) => void;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
}
