import {Widget} from "../widget";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {StatelessWidget} from "./statelessWidget";
import {Alignment} from "./../painting/alignment";
import {Key} from "./../foundation/key";


export interface AlignProps {
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

export class Align extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(Align);
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