import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {EdgeInsets} from "./../painting/edgeInsets";
import {Widget} from "./../widget";
import {StatelessWidget} from "./statelessWidget";

export interface SliverSafeAreaProps {
    left?: boolean | undefined;
    top?: boolean | undefined;
    right?: boolean | undefined;
    bottom?: boolean | undefined;
    minimum?: EdgeInsets | undefined;
    sliver: Widget;
}

declare const flutter: {
    widgets: {
        sliverSafeArea: (this: void, props: SliverSafeAreaProps) => SliverSafeArea;
    };
};

export class SliverSafeArea extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(SliverSafeArea);
    public props: SliverSafeAreaProps;
    public constructor(props: SliverSafeAreaProps) 
    {
        super();
        this.props = props;

        if (this.props.left === undefined) 
        {
            this.props.left = true;
        }
        if (this.props.top === undefined) 
        {
            this.props.top = true;
        }
        if (this.props.right === undefined) 
        {
            this.props.right = true;
        }
        if (this.props.bottom === undefined) 
        {
            this.props.bottom = true;
        }
        if (this.props.minimum === undefined) 
        {
            this.props.minimum = EdgeInsets.zero();
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.sliverSafeArea(this.props);
    }
}
