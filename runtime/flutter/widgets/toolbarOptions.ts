import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "../widget";

export interface ToolbarOptionsProps {
    copy?: boolean | undefined;
    cut?: boolean | undefined;
    paste?: boolean | undefined;
    selectAll?: boolean | undefined;
}

declare const flutter: {
    widgets: {
        toolbarOptions: (
            this: void,
            props: ToolbarOptionsProps
        ) => ToolbarOptions;
    };
};

export class ToolbarOptions
    extends JITAllocatingRTManagedBox<ToolbarOptionsProps, ToolbarOptions>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(ToolbarOptions);
    public props: ToolbarOptionsProps;
    public constructor(props: ToolbarOptionsProps) {
        super();
        this.props = props;

        if (this.props.copy === undefined) {
            this.props.copy = false;
        }

        if (this.props.cut === undefined) {
            this.props.cut = false;
        }

        if (this.props.paste === undefined) {
            this.props.paste = false;
        }

        if (this.props.selectAll === undefined) {
            this.props.selectAll = false;
        }
    }

    public unwrap() {
        return flutter.widgets.toolbarOptions(this.props);
    }
}
