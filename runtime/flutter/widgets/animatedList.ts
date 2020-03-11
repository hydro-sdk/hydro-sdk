import {Key} from "../key";
import {BuildContext} from "../buildContext";
import {Widget} from "../widget";

import {StatelessWidget} from "./statelessWidget";
import {GlobalKey} from "./globalKey";
import { DartObject } from "../../dart/core";

interface AnimatedListProps {
    key?: Key | GlobalKey<any> | undefined;
    initialItemCount: number;
    itemBuilder: (context: BuildContext, num: number, anim: any) => Widget;
}

declare const flutter: {
    widgets: {
        animatedList: (this: void, props: AnimatedListProps) => { tag: string };
    };
};

export class AnimatedList extends StatelessWidget implements DartObject
{
    public readonly runtimeType = "AnimatedList";
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
