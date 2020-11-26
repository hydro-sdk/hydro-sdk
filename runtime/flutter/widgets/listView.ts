import { List } from "../../dart/collection/list";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { BuildContext } from "./../buildContext";
import { Key } from "./../foundation/key";
import { Widget } from "./../widget";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { Axis } from "../painting/axis";
import { EdgeInsets } from "../painting/edgeInsets";
import { ScrollPhysics } from "./scrollPhysics";
import { ScrollViewKeyboardDismissBehavior } from "./scrollViewKeyboardDismissBehavior";
import { StatelessWidget } from "./statelessWidget";

export interface ListviewRegularProps {
    key?: Key | undefined;
    scrollDirection?: Axis | undefined;
    reverse?: boolean | undefined;
    primary?: boolean | undefined;
    physics?: ScrollPhysics | undefined;
    shrinkWrap?: boolean | undefined;
    padding?: EdgeInsets | undefined;
    itemExtent?: number | undefined;
    itemCount?: number | undefined;
    addAutomaticKeepAlives?: boolean | undefined;
    addRepaintBoundaries?: boolean | undefined;
    addSemanticIndexes?: boolean | undefined;
    cacheExtent?: number | undefined;
    children?: List<Widget> | undefined;
    semanticChildCount?: number | undefined;
    dragStartBehavior?: DragStartBehavior | undefined;
    keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior | undefined;
}

export interface ListViewBuilderProps {
    key?: Key | undefined;
    scrollDirection?: Axis | undefined;
    reverse?: boolean | undefined;
    primary?: boolean | undefined;
    physics?: ScrollPhysics | undefined;
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
        listViewBuilder: (this: void, props: ListViewBuilderProps) => ListView;
        listViewRegular: (this: void, props: ListviewRegularProps) => ListView;
    };
};

type ListViewType = "regular" | "builder";
type ListViewProps = {} & ListviewRegularProps & ListViewBuilderProps;

export class ListView extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(ListView);
    private readonly listViewType: ListViewType;
    private readonly props: ListViewProps;
    private constructor(listViewType: ListViewType, props: ListViewProps) {
        super();

        this.listViewType = listViewType;
        this.props = props;
    }

    public build(): Widget {
        switch (this.listViewType) {
            case "builder":
                return flutter.widgets.listViewBuilder(this.props);
                break;

            case "regular":
                return flutter.widgets.listViewRegular(this.props);
                break;
        }
    }

    public static create(props: ListviewRegularProps): ListView {
        if (props.scrollDirection === undefined) {
            props.scrollDirection = Axis.vertical;
        }

        if (props.reverse === undefined) {
            props.reverse = false;
        }

        if (props.shrinkWrap === undefined) {
            props.shrinkWrap = false;
        }

        if (props.addAutomaticKeepAlives === undefined) {
            props.addAutomaticKeepAlives = true;
        }

        if (props.addRepaintBoundaries === undefined) {
            props.addRepaintBoundaries = true;
        }

        if (props.addSemanticIndexes === undefined) {
            props.addSemanticIndexes = true;
        }

        if (props.children === undefined) {
            props.children = List.fromArray([]);
        }

        if (props.dragStartBehavior === undefined) {
            props.dragStartBehavior = DragStartBehavior.start;
        }

        if (props.keyboardDismissBehavior === undefined) {
            props.keyboardDismissBehavior =
                ScrollViewKeyboardDismissBehavior.manual;
        }

        return new ListView("regular", props);
    }

    public static builder(props: ListViewBuilderProps): ListView {
        if (props.scrollDirection === undefined) {
            props.scrollDirection = Axis.vertical;
        }

        if (props.reverse === undefined) {
            props.reverse = false;
        }

        if (props.shrinkWrap === undefined) {
            props.shrinkWrap = false;
        }

        if (props.addAutomaticKeepAlives === undefined) {
            props.addAutomaticKeepAlives = true;
        }

        if (props.addRepaintBoundaries === undefined) {
            props.addRepaintBoundaries = true;
        }

        if (props.addSemanticIndexes === undefined) {
            props.addSemanticIndexes = true;
        }

        if (props.dragStartBehavior === undefined) {
            props.dragStartBehavior = DragStartBehavior.start;
        }

        return new ListView("builder", props);
    }
}
