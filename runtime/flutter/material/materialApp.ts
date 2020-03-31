import { DartObject } from "../../dart/core/object";

import { Widget } from "./../widget";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { BuildContext } from "../buildContext";

interface MaterialAppProps {
    initialRoute?: string | undefined;
    home: Widget;
    title?: string | undefined;
    routes?: {
        [index: string]: (context: BuildContext) => Widget
    } | undefined;
}

declare const flutter: {
    material: {
        materialApp: (this: void, props: MaterialAppProps) => { tag: string };
    };
};

export class MaterialApp extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "MaterialApp";
    public props: MaterialAppProps;
    public constructor(props: MaterialAppProps) {
        super();
        this.props = props;
        this.props.title = this.props.title != undefined ? this.props.title : "";
    }

    public build(): Widget {
        return flutter.material.materialApp(this.props);
    }
}