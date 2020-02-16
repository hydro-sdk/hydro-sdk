import { Widget } from './../widget';
import { StatelessWidget } from './../widgets/statelessWidget';

interface MaterialAppProps {
    initialRoute: string;
    home: Widget;
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
    }

    public build(): Widget {
        return flutter.material.materialApp(this.props);
    }
}