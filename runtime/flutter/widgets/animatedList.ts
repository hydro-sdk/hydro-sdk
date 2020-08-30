import {BuildContext} from "../buildContext";
import {Widget} from "../widget";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {Key} from "./../foundation/key";
import {StatelessWidget} from "./statelessWidget";
import {GlobalKey} from "./globalKey";

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

export class AnimatedList extends StatelessWidget implements RuntimeBaseClass
{
    public readonly internalRuntimeType = new Type(AnimatedList);
    public props: AnimatedListProps;
    public constructor(props: AnimatedListProps) 
    {
        super();
        this.props = props;
    }
    public build(): Widget 
    {
        return flutter.widgets.animatedList(this.props);
    }
}
