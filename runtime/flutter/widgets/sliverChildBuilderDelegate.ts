import {BuildContext} from "../buildContext";
import {Widget} from "../widget";
import {JITAllocatingRTManagedBox} from "../../syntheticBox";
import {DartObject} from "../../dart/core/object";

interface SliverChildBuilderDelegateProps {
    childCount?: number | undefined;
    addAutomaticKeepAlives?: boolean | undefined;
    addRepaintBoundaries?: boolean | undefined;
    addSemanticIndexes?: boolean | undefined;
}

declare const flutter: {
    widgets: {
        sliverChildBuilderDelegate: (
            this: void,
            builder: (context: BuildContext, index: number) => Widget,
            props: SliverChildBuilderDelegateProps
        ) => SliverChildBuilderDelegate;
    };
};

export class SliverChildBuilderDelegate extends JITAllocatingRTManagedBox<SliverChildBuilderDelegateProps, SliverChildBuilderDelegate> implements Readonly<DartObject>
{
    public readonly runtimeType = "SliverChildBuilderDelegate";
    public builder: (context: BuildContext, index: number) => Widget;
    public props: SliverChildBuilderDelegateProps;
    public constructor(builder: (context: BuildContext, index: number) => Widget, props: SliverChildBuilderDelegateProps) 
    {
        super();
        this.builder = builder;
        this.props = props;

        if (this.props.addAutomaticKeepAlives === undefined) 
        {
            this.props.addAutomaticKeepAlives = true;
        }

        if (this.props.addRepaintBoundaries === undefined) 
        {
            this.props.addRepaintBoundaries = true;
        }

        if (this.props.addSemanticIndexes === undefined) 
        {
            this.props.addSemanticIndexes = true;
        }
    }

    public unwrap(): SliverChildBuilderDelegate 
    {
        return flutter.widgets.sliverChildBuilderDelegate(this.builder, this.props);
    }
}