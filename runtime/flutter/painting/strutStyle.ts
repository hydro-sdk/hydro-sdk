import { JITAllocatingRTManagedBox } from "./../../syntheticBox";
import { List } from "../../dart/collection/list";
import { Type } from "../../dart/core/type";
import { FontStyle } from "../../dart/ui/fontStyle";
import { FontWeight } from "../../dart/ui/fontWeight";
import { RuntimeBaseClass } from "../../runtimeBaseClass";

export interface StrutStyleProps {
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

export class StrutStyle
    extends JITAllocatingRTManagedBox<StrutStyleProps, StrutStyle>
    implements RuntimeBaseClass {
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
