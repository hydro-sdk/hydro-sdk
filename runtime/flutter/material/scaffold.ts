import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { Widget } from "../widget";
import { AppBar } from "./appBar";

export interface ScaffoldProps {
    appBar?: AppBar | undefined;
    body?: Widget | undefined;
    floatingActionButton?: Widget | undefined;
    backgroundColor?: Color | undefined;
}

declare const flutter: {
    material: {
        scaffold: (this: void, props: ScaffoldProps) => { tag: string };
    };
};

export class Scaffold extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Scaffold);
    public props: ScaffoldProps;
    public constructor(props: ScaffoldProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.scaffold(this.props);
    }
}
