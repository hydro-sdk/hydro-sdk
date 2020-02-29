import {Key} from "../key";
import {Widget} from "../widget";
import {EdgeInsets} from "../painting/edgeInsets";

import {StatelessWidget} from "./statelessWidget";

interface PaddingProps {
    key?: Key | undefined;
    padding: EdgeInsets;
    child?: Widget | undefined;
}

declare const flutter: {
    widgets: {
        padding: (this: void, props: PaddingProps) => { tag: string };
    };
};

export class Padding extends StatelessWidget 
{
    public props: PaddingProps;
    public constructor(props: PaddingProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.padding(this.props);
    }
}