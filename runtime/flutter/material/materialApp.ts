import { Widget } from './../widget';
import { StatelessWidget } from './../widgets/statelessWidget';

interface MaterialAppProps {
    initialRoute: string;
    home: Widget;
    title?: string | undefined;
}

declare const flutter: {
    material: {
        materialApp: (this: void, props: MaterialAppProps) => { tag: string };
    }
}

export class MaterialApp extends StatelessWidget {
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