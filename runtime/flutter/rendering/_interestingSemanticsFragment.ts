import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IRect } from "../../dart/ui/rect";
import { ISemanticsConfiguration } from "../semantics/semanticsConfiguration";
import { ISemanticsNode } from "../semantics/semanticsNode";
import { ISemanticsTag } from "../semantics/semanticsTag";
import { I_SemanticsFragment } from "./_semanticsFragment";
import { IRenderObject } from "./renderObject";
declare const flutter: {
    rendering: {
        _interestingSemanticsFragment: (
            this: void,
            _interestingSemanticsFragment: I_InterestingSemanticsFragment,
            props: {
                dropsSemanticsOfPreviousSiblings: boolean;
                owner: IRenderObject;
            }
        ) => I_InterestingSemanticsFragment;
    };
};
export interface I_InterestingSemanticsFragment {
    dropsSemanticsOfPreviousSiblings: boolean;
    getOwner: () => IRenderObject;
    compileChildren: (props: {
        elevationAdjustment: number;
        parentPaintClipRect?: IRect | undefined;
        parentSemanticsClipRect?: IRect | undefined;
        result: IList<ISemanticsNode>;
    }) => void;
    getConfig: () => ISemanticsConfiguration | undefined;
    markAsExplicit: () => void;
    addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void;
    getHasConfigForParent: () => boolean;
    getInterestingFragments: () => IList<I_InterestingSemanticsFragment>;
    addTags: (tags?: IIterable<ISemanticsTag> | undefined) => void;
    addAncestor: (ancestor: IRenderObject) => void;
    getAbortsWalk: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _InterestingSemanticsFragment implements I_SemanticsFragment {
    public readonly dropsSemanticsOfPreviousSiblings: boolean =
        undefined as any;
    public constructor(props: {
        dropsSemanticsOfPreviousSiblings: boolean;
        owner: IRenderObject;
    }) {
        flutter.rendering._interestingSemanticsFragment(this, props);
    }
    private readonly _dart_getOwner: () => IRenderObject = undefined as any;
    private readonly _dart_compileChildren: (props: {
        elevationAdjustment: number;
        parentPaintClipRect?: IRect | undefined;
        parentSemanticsClipRect?: IRect | undefined;
        result: IList<ISemanticsNode>;
    }) => void = undefined as any;
    private readonly _dart_getConfig: () =>
        | ISemanticsConfiguration
        | undefined = undefined as any;
    private readonly _dart_markAsExplicit: () => void = undefined as any;
    private readonly _dart_addAll: (
        fragments: IIterable<I_InterestingSemanticsFragment>
    ) => void = undefined as any;
    private readonly _dart_getHasConfigForParent: () => boolean =
        undefined as any;
    private readonly _dart_getInterestingFragments: () => IList<I_InterestingSemanticsFragment> =
        undefined as any;
    private readonly _dart_addTags: (
        tags?: IIterable<ISemanticsTag> | undefined
    ) => void = undefined as any;
    private readonly _dart_addAncestor: (ancestor: IRenderObject) => void =
        undefined as any;
    private readonly _dart_getAbortsWalk: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getOwner(): IRenderObject {
        return this._dart_getOwner();
    }
    public compileChildren(props: {
        elevationAdjustment: number;
        parentPaintClipRect?: IRect | undefined;
        parentSemanticsClipRect?: IRect | undefined;
        result: IList<ISemanticsNode>;
    }): void {
        return this._dart_compileChildren(props);
    }
    public getConfig(): ISemanticsConfiguration | undefined {
        return this._dart_getConfig();
    }
    public markAsExplicit(): void {
        return this._dart_markAsExplicit();
    }
    public addAll(fragments: IIterable<I_InterestingSemanticsFragment>): void {
        return this._dart_addAll(fragments);
    }
    public getHasConfigForParent(): boolean {
        return this._dart_getHasConfigForParent();
    }
    public getInterestingFragments(): IList<I_InterestingSemanticsFragment> {
        return this._dart_getInterestingFragments();
    }
    public addTags(tags?: IIterable<ISemanticsTag> | undefined): void {
        return this._dart_addTags(tags);
    }
    public addAncestor(ancestor: IRenderObject): void {
        return this._dart_addAncestor(ancestor);
    }
    public getAbortsWalk(): boolean {
        return this._dart_getAbortsWalk();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
