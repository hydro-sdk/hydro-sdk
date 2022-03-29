import { IFocusNode } from "./focusNode";
import { IFocusScopeNode } from "./focusScopeNode";
import { TraversalDirection } from "./traversalDirection";
export interface IDirectionalFocusTraversalPolicyMixin {
    invalidateScopeData: (node: IFocusScopeNode) => void;
    changedScope: (props?: {
        node?: IFocusNode | undefined;
        oldScope?: IFocusScopeNode | undefined;
    }) => void;
    findFirstFocusInDirection: (
        currentNode: IFocusNode,
        direction: TraversalDirection
    ) => IFocusNode | undefined;
    inDirection: (
        currentNode: IFocusNode,
        direction: TraversalDirection
    ) => boolean;
}
