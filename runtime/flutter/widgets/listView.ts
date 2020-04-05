import { Key } from "./../key";
import { BuildContext } from "./../buildContext";
import { Widget } from "./../widget";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { SliverChildBuilderDelegate } from "./../widgets/sliverChildBuilderDelegate";
import { Axis } from "../painting/axis";
import { EdgeInsets } from "../painting/edgeInsets";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { DartObject } from "../../dart/core/object";

interface ListViewProps {
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
        listView: (
            this: void,
            props: ListViewProps & {
                childrenDelegate: SliverChildBuilderDelegate
            }
        ) => ListView;
    }
}

export class ListView extends StatelessWidget implements Readonly<DartObject> {
    public readonly runtimeType = "ListView";
    public props: ListViewProps;
    private childrenDelegate: SliverChildBuilderDelegate;
    private constructor(childrenDelegate: SliverChildBuilderDelegate, props: ListViewProps) {
        super();

        this.childrenDelegate = childrenDelegate;
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.listView({
            childrenDelegate: this.childrenDelegate,
            ...this.props
        });
    }

    public static builder(
        props: Omit<ListViewProps, "itemBuilder"> & {
            itemBuilder: (context: BuildContext, index: number) => Widget;
        }
    ): ListView {
        const {
            key,
            scrollDirection = Axis.vertical,
            reverse = false,
            primary,
            shrinkWrap = false,
            padding,
            itemExtent,
            itemBuilder,
            itemCount,
            addAutomaticKeepAlives = true,
            addRepaintBoundaries = true,
            addSemanticIndexes = true,
            cacheExtent,
            semanticChildCount,
            dragStartBehavior = DragStartBehavior.start
        } = props;

        const childrenDelegate = new SliverChildBuilderDelegate(itemBuilder, {
            childCount: itemCount,
            addAutomaticKeepAlives,
            addRepaintBoundaries,
            addSemanticIndexes
        });

        return new ListView(childrenDelegate, {
            key,
            scrollDirection,
            reverse,
            primary,
            shrinkWrap,
            padding,
            itemExtent,
            itemBuilder,
            addAutomaticKeepAlives,
            addRepaintBoundaries,
            addSemanticIndexes,
            cacheExtent,
            semanticChildCount,
            dragStartBehavior
        });
    }
}