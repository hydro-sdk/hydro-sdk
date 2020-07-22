import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { TextSelection } from "./textSelection";
import { TextRange } from "../../dart/ui/textRange";

interface TextEditingValueProps {
    text?: string | undefined;
    selection?: TextSelection | undefined;
    composing?: TextRange | undefined;
}

declare const flutter: {
    services: {
        textEditingValue: (this: void, props: TextEditingValueProps) => TextEditingValue;
    }
}

export class TextEditingValue extends JITAllocatingRTManagedBox<TextEditingValueProps, TextEditingValue> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(TextEditingValue);
    public props: TextEditingValueProps;

    public constructor(props: TextEditingValueProps) {
        super();

        this.props = props;

        if (this.props.text === undefined) {
            this.props.text = "";
        }

        if (this.props.selection === undefined) {
            this.props.selection = TextSelection.collapsed({ offset: -1 });
        }

        if (this.props.composing === undefined) {
            this.props.composing = TextRange.empty;
        }
    }

    public unwrap() {
        return flutter.services.textEditingValue(this.props);
    }
}