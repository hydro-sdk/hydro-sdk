import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";

import {StatelessWidget} from "./statelessWidget";
import {MainAxisAlignment} from "./mainAxisAlignment";
import {MainAxisSize} from "./../rendering/mainAxisSize";
import {CrossAxisAlignment} from "./../rendering/crossAxisAlignment";
import {TextDirection} from "./../../dart/ui/textDirection";
import {VerticalDirection} from "./../painting/verticalDirection";
import {Alignment} from "./../painting/alignment";
import {Key} from "./../foundation/key";


interface AlignProps {
    key?: Key | undefined;
    alignment?: Alignment | undefined;
    widthFactor?: number | undefined;
    heightFactor?: number | undefined;
    child?: Widget | undefined;
}

declare const flutter: {
    widgets: {
        align: (this: void, props: AlignProps) => Align;
    };
};

export class Align extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Align";
    public props: AlignProps;
    public constructor(props: AlignProps) 
    {
        super();
        this.props = props;

        if (this.props.alignment === undefined) 
        {
            this.props.alignment = Alignment.center;
        }
    }

    public build(): Widget 
    {
        return flutter.widgets.align(this.props);
    }
}