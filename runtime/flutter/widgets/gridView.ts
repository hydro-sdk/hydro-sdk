import { Widget } from "../widget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import {List} from "../../dart/collection/list";

import { StatelessWidget } from "./statelessWidget";
import { Key } from "./../foundation/key";
import { Axis } from "./../painting/axis";
import { EdgeInsets } from "./../painting/edgeInsets";
import { DragStartBehavior } from "./../gestures/dragStartBehavior";

interface GridViewCountProps {
    key?: Key | undefined;
    scrollDirection?: Axis | undefined;
    reverse?: boolean | undefined;
    primary?: boolean | undefined;
    shrinkWrap?: boolean | undefined;
    padding?: EdgeInsets | undefined
    crossAxisCount: number;
    mainAxisSpacing?: number | undefined;
    crossAxisSpacing?: number | undefined;
    childAspectRatio?: number | undefined;
    addAutomaticKeepAlives?: boolean | undefined;
    addRepaintBoundaries?: boolean | undefined;
    addSemanticIndexes?: boolean | undefined;
    cacheExtent?: number | undefined;
    children: List<Widget>;
    dragStartBehavior?: DragStartBehavior | undefined;
}

type GridViewType = "count";
type GridViewProps = {} & GridViewCountProps;

declare const flutter: {
    widgets: {
        gridViewCount: (this: void, props: GridViewCountProps) => GridView;
    }
}

export class GridView extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(GridView);
    public props: GridViewProps;
    public gridViewType: GridViewType;
    private constructor(gridViewType: GridViewType, props: GridViewProps) {
        super();

        this.gridViewType = gridViewType;
        this.props = props;
    }

    public static count(props: GridViewProps) {

        if (!props.scrollDirection) {
            props.scrollDirection = Axis.vertical;
        }

        if (!props.reverse) {
            props.reverse = false;
        }

        if (!props.mainAxisSpacing) {
            props.mainAxisSpacing = 0.0;
        }

        if (!props.crossAxisSpacing) {
            props.crossAxisSpacing = 0.0;
        }

        if (!props.childAspectRatio) {
            props.childAspectRatio = 1.0;
        }

        if (props.addAutomaticKeepAlives == undefined) {
            props.addAutomaticKeepAlives = true;
        }

        if (props.addRepaintBoundaries == undefined) {
            props.addRepaintBoundaries = true;
        }

        if (props.addSemanticIndexes == undefined) {
            props.addSemanticIndexes = true;
        }

        if (!props.dragStartBehavior) {
            props.dragStartBehavior = DragStartBehavior.start;
        }

        return new GridView("count", props);
    }

    public build() {
        switch (this.gridViewType) {
            case "count":
                return flutter.widgets.gridViewCount(this.props);
                break;
        }
    }
}