import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { I_InterestingSemanticsFragment } from "./_interestingSemanticsFragment";
declare const flutter: {
    rendering: {
        _semanticsFragment: (
            this: void,
            _semanticsFragment: I_SemanticsFragment,
            props: { dropsSemanticsOfPreviousSiblings: boolean }
        ) => I_SemanticsFragment;
    };
};
export interface I_SemanticsFragment {
    dropsSemanticsOfPreviousSiblings: boolean;
    addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void;
    getInterestingFragments: () => IList<I_InterestingSemanticsFragment>;
    getAbortsWalk: () => boolean;
}
export class _SemanticsFragment {
    public readonly dropsSemanticsOfPreviousSiblings: boolean =
        undefined as any;
    public constructor(props: { dropsSemanticsOfPreviousSiblings: boolean }) {
        flutter.rendering._semanticsFragment(this, props);
    }
    private readonly _dart_addAll: (
        fragments: IIterable<I_InterestingSemanticsFragment>
    ) => void = undefined as any;
    private readonly _dart_getInterestingFragments: () => IList<I_InterestingSemanticsFragment> =
        undefined as any;
    private readonly _dart_getAbortsWalk: () => boolean = undefined as any;
    public addAll(fragments: IIterable<I_InterestingSemanticsFragment>): void {
        return this._dart_addAll(fragments);
    }
    public getInterestingFragments(): IList<I_InterestingSemanticsFragment> {
        return this._dart_getInterestingFragments();
    }
    public getAbortsWalk(): boolean {
        return this._dart_getAbortsWalk();
    }
}
