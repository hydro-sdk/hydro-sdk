import { Key } from "./../foundation/key";
import { TextStyle } from "./../painting/textStyle";
import { Widget } from "./../widget";
import { StatelessWidget } from "./statelessWidget";

export interface TextProps {
    key?: Key | undefined;
    style?: TextStyle | undefined;
}

declare const flutter: {
    widgets: {
        text: (
            this: void,
            text: string,
            props?: TextProps | undefined
        ) => { tag: string };
    };
};

export class Text extends StatelessWidget {
    public text: string;
    public props: TextProps | undefined;
    public constructor(text: string, props?: TextProps) {
        super();
        this.text = text;
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.text(this.text, this.props);
    }
}
