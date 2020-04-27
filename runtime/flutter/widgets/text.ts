import {StatelessWidget} from "./statelessWidget";
import {Widget} from "./../widget";
import {TextStyle} from "./../painting/textStyle";
import {Key} from "./../foundation/key";

interface TextProps {
    key?: Key | undefined;
    style?: TextStyle | undefined;
}

declare const flutter: {
    widgets: {
        text: (this: void, text: string, props?: TextProps | undefined) => { tag: string };
    };
};

export class Text extends StatelessWidget 
{
    public text: string;
    public props: TextProps | undefined;
    public constructor(text: string, props?: TextProps) 
    {
        super();
        this.text = text;
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.text(this.text, this.props);
    }
}
