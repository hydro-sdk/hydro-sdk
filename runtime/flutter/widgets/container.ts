import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";
import {EdgeInsets} from "../painting/edgeInsets";

import {StatelessWidget} from "./statelessWidget";
import {Color} from "./../../dart/ui/color";
import {BoxDecoration} from "./../painting/boxDecoration";
import {Key} from "./../foundation/key";

interface ContainerProps {
    key?: Key | undefined;
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

export class Container extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Container";
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