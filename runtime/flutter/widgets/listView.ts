import {Axis} from "../painting/axis";
import {EdgeInsets} from "../painting/edgeInsets";
import {DragStartBehavior} from "../gestures/dragStartBehavior";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {Key} from "./../foundation/key";
import {BuildContext} from "./../buildContext";
import {Widget} from "./../widget";
import {StatelessWidget} from "./../widgets/statelessWidget";

interface ListViewBuilderProps {
    key?: Key | undefined;
    scrollDirection?: Axis | undefined;
    reverse?: boolean | undefined;
    primary?: boolean | undefined;
    shrinkWrap?: boolean | undefined;
    padding?: EdgeInsets | undefined;
    itemExtent?: number | undefined;
    itemBuilder?: (context: BuildContext, index: number) => Widget;
    itemCount?: number | undefined;
    addAutomaticKeepAlives?: boolean | undefined;
    addRepaintBoundaries?: boolean | undefined;
    addSemanticIndexes?: boolean | undefined;
    cacheExtent?: number | undefined;
    semanticChildCount?: number | undefined;
    dragStartBehavior?: DragStartBehavior | undefined;
}

declare const flutter: {
    widgets: {
        listViewBuilder: (
            this: void,
            props: ListViewBuilderProps
        ) => ListView;
    };
};

type ListViewType = "builder";
type ListViewProps = {} & ListViewBuilderProps;

export class ListView extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(ListView);
    private readonly listViewType: ListViewType;
    private readonly props: ListViewProps
    private constructor(listViewType: ListViewType, props: ListViewProps) 
    {
        super();

        this.listViewType = listViewType;
        this.props = props;
    }

    public build(): Widget 
    {
        switch (this.listViewType) 
        {
        case "builder":
            return flutter.widgets.listViewBuilder(this.props);
            break;
        }
    }

    public static builder(props: ListViewBuilderProps): ListView 
    {

        if (props.scrollDirection === undefined) 
        {
            props.scrollDirection = Axis.vertical;
        }

        if (props.reverse === undefined) 
        {
            props.reverse = false;
        }

        if (props.shrinkWrap === undefined) 
        {
            props.shrinkWrap = false;
        }

        if (props.addAutomaticKeepAlives === undefined) 
        {
            props.addAutomaticKeepAlives = true;
        }

        if (props.addRepaintBoundaries === undefined) 
        {
            props.addRepaintBoundaries = true;
        }

        if (props.addSemanticIndexes === undefined) 
        {
            props.addSemanticIndexes = true;
        }

        if (props.dragStartBehavior === undefined) 
        {
            props.dragStartBehavior = DragStartBehavior.start;
        }

        return new ListView("builder", props);
    }
}