import {Widget} from "../widget";
import {Key} from "./../foundation/key";
import {DartObject} from "../../dart/core/object";

import {StatelessWidget} from "./../widgets/statelessWidget";

interface FloatingActionButtonProps {
    key?: Key | undefined;
    child: Widget;
    onPressed: () => void;
}

declare const flutter: {
    material: {
        floatingActionButton: (this: void, props: FloatingActionButtonProps) => { tag: string };
    };
};

export class FloatingActionButton extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "FloatingActionButton";
    public props: FloatingActionButtonProps;
    public constructor(props: FloatingActionButtonProps) 
    {
        super();
        this.props = props;
    }

    public build(): Widget 
    {
        return flutter.material.floatingActionButton(this.props);
    }
}