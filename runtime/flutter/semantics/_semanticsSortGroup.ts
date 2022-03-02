import { IComparable } from "../../dart/core/comparable";
import { IList } from "../../dart/core/list";
import { TextDirection } from "../../dart/ui/textDirection";
import { ISemanticsNode } from "./semanticsNode";
declare const flutter: {
    semantics: {
        _semanticsSortGroup: (
            this: void,
            _semanticsSortGroup: I_SemanticsSortGroup,
            props: { startOffset: number; textDirection: TextDirection }
        ) => I_SemanticsSortGroup;
    };
};
export interface I_SemanticsSortGroup {
    startOffset: number;
    textDirection: TextDirection;
    nodes: IList<ISemanticsNode>;
    compareTo: (other: I_SemanticsSortGroup) => number;
    sortedWithinVerticalGroup: () => IList<ISemanticsNode>;
    sortedWithinKnot: () => IList<ISemanticsNode>;
    toString: () => string;
    getHashCode: () => number;
}
export class _SemanticsSortGroup implements IComparable<I_SemanticsSortGroup> {
    public readonly startOffset: number = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly nodes: IList<ISemanticsNode> = undefined as any;
    public constructor(props: {
        startOffset: number;
        textDirection: TextDirection;
    }) {
        flutter.semantics._semanticsSortGroup(this, props);
    }
    private readonly _dart_compareTo: (other: I_SemanticsSortGroup) => number =
        undefined as any;
    private readonly _dart_sortedWithinVerticalGroup: () => IList<ISemanticsNode> =
        undefined as any;
    private readonly _dart_sortedWithinKnot: () => IList<ISemanticsNode> =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public compareTo(other: I_SemanticsSortGroup): number {
        return this._dart_compareTo(other);
    }
    public sortedWithinVerticalGroup(): IList<ISemanticsNode> {
        return this._dart_sortedWithinVerticalGroup();
    }
    public sortedWithinKnot(): IList<ISemanticsNode> {
        return this._dart_sortedWithinKnot();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
