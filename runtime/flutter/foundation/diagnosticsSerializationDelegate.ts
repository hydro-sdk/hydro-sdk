import { List } from "./../../dart/collection/list";
import { DiagnosticsNode } from "./diagnosticsNode";
export interface DiagnosticsSerializationDelegate {
    additionalNodeProperties: (
        node: DiagnosticsNode
    ) => { [index: string]: Object | undefined };
    filterChildren: (
        nodes: List<DiagnosticsNode>,
        owner: DiagnosticsNode
    ) => List<DiagnosticsNode>;
    filterProperties: (
        nodes: List<DiagnosticsNode>,
        owner: DiagnosticsNode
    ) => List<DiagnosticsNode>;
    truncateNodesList: (
        nodes: List<DiagnosticsNode>,
        owner?: DiagnosticsNode | undefined
    ) => List<DiagnosticsNode>;
    delegateForNode: (
        node: DiagnosticsNode
    ) => DiagnosticsSerializationDelegate;
    getSubtreeDepth: () => number;
    getIncludeProperties: () => boolean;
    getExpandPropertyValues: () => boolean;
    copyWith: (props: {
        includeProperties: boolean;
        subtreeDepth: number;
    }) => DiagnosticsSerializationDelegate;
}
export interface IDiagnosticsSerializationDelegate {
    additionalNodeProperties: (
        node: DiagnosticsNode
    ) => { [index: string]: Object | undefined };
    filterChildren: (
        nodes: List<DiagnosticsNode>,
        owner: DiagnosticsNode
    ) => List<DiagnosticsNode>;
    filterProperties: (
        nodes: List<DiagnosticsNode>,
        owner: DiagnosticsNode
    ) => List<DiagnosticsNode>;
    truncateNodesList: (
        nodes: List<DiagnosticsNode>,
        owner?: DiagnosticsNode | undefined
    ) => List<DiagnosticsNode>;
    delegateForNode: (
        node: DiagnosticsNode
    ) => DiagnosticsSerializationDelegate;
    getSubtreeDepth: () => number;
    getIncludeProperties: () => boolean;
    getExpandPropertyValues: () => boolean;
    copyWith: (props: {
        includeProperties: boolean;
        subtreeDepth: number;
    }) => DiagnosticsSerializationDelegate;
}
