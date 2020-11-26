import { Type } from "../../dart/core/type";
import { TextDirection } from "../../dart/ui/textDirection";
import { Overflow } from "../../flutter/rendering/overflow";
import { StackFit } from "../../flutter/rendering/stackFit";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "./../widget";
import { StatelessWidget } from "./statelessWidget";

export interface StackProps {
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

export class Stack extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Stack);
    public props: StackProps;
    public constructor(props: StackProps) {
        super();
        this.props = props;

        if (this.props.fit === undefined) {
            this.props.fit = StackFit.loose;
        }

        if (this.props.overflow === undefined) {
            this.props.overflow = Overflow.clip;
        }
    }

    public build(): Widget {
        return flutter.widgets.stack(this.props);
    }
}
