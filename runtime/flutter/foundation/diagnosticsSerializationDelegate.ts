import { IList } from "./../../dart/collection/list";
import { IDiagnosticsNode } from "./diagnosticsNode";
export interface IDiagnosticsSerializationDelegate {
    additionalNodeProperties: (
        node: IDiagnosticsNode
    ) => { [index: string]: Object | undefined };
    filterChildren: (
        nodes: IList<IDiagnosticsNode>,
        owner: IDiagnosticsNode
    ) => IList<IDiagnosticsNode>;
    filterProperties: (
        nodes: IList<IDiagnosticsNode>,
        owner: IDiagnosticsNode
    ) => IList<IDiagnosticsNode>;
    truncateNodesList: (
        nodes: IList<IDiagnosticsNode>,
        owner?: IDiagnosticsNode | undefined
    ) => IList<IDiagnosticsNode>;
    delegateForNode: (
        node: IDiagnosticsNode
    ) => IDiagnosticsSerializationDelegate;
    getSubtreeDepth: () => number;
    getIncludeProperties: () => boolean;
    getExpandPropertyValues: () => boolean;
    copyWith: (props: {
        includeProperties: boolean;
        subtreeDepth: number;
    }) => IDiagnosticsSerializationDelegate;
}
