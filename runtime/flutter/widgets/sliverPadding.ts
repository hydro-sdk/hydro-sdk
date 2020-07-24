import {Type} from "../../dart/core/type";
import {Widget} from "../widget";
import {RuntimeBaseClass} from "../../runtimeBaseClass";

import {Key} from "./../foundation/key";
import {EdgeInsets} from "./../painting/edgeInsets";
import {StatelessWidget} from "./statelessWidget";

interface SliverPaddingProps {
    key?: Key | undefined;
    sliver: Widget;
    padding: EdgeInsets;

}

declare const flutter: {
    widgets: {
        sliverPadding: (this: void, props: SliverPaddingProps) => SliverPadding;
    };
};

export class SliverPadding extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(SliverPadding);
    public props: SliverPaddingProps;
    public constructor(props: SliverPaddingProps) 
    {
        super();
        this.props = props;
    }

    public build() 
    {
        return flutter.widgets.sliverPadding(this.props);
    }
}