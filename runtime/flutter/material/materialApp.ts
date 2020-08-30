import {BuildContext} from "../buildContext";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {Widget} from "./../widget";
import {StatelessWidget} from "./../widgets/statelessWidget";

export interface MaterialAppProps {
    initialRoute?: string | undefined;
    home: Widget;
    title?: string | undefined;
    routes?: {
        [index: string]: (context: BuildContext) => Widget;
    } | undefined;
}

declare const flutter: {
    material: {
        materialApp: (this: void, props: MaterialAppProps) => MaterialApp;
    };
};

export class MaterialApp extends StatelessWidget implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(MaterialApp);
    public props: MaterialAppProps;
    public constructor(props: MaterialAppProps) 
    {
        super();
        this.props = props;
        this.props.title = this.props.title != undefined ? this.props.title : "";
    }

    public build(): Widget 
    {
        return flutter.material.materialApp(this.props);
    }
}