export interface I_ParentInkResponseState {
    markChildInkResponsePressed: (
        childState: I_ParentInkResponseState,
        value: boolean
    ) => void;
}
