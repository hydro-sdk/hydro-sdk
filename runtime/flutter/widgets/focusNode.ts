export interface FocusNodeProps {
    debugLabel?: string | undefined;
    //@todo FocusNodeProps#onKey : OnKeyCallback
    skipTraversal?: boolean | undefined;
    canRequestFocus?: boolean | undefined;
    descendantsAreFocusable?: boolean | undefined;
}

declare const flutter: {
    widgets: {
        focusNode: (this: void, focusNode: FocusNode) => FocusNode;
    }
}

export class FocusNode {
    public debugLabel: string | undefined;
    private skipTraversal = false;
    private canRequestFocus = true;
    private descendantsAreFocusable = true;

    //@todo FocusNode#getSkipTraversal : boolean
    //@todo FocusNode#setSkipTraversal : boolean
    //@todo FocusNode#getCanRequestFocus : boolean
    //@todo FocusNode#setCanRequestFocus : boolean
    //@todo FocusNode#getDescendantsAreFocusable : boolean
    //@todo FocusNode#setDescendantsAreFocusable : boolean
    //@todo FocusNode#getContext : boolean
    //@todo FocusNode#setContext : boolean
    //@todo FocusNode#getOnKey : FocusOnKeyCallback
    //@todo FocusNode#setOnKey : FocusOnKeyCallback
    //@todo FocusNode#getParent : FocusNode
    //@todo FocusNode#getChildren : List<FocusNode>
    //@todo FocusNode#getTraversalChildren : List<FocusNode>
    //@todo FocusNode#getDescendants : List<FocusNode>
    //@todo FocusNode#getTraversalDescendants : List<FocusNode>
    //@todo FocusNode#getAncestors : List<FocusNode>
    //@todo FocusNode#hasFocus : boolean
    //@todo FocusNode#hasPrimaryFocus : boolean
    //@todo FocusNode#highlightMode : FocusHighlightMode
    //@todo FocusNode#nearestScope : FocusScopeNode
    //@todo FocusNode#enclosingScope : FocusScopeNode
    //@todo FocusNode#size : Size
    //@todo FocusNode#offset : Offset
    //@todo FocusNode#rect : Rect

    public dispose: () => void = undefined as any;

    public constructor(props?: FocusNodeProps) {
        if (props !== undefined) {
            this.debugLabel = props.debugLabel ?? "";
            this.skipTraversal = props.skipTraversal ?? false;
            this.canRequestFocus = props.canRequestFocus ?? true;
            this.descendantsAreFocusable = props.descendantsAreFocusable ?? true;
        }

        flutter.widgets.focusNode(this);
    }
}
