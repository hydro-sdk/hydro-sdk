import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface SliverToBoxAdapterProps {
    key?: Key | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        sliverToBoxAdapter: (
            this: void,
            props: SliverToBoxAdapterProps
        ) => SliverToBoxAdapter;
    };
};

export class SliverToBoxAdapter
    extends StatelessWidget
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SliverToBoxAdapter);
    public props: SliverToBoxAdapterProps;
    public constructor(props: SliverToBoxAdapterProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.widgets.sliverToBoxAdapter(this.props);
    }
}
