import { IComparable } from "../../dart/core/comparable";
import { ISemanticsNode } from "./semanticsNode";
import { ISemanticsSortKey } from "./semanticsSortKey";
declare const flutter: {
    semantics: {
        _traversalSortNode: (
            this: void,
            _traversalSortNode: I_TraversalSortNode,
            props: {
                sortKey?: ISemanticsSortKey | undefined;
                node: ISemanticsNode;
                position: number;
            }
        ) => I_TraversalSortNode;
    };
};
export interface I_TraversalSortNode {
    node: ISemanticsNode;
    sortKey: ISemanticsSortKey | undefined;
    position: number;
    compareTo: (other: I_TraversalSortNode) => number;
}
export class _TraversalSortNode implements IComparable<I_TraversalSortNode> {
    public readonly node: ISemanticsNode = undefined as any;
    public readonly sortKey: ISemanticsSortKey | undefined = undefined as any;
    public readonly position: number = undefined as any;
    public constructor(props: {
        sortKey?: ISemanticsSortKey | undefined;
        node: ISemanticsNode;
        position: number;
    }) {
        flutter.semantics._traversalSortNode(this, props);
    }
    private readonly _dart_compareTo: (other: I_TraversalSortNode) => number =
        undefined as any;
    public compareTo(other: I_TraversalSortNode): number {
        return this._dart_compareTo(other);
    }
}
