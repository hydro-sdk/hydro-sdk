import { Key } from "../foundation/key";
import { SliverChildBuilderDelegate } from "./sliverChildBuilderDelegate";
import { StatelessWidget } from "./statelessWidget";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";

export interface SliverListProps {
    key?: Key | undefined;
    delegate: SliverChildBuilderDelegate;
}

declare const flutter: {
    widgets: {
        sliverList: (this: void, props: SliverListProps) => SliverList;
    }
}

export class SliverList extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SliverList);
    public props: SliverListProps;
    public constructor(props: SliverListProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.widgets.sliverList(this.props);
    }
}
