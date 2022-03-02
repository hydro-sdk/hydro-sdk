import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
    widgets: {
        _diagnosticsPathNode: (
            this: void,
            _diagnosticsPathNode: I_DiagnosticsPathNode,
            props: {
                childIndex?: number | undefined;
                children: IList<IDiagnosticsNode>;
                node: IDiagnosticsNode;
            }
        ) => I_DiagnosticsPathNode;
    };
};
export interface I_DiagnosticsPathNode {
    node: IDiagnosticsNode;
    children: IList<IDiagnosticsNode>;
    childIndex: number | undefined;
}
export class _DiagnosticsPathNode {
    public readonly node: IDiagnosticsNode = undefined as any;
    public readonly children: IList<IDiagnosticsNode> = undefined as any;
    public readonly childIndex: number | undefined = undefined as any;
    public constructor(props: {
        childIndex?: number | undefined;
        children: IList<IDiagnosticsNode>;
        node: IDiagnosticsNode;
    }) {
        flutter.widgets._diagnosticsPathNode(this, props);
    }
}
