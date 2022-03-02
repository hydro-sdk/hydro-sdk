import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { I_InterestingSemanticsFragment } from "./_interestingSemanticsFragment";
export interface I_SemanticsFragment {
    dropsSemanticsOfPreviousSiblings: boolean;
    addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void;
    getInterestingFragments: () => IList<I_InterestingSemanticsFragment>;
}
