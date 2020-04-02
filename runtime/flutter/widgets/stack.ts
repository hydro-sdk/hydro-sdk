import {DartObject} from "../../dart/core/object";
import {TextDirection} from "../../dart/ui/textDirection";
import {StackFit} from "../../flutter/rendering/stackFit";
import {Overflow} from "../../flutter/rendering/overflow";
import {Key} from "../key";

import {StatelessWidget} from "./statelessWidget";
import {Widget} from "./../widget";

interface StackProps {
    key?: Key | undefined;
    textDirection?: TextDirection | undefined;
    fit?: StackFit | undefined;
    overflow?: Overflow | undefined;
    children: Array<Widget>;
}

declare const flutter: {
    widgets: {
        stack: (this: void, props: StackProps) => Stack;
    };
};

export class Stack extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Stack";
    public props: StackProps;
    public constructor(props: StackProps) 
    {
        super();
        this.props = props;

        if (this.props.fit === undefined) 
        {
            this.props.fit = StackFit.loose;
        }

        if (this.props.overflow === undefined) 
        {
            this.props.overflow = Overflow.clip;
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.stack(this.props);
    }
}