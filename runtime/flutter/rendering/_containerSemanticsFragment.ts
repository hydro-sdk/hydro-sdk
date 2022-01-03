import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { I_InterestingSemanticsFragment } from "./_interestingSemanticsFragment";
import { I_SemanticsFragment } from "./_semanticsFragment";
declare const flutter: {
    rendering: {
        _containerSemanticsFragment: (
            this: void,
            _containerSemanticsFragment: I_ContainerSemanticsFragment,
            props: { dropsSemanticsOfPreviousSiblings: boolean }
        ) => I_ContainerSemanticsFragment;
    };
};
export interface I_ContainerSemanticsFragment {
    interestingFragments: IList<I_InterestingSemanticsFragment>;
    dropsSemanticsOfPreviousSiblings: boolean;
    addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void;
    getInterestingFragments: () => IList<I_InterestingSemanticsFragment>;
    getAbortsWalk: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _ContainerSemanticsFragment implements I_SemanticsFragment {
    public readonly interestingFragments: IList<I_InterestingSemanticsFragment> =
        undefined as any;
    public readonly dropsSemanticsOfPreviousSiblings: boolean =
        undefined as any;
    public constructor(props: { dropsSemanticsOfPreviousSiblings: boolean }) {
        flutter.rendering._containerSemanticsFragment(this, props);
    }
    private readonly _dart_addAll: (
        fragments: IIterable<I_InterestingSemanticsFragment>
    ) => void = undefined as any;
    private readonly _dart_getInterestingFragments: () => IList<I_InterestingSemanticsFragment> =
        undefined as any;
    private readonly _dart_getAbortsWalk: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public addAll(fragments: IIterable<I_InterestingSemanticsFragment>): void {
        return this._dart_addAll(fragments);
    }
    public getInterestingFragments(): IList<I_InterestingSemanticsFragment> {
        return this._dart_getInterestingFragments();
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
