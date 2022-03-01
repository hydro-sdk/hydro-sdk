
import { IIterable } from "../../dart/core/iterable";
import { I_InterestingSemanticsFragment } from "./_interestingSemanticsFragment";
import { IList } from "../../dart/core/list";
export interface I_SemanticsFragment


{
dropsSemanticsOfPreviousSiblings: boolean;
addAll: (fragments: IIterable<I_InterestingSemanticsFragment>) => void;
getInterestingFragments: () => IList<I_InterestingSemanticsFragment>;
}