import {Widget} from "../widget";
import {Key} from "../key";

import {StatelessWidget} from "./statelessWidget";

interface SizedBoxProps {
    key?: Key | undefined;
    width?: number | undefined;
    height?: number | undefined;
    child?: Widget | undefined;
}

declare const flutter: {
    widgets: {
        sizedBox: (this: void, props: SizedBoxProps) => { tag: string };
    }
};

export class SizedBox extends StatelessWidget 
{
    public props: SizedBoxProps;
    public constructor(props: SizedBoxProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.sizedBox(this.props);
    }
}