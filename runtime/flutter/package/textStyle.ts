import {StatelessWidget} from "../widgets/statelessWidget";
import {JITAllocatingRTManagedBox} from "../../syntheticBox";

import {console} from "./../../ts/console";

export interface TextStyleProps {
    fontSize?: number | undefined;
}

declare const flutter: {
    package: {
        textStyle: (this: void, props: TextStyleProps) => TextStyle;
    }
};

export class TextStyle extends JITAllocatingRTManagedBox<TextStyleProps,TextStyle> implements Readonly<Object>
{
    public readonly runtimeType = "TextStyle";
    public props:TextStyleProps;
    public constructor(props:TextStyleProps)
    {
        super();
        this.props = props;
    }

    public unwrap()
    {
        return flutter.package.textStyle(this.props);
    }
}
