import {Widget} from "../widget";
import {EdgeInsets} from "../painting/edgeInsets";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {Key} from "./../foundation/key";
import {StatelessWidget} from "./statelessWidget";

interface PaddingProps {
    key?: Key | undefined;
    padding: EdgeInsets;
    child?: Widget | undefined;
}

declare const flutter: {
    widgets: {
        padding: (this: void, props: PaddingProps) => Padding;
    };
};

export class Padding extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(Padding);
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