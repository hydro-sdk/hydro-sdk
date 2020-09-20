import { BuildContext } from "../buildContext";
import { Widget } from "../widget";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

export interface SliverChildBuilderDelegateProps {
    //@todo SliverChildBuilderDelegateProps#findChildInexCallback : (key : Key) => number
    childCount?: number | undefined;
    addAutomaticKeepAlives?: boolean | undefined;
    addRepaintBoundaries?: boolean | undefined;
    addSemanticIndexes?: boolean | undefined;
    //@todo SliverChildBuilderDelegateProps#semanticIndexCallback : (widget : Widget,i : number) => number
    //@todo SliverChildBuilderDelegateProps#semanticIndexOffset : number
}

declare const flutter: {
    widgets: {
        sliverChildBuilderDelegate: (
            this: void,
            builder: (this: void, context: BuildContext, index: number) => Widget | undefined,
            props: SliverChildBuilderDelegateProps | undefined
        ) => SliverChildBuilderDelegate;
    };
};

export class SliverChildBuilderDelegate extends JITAllocatingRTManagedBox<SliverChildBuilderDelegateProps | undefined, SliverChildBuilderDelegate> implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SliverChildBuilderDelegate);
    public builder: (context: BuildContext, index: number) => Widget | undefined;
    public props: SliverChildBuilderDelegateProps | undefined;
    public constructor(builder: (this: void, context: BuildContext, index: number) => Widget | undefined, props?: SliverChildBuilderDelegateProps | undefined) {
        super();
        this.builder = builder;
        this.props = props;

        if (this.props === undefined) {
            this.props = {};
        }

        if (this.props.addAutomaticKeepAlives === undefined) {
            this.props.addAutomaticKeepAlives = true;
        }

        if (this.props.addRepaintBoundaries === undefined) {
            this.props.addRepaintBoundaries = true;
        }

        if (this.props.addSemanticIndexes === undefined) {
            this.props.addSemanticIndexes = true;
        }
    }

    public unwrap(): SliverChildBuilderDelegate {
        return flutter.widgets.sliverChildBuilderDelegate(this.builder, this.props);
    }
}