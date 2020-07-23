import {Widget} from "../widget";
import {EdgeInsets} from "../painting/edgeInsets";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";
import {Alignment} from "../painting/alignment";

import {StatelessWidget} from "./statelessWidget";
import {Color} from "./../../dart/ui/color";
import {BoxDecoration} from "./../painting/boxDecoration";
import {Key} from "./../foundation/key";

interface ContainerProps {
    key?: Key | undefined;
    alignment?: Alignment|undefined;
    color?: Color | undefined;
    child?: Widget;
    decoration?: BoxDecoration | undefined;
    margin?: EdgeInsets | undefined;
    width?: number | undefined;
    height?: number | undefined;
    padding?: EdgeInsets | undefined;
}

declare const flutter: {
    widgets: {
        container: (this: void, props: ContainerProps) => Container;
    };
};

export class Container extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(Container);
    public props: ContainerProps;
    public constructor(props: ContainerProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.widgets.container(this.props);
    }
}