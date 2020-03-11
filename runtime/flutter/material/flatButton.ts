
import {Widget} from "../widget";
import {DartObject} from "../../dart/core";

import {StatelessWidget} from "./../widgets/statelessWidget";

interface FlatButtonProps {
    child: Widget;
    onPressed: (this: void) => void;
}

declare const flutter: {
    material: {
        flatButton: (this: void, props: FlatButtonProps) => { tag: string };
    };
};

export class FlatButton extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "FlatButton";
    public props: FlatButtonProps;
    public constructor(props: FlatButtonProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.material.flatButton(this.props);
    }
}
