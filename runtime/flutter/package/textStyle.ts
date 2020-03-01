import {JITAllocatingRTManagedBox} from "../../syntheticBox";
import {DartObject} from "../../dart/core";

export interface TextStyleProps {
    fontSize?: number | undefined;
}

declare const flutter: {
    package: {
        textStyle: (this: void, props: TextStyleProps) => TextStyle;
    };
};

export class TextStyle extends JITAllocatingRTManagedBox<TextStyleProps, TextStyle> implements Readonly<DartObject>
{
    public readonly runtimeType = "TextStyle";
    public props: TextStyleProps;
    public constructor(props: TextStyleProps) 
    {
        super();
        this.props = props;
    }

    public copyWith(): any
    {
        
    }

    public unwrap() 
    {
        return flutter.package.textStyle(this.props);
    }
}
