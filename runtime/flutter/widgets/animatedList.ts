import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { BuildContext } from "../buildContext";
import { Widget } from "../widget";
import { GlobalKey } from "./globalKey";
import { StatelessWidget } from "./statelessWidget";

export interface AnimatedListProps {
    key?: Key | GlobalKey<any> | undefined;
    initialItemCount: number;
    itemBuilder: (context: BuildContext, num: number, anim: any) => Widget;
}

declare const flutter: {
    widgets: {
        animatedList: (this: void, props: AnimatedListProps) => { tag: string };
    };
};

export class AnimatedList extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(AnimatedList);
    public props: AnimatedListProps;
    public constructor(props: AnimatedListProps) {
        super();
        this.props = props;
    }
    public build(): Widget {
        return flutter.widgets.animatedList(this.props);
    }
}
