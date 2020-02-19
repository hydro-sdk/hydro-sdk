import {console} from "./../../ts/console";

export interface TextStyleProps {
    fontSize?: number | undefined;
}

declare const flutter: {
    package: {
        textStyle: (this: void, props: TextStyleProps) => TextStyleProps;
    }
};

export function TextStyle(props: TextStyleProps) 
{
    return flutter.package.textStyle(props);
}