import {Widget} from "../widget";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {StatelessWidget} from "./statelessWidget";
import {Key} from "./../foundation/key";

export interface SpacerProps {
    key?: Key | undefined;
    flex?: number | undefined;
}

declare const flutter: {
    widgets: {
        spacer: (this: void, props: SpacerProps) => Spacer;
    };
};

export class Spacer extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(Spacer);
    public props: SpacerProps;
    public constructor(props: SpacerProps) 
    {
        super();
        this.props = props;

        if (this.props.flex === undefined) 
        {
            this.props.flex = 1;
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.spacer(this.props);
    }
}