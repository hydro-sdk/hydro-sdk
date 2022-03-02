import { IFocusNode } from "./focusNode";
import { TraversalDirection } from "./traversalDirection";
declare const flutter: {
    widgets: {
        _directionalPolicyDataEntry: (
            this: void,
            _directionalPolicyDataEntry: I_DirectionalPolicyDataEntry,
            props: { direction: TraversalDirection; node: IFocusNode }
        ) => I_DirectionalPolicyDataEntry;
    };
};
export interface I_DirectionalPolicyDataEntry {
    direction: TraversalDirection;
    node: IFocusNode;
}
export class _DirectionalPolicyDataEntry {
    public readonly direction: TraversalDirection = undefined as any;
    public readonly node: IFocusNode = undefined as any;
    public constructor(props: {
        direction: TraversalDirection;
        node: IFocusNode;
    }) {
        flutter.widgets._directionalPolicyDataEntry(this, props);
    }
}
