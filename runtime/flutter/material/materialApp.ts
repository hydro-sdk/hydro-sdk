import {Widget} from "./../widget";
import {StatelessWidget} from "./../widgets/statelessWidget";
import { DartObject } from "../../dart/core";

interface MaterialAppProps {
    initialRoute: string;
    home: Widget;
    title?: string | undefined;
}

declare const flutter: {
    material: {
        materialApp: (this: void, props: MaterialAppProps) => { tag: string };
    };
};

export class MaterialApp extends StatelessWidget  implements DartObject
{
    public readonly runtimeType = "MaterialApp";
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