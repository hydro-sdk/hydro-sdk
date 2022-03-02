import { IComparable } from "../../dart/core/comparable";
import { ISemanticsNode } from "./semanticsNode";
declare const flutter: {
    semantics: {
        _boxEdge: (
            this: void,
            _boxEdge: I_BoxEdge,
            props: {
                isLeadingEdge: boolean;
                node: ISemanticsNode;
                offset: number;
            }
        ) => I_BoxEdge;
    };
};
export interface I_BoxEdge {
    isLeadingEdge: boolean;
    offset: number;
    node: ISemanticsNode;
    compareTo: (other: I_BoxEdge) => number;
}
export class _BoxEdge implements IComparable<I_BoxEdge> {
    public readonly isLeadingEdge: boolean = undefined as any;
    public readonly offset: number = undefined as any;
    public readonly node: ISemanticsNode = undefined as any;
    public constructor(props: {
        isLeadingEdge: boolean;
        node: ISemanticsNode;
        offset: number;
    }) {
        flutter.semantics._boxEdge(this, props);
    }
    private readonly _dart_compareTo: (other: I_BoxEdge) => number =
        undefined as any;
    public compareTo(other: I_BoxEdge): number {
        return this._dart_compareTo(other);
    }
}
