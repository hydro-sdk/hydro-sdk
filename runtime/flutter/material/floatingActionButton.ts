import {Widget} from "../widget";
import {Key} from "../key";

import {StatelessWidget} from "./../widgets/statelessWidget";
import { DartObject } from "../../dart/core";

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

export class FloatingActionButton extends StatelessWidget implements DartObject
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