import { Widget } from './../widget';
import { StatelessWidget } from './../widgets/statelessWidget';

interface AppBarProps {
    title: Widget;
}

declare const flutter: {
    material: {
        appBar: (this: void, props: AppBarProps) => { tag: string };
    }
}

export class AppBar extends StatelessWidget {
    public props: AppBarProps;
    public constructor(props: AppBarProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.material.appBar(this.props);
    }
}
