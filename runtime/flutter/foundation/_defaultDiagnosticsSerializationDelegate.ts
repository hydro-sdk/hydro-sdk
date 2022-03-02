import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { IDiagnosticsSerializationDelegate } from "./diagnosticsSerializationDelegate";
declare const flutter: {
    foundation: {
        _defaultDiagnosticsSerializationDelegate: (
            this: void,
            _defaultDiagnosticsSerializationDelegate: I_DefaultDiagnosticsSerializationDelegate,
            props: { includeProperties: boolean; subtreeDepth: number }
        ) => I_DefaultDiagnosticsSerializationDelegate;
    };
};
export interface I_DefaultDiagnosticsSerializationDelegate {
    includeProperties: boolean;
    subtreeDepth: number;
    additionalNodeProperties: (node: IDiagnosticsNode) => {
        [index: string]: Object | undefined;
    };
    delegateForNode: (
        node: IDiagnosticsNode
    ) => IDiagnosticsSerializationDelegate;
    getExpandPropertyValues: () => boolean;
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
    copyWith: (props?: {
        includeProperties?: boolean | undefined;
        subtreeDepth?: number | undefined;
    }) => IDiagnosticsSerializationDelegate;
    getSubtreeDepth: () => number;
    getIncludeProperties: () => boolean;
}
export class _DefaultDiagnosticsSerializationDelegate
    implements IDiagnosticsSerializationDelegate
{
    public readonly includeProperties: boolean = undefined as any;
    public readonly subtreeDepth: number = undefined as any;
    public constructor(props: {
        includeProperties?: boolean;
        subtreeDepth?: number;
    }) {
        flutter.foundation._defaultDiagnosticsSerializationDelegate(this, {
            ..._defaultDiagnosticsSerializationDelegateDefaultProps,
            ...props,
        });
    }
    private readonly _dart_additionalNodeProperties: (
        node: IDiagnosticsNode
    ) => { [index: string]: Object | undefined } = undefined as any;
    private readonly _dart_delegateForNode: (
        node: IDiagnosticsNode
    ) => IDiagnosticsSerializationDelegate = undefined as any;
    private readonly _dart_getExpandPropertyValues: () => boolean =
        undefined as any;
    private readonly _dart_filterChildren: (
        nodes: IList<IDiagnosticsNode>,
        owner: IDiagnosticsNode
    ) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_filterProperties: (
        nodes: IList<IDiagnosticsNode>,
        owner: IDiagnosticsNode
    ) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_truncateNodesList: (
        nodes: IList<IDiagnosticsNode>,
        owner?: IDiagnosticsNode | undefined
    ) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_copyWith: (props?: {
        includeProperties?: boolean | undefined;
        subtreeDepth?: number | undefined;
    }) => IDiagnosticsSerializationDelegate = undefined as any;
    private readonly _dart_getSubtreeDepth: () => number = undefined as any;
    private readonly _dart_getIncludeProperties: () => boolean =
        undefined as any;
    public additionalNodeProperties(node: IDiagnosticsNode): {
        [index: string]: Object | undefined;
    } {
        return this._dart_additionalNodeProperties(node);
    }
    public delegateForNode(
        node: IDiagnosticsNode
    ): IDiagnosticsSerializationDelegate {
        return this._dart_delegateForNode(node);
    }
    public getExpandPropertyValues(): boolean {
        return this._dart_getExpandPropertyValues();
    }
    public filterChildren(
        nodes: IList<IDiagnosticsNode>,
        owner: IDiagnosticsNode
    ): IList<IDiagnosticsNode> {
        return this._dart_filterChildren(nodes, owner);
    }
    public filterProperties(
        nodes: IList<IDiagnosticsNode>,
        owner: IDiagnosticsNode
    ): IList<IDiagnosticsNode> {
        return this._dart_filterProperties(nodes, owner);
    }
    public truncateNodesList(
        nodes: IList<IDiagnosticsNode>,
        owner?: IDiagnosticsNode | undefined
    ): IList<IDiagnosticsNode> {
        return this._dart_truncateNodesList(nodes, owner);
    }
    public copyWith(props?: {
        includeProperties?: boolean | undefined;
        subtreeDepth?: number | undefined;
    }): IDiagnosticsSerializationDelegate {
        return this._dart_copyWith(props);
    }
    public getSubtreeDepth(): number {
        return this._dart_getSubtreeDepth();
    }
    public getIncludeProperties(): boolean {
        return this._dart_getIncludeProperties();
    }
}
const _defaultDiagnosticsSerializationDelegateDefaultProps = {
    includeProperties: false,
    subtreeDepth: 0,
};
