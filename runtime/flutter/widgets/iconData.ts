import { Widget } from "../widget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

import { JITAllocatingRTManagedBox } from "./../../syntheticBox";

interface IconDataProps {
    fontFamily: string;
    matchTextDirection?: boolean | undefined;
    fontPackage?: string | undefined;
}

declare const flutter: {
    widgets: {
        iconData: (this: void, codePoint: number, props: IconDataProps) => { tag: string };
    };
};

export class IconData extends JITAllocatingRTManagedBox<IconDataProps, Widget> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(IconData);
    public codePoint: number;
    public props: IconDataProps;
    public constructor(codePoint: number, props: IconDataProps) {
        super();
        this.codePoint = codePoint;
        this.props = props;
    }

    public unwrap(): Widget {
        return flutter.widgets.iconData(this.codePoint, this.props);
    }
}