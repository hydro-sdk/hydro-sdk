import {BuildContext} from "../buildContext";
import {DartObject} from "../../dart/core/object";

import {Widget} from "./../widget";
import {StatelessWidget} from "./../widgets/statelessWidget";
import {PopupMenuItem} from "./popupMenuItem";

interface PopupMenuButtonProps<T> {
    onSelected: (val: T) => void;
    itemBuilder: (context: BuildContext) => Array<PopupMenuItem<T>>;
}

declare const flutter: {
    material: {
        popupMenuButton: (this: void, props: PopupMenuButtonProps<any>) => PopupMenuButton<any>;
    };
};

export class PopupMenuButton<T> extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "PopupMenuButton";
    public props: PopupMenuButtonProps<T>;
    public constructor(props: PopupMenuButtonProps<T>) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.material.popupMenuButton(this.props);
    }
}