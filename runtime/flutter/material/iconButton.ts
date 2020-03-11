import {Widget} from "../widget";
import {StatelessWidget} from "../widgets/statelessWidget";
import { DartObject } from "../../dart/core";

interface IconButtonProps {
    icon: Widget;
    tooltip?: string | undefined;
    onPressed: () => void;
}

declare const flutter: {
    material: {
        iconButton: (this: void, props: IconButtonProps) => { tag: string };
    };
};

export class IconButton extends StatelessWidget implements DartObject
{
    public readonly runtimeType = "IconButton";
    public props: IconButtonProps;
    public constructor(props: IconButtonProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.material.iconButton(this.props);
    }
}