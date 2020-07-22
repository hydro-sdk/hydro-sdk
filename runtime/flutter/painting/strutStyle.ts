import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { FontWeight } from "../../dart/ui/fontWeight";
import { FontStyle } from "../../dart/ui/fontStyle";
import { Type } from "../../dart/core/type";
import { List } from "../../dart/collection/list";

import { JITAllocatingRTManagedBox } from "./../../syntheticBox";

interface StrutStyleProps {
    fontFamily?: string | undefined;
    fontFamilyFallback?: List<string> | undefined;
    fontSize?: number | undefined;
    leading?: number | undefined;
    fontWeight?: FontWeight | undefined;
    fontStyle?: FontStyle | undefined;
    forceStrutHeight?: boolean | undefined;
    debugLabel?: string | undefined;
    package?: string | undefined;
}

declare const flutter: {
    painting: {
        strutStyle: (this: void, props: StrutStyleProps) => StrutStyle;
    };
};

export class StrutStyle extends JITAllocatingRTManagedBox<StrutStyleProps, StrutStyle> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(StrutStyle);
    public props: StrutStyleProps;
    public constructor(props: StrutStyleProps) {
        super();
        this.props = props;
    }

    public unwrap() {
        return flutter.painting.strutStyle(this.props);
    }
}